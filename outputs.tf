#output values retorna valores da execucao
output "bucket_name" {
      value = aws_s3_bucket.this.bucket
      description = ""
}
output "bucket_domain_name" {
      value = aws_s3_bucket.this.bucket_domain_name
      description = ""
}
output "bucket_arn" {
      value = aws_s3_bucket.this.arn
      description = ""
}
output "ips_file_path" {
      value = "${aws_s3_bucket.this.bucket}/${aws_s3_object.this.key}"
}