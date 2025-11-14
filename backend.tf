terraform {
  backend "s3" {
    bucket         = "mi-bucket-de-estado-unico-123" # Debe ser único globalmente
    key            = "dev/servidor_web/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table" # Usado para el bloqueo de estado (state locking)
  }
}
