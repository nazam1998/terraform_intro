resource "aws_eip" "my_eip_in_frankfurt" {
    vpc = true
}
resource "aws_eip" "my_eip_in_virginia" {
    vpc = true
    provider = aws.virginia
}