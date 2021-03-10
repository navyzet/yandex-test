resource "yandex_compute_instance" "generic" {
  count       = 1
  name        = "mytest"
  hostname    = "mytest"
  platform_id = "standard-v1"
  zone        = "ru-central1-a"
  resources {
    cores  = 2
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd81n60jv88biv2s51vk"
      size     = 10
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file("${path.module}/id_rsa.pub")}"
    user-data = file("${path.module}/meta.txt")
  }
}