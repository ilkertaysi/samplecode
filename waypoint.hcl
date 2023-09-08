project = "nomad-nodejs"

app "nomad-nodejs-web" {

  url {
    auto_hostname = true
  }

  build {
    use "pack" {}
    registry {
      use "docker" {
        image = "nomad-nodejs-web"
        tag   = "1"
        local = true
      }
    }
  }

  deploy {
    use "nomad" {
      datacenter = "dc1"
      namespace  = "default"
      service_provider = "nomad"
    }
  }
}