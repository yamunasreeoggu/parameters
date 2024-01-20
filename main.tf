resource "aws_ssm_parameter" "params" {
  count = length(var.parameters)
  name = var.parameters[count.index].name
  value = var.parameters[count.index].value
  type = var.parameters[count.index].type
}

variable "parameters" {
  default = [
    {name= "prod.rds.master_username", value = "admin1", type = "String"},
    {name= "prod.rds.master_password", value = "Expense12345", type = "SecureString"},
    {name= "prod.rds.endpoint", value = "prod-mysql-rds-cluster.cluster-ci0wnnvfomah.us-east-1.rds.amazonaws.com", type = "String"},
  ]
}