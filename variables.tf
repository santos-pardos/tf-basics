variable "aws_region" {
  description = "La región de AWS donde se desplegará la infraestructura."
  type        = string
  default     = "us-east-1"
}

variable "bucket_name_prefix" {
  description = "El prefijo único para el nombre del bucket S3."
  type        = string
}
