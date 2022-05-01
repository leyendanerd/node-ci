# Create a new Web Droplet in the nyc1 region
resource "digitalocean_droplet" "web" {
  image  = "docker-18-04"
  name   = "web"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
  user_data = file("setup.yaml")
}






