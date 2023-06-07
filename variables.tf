variable "location" {
  type        = string
  default     = "eastus2"
  description = "The Azure region in which to deploy resources"
}

variable "prefix" {
  type        = string
  description = "A prefix to attache to resource names"
}