#changing/specifying the version of plugins that should install for this resource
terraform{
    required_providers {
      local ={
        source="hashicorp/local"
        version ="1.4.0"
      }
    }
    
}


resource "local_file" "update-example"{
    filename="C:/Users/roshini.gubba/repo/terraform all programs/version.txt"
    content=" This is example of update, by adding required specific provider plugins that should install"
}
