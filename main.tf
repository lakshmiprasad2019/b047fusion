provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "myvpc" {
   cidr_block = "10.10.0.0/16"
   tags = {
      Name = "myvpc"
     }
 }
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.10.1.0/24"

  tags = {
    Name = "Main"
  }
}
resource "aws_subnet" "main-publ" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "10.10.2.0/24"

  tags = {
    Name = "Main-publ"
  }
}

