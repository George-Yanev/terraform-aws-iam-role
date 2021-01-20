resource "aws_iam_role" "this" {
  name               = var.name
  assume_role_policy = data.aws_iam_policy_document.instance_assume_role_policy

  path        = var.path
  description = var.description

  max_session_duration  = var.max_session_duration
  force_detach_policies = var.force_detach_policies
}

data "aws_iam_policy_document" "instance_assume_role_policy" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = [format("%s%s", var.assume_role_entity, ".amazonaws.com")]
    }

    actions = [
      "sts:AssumeRole",
    ]
  }
}

resource "aws_iam_policy" "this" {
  name   = var.name
  policy = var.policy

  path        = var.path
  description = var.description
}

resource "aws_iam_role_policy_attachment" "this" {
  role       = aws_iam_role.this.name
  policy_arn = aws_iam_policy.this.arn
}
