resource "aws_s3_bucket" "this" {
#usar ${} para interpolar variaveis, acompanha '
  bucket = "${random_pet.bucket.id}-${var.env}" #cria o nome do bucket tamanho 5 e concatena com env
  tags = local.common_tags
  
}

#posso nomear diferete, só uso o this pra referenciar ele mesmo
resource "aws_s3_object" "this"{
      bucket= aws_s3_bucket.this.bucket

      key="config/${local.ip_filepath}"
      source = local.ip_filepath
      etag = filemd5(local.ip_filepath)
      content_type = local.content
}