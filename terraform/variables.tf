variable "instance_type" {
  description = "Tipo de instância EC2"
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "ID da sub-rede onde a instância será lançada"
}
