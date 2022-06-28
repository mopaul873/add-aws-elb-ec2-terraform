resource "aws_vpc" "this" {
  cidr_block = "10.20.20.0/26"
  tags = {
    "Name" = "Application-1"
  }
}
resource "aws_subnet" "private-2a" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = "10.20.20.0/28"
  availability_zone = "us-east-2a"
  tags = {
    "Name" = "Application-1-private-2a"
  }
}
resource "aws_subnet" "private-2b" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = "10.20.20.16/28"
  availability_zone = "us-east-2b"
  tags = {
    "Name" = "Application-1-private-2b"
  }
}
resource "aws_subnet" "private-2c" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = "10.20.20.32/28"
  availability_zone = "us-east-2c"
  tags = {
    "Name" = "Application-1-private-2c"
  }
}