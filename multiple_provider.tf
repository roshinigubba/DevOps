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
    access_key = ""
    secret_key = ""
}

provider "azurerm" {
  features {}
  subscription_id=""
  tenant_id=""
}

resource "aws_instance" "example_aws_instance" {
  ami           = "ami-"
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
