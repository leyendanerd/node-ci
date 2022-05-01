# Create a new Web Droplet in the nyc1 region
resource "digitalocean_droplet" "web" {
  image  = "docker-18-04"
  name   = "web-1"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
  user_data = file("setup.yaml")
  floating_ip = "${digitalocean_floating_ip.web.ip_address}"
}

resource "digitalocean_floating_ip" "web" {
    region = "nyc1"
}