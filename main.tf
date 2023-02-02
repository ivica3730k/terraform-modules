# Configure the Azure provider

variable "environment" {
  description = "The environment to deploy to"
  default     = "dev"
}
terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.27.0"
    }
  }

  required_version = ">= 1.1.0"

}

provider "azurerm" {
  features {}
}