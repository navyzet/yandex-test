variable "subnet_id" {
  type    = string
}
variable "cloud_id" {
  type    = string
}

variable "folder_id" {
  type    = string
}

variable "yc_token" {
  type    = string
}

variable "zone" {
  description = "Default zone"
  default     = "ru-central1-a"
  type        = string
}