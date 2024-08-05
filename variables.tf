variable "awsAcademyRole" {
  default = "arn:aws:iam::482171230033:role/LabRole"
}

variable "subnetA" {
  default = "subnet-04e6a2cedf4915bb8"
}

variable "subnetB" {
  default = "subnet-0f9137d470ece169f"
}

variable "subnetC" {
  default = "subnet-0e997f81a6ab9e4fb"
}

variable "securityGroupId" {
  default = "sg-0cf2a41afd1d85f98"
}

variable "principalArn" {
  default = "arn:aws:iam::482171230033:role/voclabs"
}
