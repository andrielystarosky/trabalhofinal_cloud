provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "api_key" {
  key_name   = "api-key"
  public_key = file("${path.module}/api-key.pub")
}

resource "aws_vpc" "api_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "api_subnet" {
  vpc_id                  = aws_vpc.api_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
}

resource "aws_security_group" "api_sg" {
  name        = "api-sg"
  description = "Allow SSH and API Port"
  vpc_id      = aws_vpc.api_vpc.id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "API Node.js"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "api_instance" {
  ami                         = "ami-0fc5d935ebf8bc3bc"   # Ubuntu Server 22.04 LTS (Free Tier - us-east-1)
  instance_type               = "t2.micro"               # Free Tier
  key_name                    = aws_key_pair.api_key.key_name
  subnet_id                   = aws_subnet.api_subnet.id
  vpc_security_group_ids      = [aws_security_group.api_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "API-Treinos-Instance"
  }
}

# Internet Gateway
resource "aws_internet_gateway" "api_igw" {
  vpc_id = aws_vpc.api_vpc.id
}

# Tabela de Rotas com saída para a Internet
resource "aws_route_table" "api_route_table" {
  vpc_id = aws_vpc.api_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.api_igw.id
  }
}

# Associação da tabela de rotas com a subnet pública
resource "aws_route_table_association" "api_subnet_association" {
  subnet_id      = aws_subnet.api_subnet.id
  route_table_id = aws_route_table.api_route_table.id
}
