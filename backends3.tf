terraform {
  backend "s3" {
    bucket = "terraformfstate"
    key = "terraform.state"
    region = "us-east-1"
    
  }
}