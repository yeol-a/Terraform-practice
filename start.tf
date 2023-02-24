terraform {
  cloud {
    organization = "mz-ayoung"

    workspaces {
      name = "project1"
    }
  }
}