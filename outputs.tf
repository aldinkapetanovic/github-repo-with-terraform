output "ssh_clone_url" {
  value = github_repository.with_tf.ssh_clone_url
}

output "http_clone_url" {
  value = github_repository.with_tf.http_clone_url
}
