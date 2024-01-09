terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
    region     = "us-east-1"
    access_key = "AKIA4OKKXQSRYIN2I5X5"
    secret_key = "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"
}

provider "azurerm" {
  features {}
  subscription_id=" cd2aaeb7-d22a-4e4e-8b36-9485e29c3930"
  tenant_id="f2f8c9a0-5656-429f-9bf1-bd181efad173"
}

resource "aws_instance" "example_aws_instance" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"

  tags = {
    Name = "Example AWS Instance"
  }
}

resource "azurerm_resource_group" "example_azure_rg" {
  name     = "example-resource-group-rg"
  location = "East US"
}

resource "azurerm_virtual_network" "example_azure_vnet" {
  name                = "example-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example_azure_rg.location
  resource_group_name = azurerm_resource_group.example_azure_rg.name
}
