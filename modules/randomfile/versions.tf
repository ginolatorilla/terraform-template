terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "2.4.1"
    }
  }
}
