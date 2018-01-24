variable "name" {
  description = "The name of the role policy. If omitted, Terraform will assign a random, unique name."
}

variable "role" {
  description = "The IAM role to attach to the policy."
}

variable "policy" {
  description = "The policy document. This is a JSON formatted string. The heredoc syntax or file function is helpful here."
}