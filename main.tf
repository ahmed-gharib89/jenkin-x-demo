module "eks-jx" {
  region = "us-east-1"
  source  = "jenkins-x/eks-jx/aws"
  version = "1.17.2"
  # insert the 3 required variables here
  cluster_version = "1.21.2"
  nginx_chart_version = "1.20.1"
  profile = "default"
  cluster_name = "jenkins-x"
}


terraform {
  backend "s3" {
    bucket = "jx-terraform-state-files"
    key    = "terraform/state"
    region = "us-east-1"
  }
}
