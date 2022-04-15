output "container_id" {
  description = "Id of the docker container"
  value       = docker_container.nginx_container.id
}

output "image_id" {
  description = "Id of the docker image"
  value       = docker_image.nginx_img.id
}