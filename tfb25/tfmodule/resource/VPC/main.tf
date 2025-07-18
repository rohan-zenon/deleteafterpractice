resource "aws_vpc" "this_vpc" {
  cidr_block       = var.this_vpc_cidr_block
  tags = {
    Name = var.this_vpc_cidr_tags 
  }
}

resource "aws_subnet" "this_public" {
  vpc_id     = aws_vpc.this_vpc.id
  cidr_block =  var.this_public_cidr_block
  map_public_ip_on_launch = var.this_public_map_pub  
  tags = {
    Name = var.this_public_tags
  }
}