variable "instance_type"{
    type=string
    default= "t2.micro"    
}

variable "ami_id"{
    default=secrets.AMI
    type=string
}

variable "region"{
    default=secrets.REGION
}
