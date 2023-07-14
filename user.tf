resource "aws_iam_user" "Example" {
#count = length(var.user_name)
##name = var.user_name[count.index]
for_each = toset(var.user_name)
name = each.value
}