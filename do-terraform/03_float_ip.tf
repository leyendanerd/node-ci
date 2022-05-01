resource "digitalocean_floating_ip" "web" {
  region = "nyc1"
}

resource "digitalocean_floating_ip_assignment" "web" {
  ip_address = digitalocean_floating_ip.web.ip_address
  droplet_id = digitalocean_droplet.web.id
}

