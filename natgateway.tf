resource "aws_nat_gateway" "nat" {
  count         = 2
  allocation_id = aws_eip.nat[count.index].id
  subnet_id     = element(aws_subnet.public[*].id, count.index == 0 ? 0 : 2) # 1st and 3rd public subnets

  tags = {
    Name = "spaces-prod-nat-gateway-${count.index + 1}"
  }
}
