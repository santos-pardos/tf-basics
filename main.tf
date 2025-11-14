# ----------------------------------------------
# Recurso: Bucket de S3
# ----------------------------------------------
resource "aws_s3_bucket" "mi_bucket" {
  # El nombre completo del bucket usará el prefijo de la variable
  bucket = "${var.bucket_name_prefix}-data-logs" 
  
  tags = {
    Name        = "Mi Bucket de Terraform"
    Environment = "Development"
  }
}

# ----------------------------------------------
# Salida: Muestra el nombre real del bucket creado
# ----------------------------------------------
output "bucket_name" {
  description = "El nombre real del bucket S3 creado."
  value       = aws_s3_bucket.mi_bucket.id
}
