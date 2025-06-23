terraform {
  backend "s3" {
    bucket         = "terraform_3-tier-infra-bucket"
    key            = "terraform/state"
    region         = "us-west-2"
    use_lockfile = true
    
    
  }
}