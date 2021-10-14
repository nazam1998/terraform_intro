resource "aws_s3_bucket" "my_first_bucket" {
  
  bucket = "my-crepe-bucket"
  acl    = "private"

  tags = {
    Name        = "My Crepe Public Bucket"
    Environment = "Dev"
  }

}
