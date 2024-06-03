resource "aws_route_table" "public" {
  vpc_id = var.vpc_id

  tags = {
    Name = "spaces-prod-public-route-table"
  }
}

resource "aws_route_table" "private" {
  vpc_id = var.vpc_id

  tags = {
    Name = "spaces-prod-private-route-table"
  }
}

# Associate Public Subnets with Public Route Table
resource "aws_route_table_association" "public" {
  count      = length(aws_subnet.public)
  subnet_id  = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public.id
}

# Associate Private Subnets with Private Route Table
resource "aws_route_table_association" "private" {
  count      = length(aws_subnet.private)
  subnet_id  = aws_subnet.private[count.index].id
  route_table_id = aws_route_table.private.id
}
