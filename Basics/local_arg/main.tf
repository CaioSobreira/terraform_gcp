resource  local_sensitive_file sample_res {
    filename = "sample.txt"
    content = "I love terraform"
    file_permission = "0700"
}