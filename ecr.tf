resource "aws_ecr_repository" "cert-exporter" {
  name = "cert-exporter"
  tags = merge(
    local.common_tags,
    { DockerHub : "dwpdigital/cert-exporter" }
  )
}

resource "aws_ecr_repository_policy" "cert-exporter" {
  repository = aws_ecr_repository.cert-exporter.name
  policy     = data.terraform_remote_state.management.outputs.ecr_iam_policy_document
}

output "ecr_example_url" {
  value = aws_ecr_repository.cert-exporter.repository_url
}
