provider "aws" {
  region = var.region
}

# Create ECR repository
resource "aws_ecr_repository" "my_ecr_repo" {
  name = "myapp"
}

# Outputs for the repository URL
output "repository_url" {
  value = aws_ecr_repository.myapp.repository_url
}
