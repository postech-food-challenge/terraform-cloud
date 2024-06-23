variable "awsAcademyRole" {
  default = "arn:aws:iam::433967764681:role/LabRole"
}

variable "subnetA" {
  default = "subnet-091a00d2c5e209740"
}

variable "subnetB" {
  default = "subnet-051db6cccb63c0329"
}

variable "subnetC" {
  default = "subnet-0b47d7fac2a4494b6"
}

variable "securityGroupId" {
  default = "sg-0a0bc29cd2b16622a"
}

variable "principalArn" {
  default = "arn:aws:iam::433967764681:role/voclabs"
}
