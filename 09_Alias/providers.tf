provider "aws"{
    region = "eu-central-1"
    access_key = "my-access-key"
    secret_key = "my-secret-key"
}

provider "aws"{
    alias = "virginia"
    region = "us-east-1"
    access_key = "my-access-key"
    secret_key = "my-secret-key"
}