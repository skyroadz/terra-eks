terraform {
  backend "s3" {
    bucket = "emk8s-terra-state"
    key    = "emk8s-tfstate"
    region = "us-east-1"
  }
}
