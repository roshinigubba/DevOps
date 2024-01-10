resource "aws_instance" "My_instance2"{
    ami=var.ami_id
    instance_type=var.instance_type
    tags={
        name="My instance2"
    }
    
}
