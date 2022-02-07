<h1 align="center">Terraform for Beginners</h1>

<br>

<p>
  <img alt="Version" src="https://img.shields.io/badge/version-1.0.0-blue.svg?cacheSeconds=2592000" />
  <a href="https://github.com/JRPerezJr/terraform-course-notes/blob/main/LICENSE" target="_blank">
    <img alt="License: MIT" src="https://img.shields.io/badge/License-MIT-yellow.svg" />
  </a>
</p>

<br>

<br>

> Terraform coursework and lab notes.

## 🛠 Installing Terraform

MacOS

```shell
brew tap hashicorp/tap

brew install hashicorp/tap/terraform
```
Ubuntu/Debian

```shell
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

sudo apt-get update && sudo apt-get install terraform
```

CentOS/RHEL

```
sudo yum install -y yum-utils

sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo

sudo yum -y install terraform
```

Fedora

```shell
sudo dnf install -y dnf-plugins-core

sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo

sudo dnf -y install terraform
```

Windows
Terraform 1.1.5

[386](https://releases.hashicorp.com/terraform/1.1.5/terraform_1.1.5_windows_386.zip)

[Amd64](https://releases.hashicorp.com/terraform/1.1.5/terraform_1.1.5_windows_amd64.zip)

For the latest information check the [downloads link](https://www.terraform.io/downloads)

## 📓 Author

![Logo](https://user-images.githubusercontent.com/19915910/120965966-81203b00-c7a0-11eb-8ef4-a42c0642db4c.png)

- Github: [@JRPerezJr](https://github.com/JRPerezJr)
- LinkedIn: [@devjperez](https://linkedin.com/in/devjperez)