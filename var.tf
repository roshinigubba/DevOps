variable "instance_type"{
    type=string
    default= "t2.micro"    
}

variable "ami_id"{
    default=""
    type=string
}

variable "region"{
    default=""
}
