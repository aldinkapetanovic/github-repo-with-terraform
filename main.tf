terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.12.0"
    }
  }
}

variable "token" {

}

provider "github" {
  # Configuration options
  token = var.token # or `GITHUB_TOKEN`
}

resource "github_repository" "with_tf" {
  name               = "gh-repo-with-tf"
  description        = "Terraform"
  visibility         = "private"
  auto_init          = true
  gitignore_template = "Terraform"
  license_template   = "gpl-2.0"
}
