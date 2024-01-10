# Shared configuration (main.tf)
provider "aws" {
    region     = ""
    access_key = ""
    secret_key = ""

}

# Resources for workspace1
resource "aws_instance" "instance1" {
    ami=""
    instance_type="t2.micro"
}

# Resources for workspace2
resource "aws_instance" "instance2" {
    ami=""
    instance_type="t2.micro"
}
