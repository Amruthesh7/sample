terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.25.0" # Or the latest available
    }
  }
}

provider "docker" {}

resource "docker_image" "sample" {
  name         = "sample-html"
  build {
    context    = "../"
    dockerfile = "../Dockerfile"
  }
}

resource "docker_container" "sample" {
  name  = "sample-container"
  image = docker_image.sample.latest
  ports {
    internal = 80
    external = 8081
  }
}
