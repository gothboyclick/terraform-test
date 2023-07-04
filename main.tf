provider "aws"{
    region = "us-east-1"
    profile = "adrianoaws"
}
resource "aws_s3_bucket" "my-test-terraform"{
    bucket = "bucket-de-test1"
    acl = "private"
    tags={
        Name="meu-bucket"
        Env="dev"
        Manageby="terraform"
        Shared="no"
    }
}