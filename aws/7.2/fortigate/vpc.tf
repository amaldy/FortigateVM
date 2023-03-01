// AWS VPC 
resource "aws_vpc" "fgtvm-vpc" {
  cidr_block           = var.vpccidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  enable_classiclink   = false
  instance_tenancy     = "default"
  tags = {
    Name          = "${var.tags.name}"
    ResourceOwner = var.tags.resourceowner
    Forever       = var.tags.forever
    Demo          = var.tags.demo
    Deployed      = var.tags.deployed
    Description   = var.tags.description

  }
}

resource "aws_subnet" "publicsubnetaz1" {
  vpc_id            = aws_vpc.fgtvm-vpc.id
  cidr_block        = var.publiccidraz1
  availability_zone = var.az1
  tags = {
    Name          = "${var.tags.name}-public subnet az1"
    ResourceOwner = var.tags.resourceowner
    Forever       = var.tags.forever
    Demo          = var.tags.demo
    Deployed      = var.tags.deployed
    Description   = var.tags.description


  }
}

resource "aws_subnet" "privatesubnetaz1" {
  vpc_id            = aws_vpc.fgtvm-vpc.id
  cidr_block        = var.privatecidraz1
  availability_zone = var.az1
  tags = {
    Name          = "${var.tags.name}-private subnet az1"
    ResourceOwner = var.tags.resourceowner
    Forever       = var.tags.forever
    Demo          = var.tags.demo
    Deployed      = var.tags.deployed
    Description   = var.tags.description


  }
}