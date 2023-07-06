variable "instance_ami" {
  type        = string
  description = ""
}
variable "instance_type" {
  type        = string
  description = ""
}
variable "instance_tags" {
  type        = map(string) #varios elementos de um value basicamente uma lista
  description = "default"
  default = {
    apelido = "HelloWorld"
    Name    = "EC2"
    Desc    = "maquina criada com terraform e tagueada com o tipo map de variavel"
  }
}
variable "aws_region" {
  type = string
}
variable "aws_profile" {
  type = string
}
variable "env" {
  type        = string
  description = ""
}