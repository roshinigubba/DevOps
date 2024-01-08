provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA4OKKXQSRYIN2I5X5"
  secret_key = "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"
}

resource "aws_instance" "First-server"{
    ami="ami-0c7217cdde317cfec"
    instance_type="t2.micro"
}
