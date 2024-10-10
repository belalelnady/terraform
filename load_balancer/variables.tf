variable "vpc_id" {
  type        = string
}

variable "public_subnets_id" {
  type        = list(string)
}

variable "private_id_1" {
  type        = string
}

variable "private_id_2" {
  type        = string
}


variable "alb_sg_id" {
  type        = string
}

