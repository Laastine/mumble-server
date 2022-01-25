variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type = string
  default = "Mumble-server"
}

variable "ami_name" {
  type = string
  default = "Alma Linux 8.5"
}

variable "ami_id" {
  type = string
  default = "ami-0b79d00e41ebf0a9b"
}

variable "keypair" {
  type = string

}

variable "keypair_path" {
  type = string
  default = "add-your-ssh-key-here"
}

variable "region" {
  type = string
  default = "eu-north-1"
}

variable "region_az" {
  type = string
  default = "eu-north-1a"
}

variable "vpc_cidr_block" {
  type = string
  default = "10.0.0.0/16"
}

