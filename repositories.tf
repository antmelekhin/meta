provider "github" {}

locals {
  repositories = {
    powershell = {
      description = "My collection of Powershell modules and scripts."
      topics      = ["powershell", "powershell-module", "powershell-script", "user-management", "vmware"]
    }

    ansible-role-domain-join = {
      description = "An Ansible role for join hosts to Active Directory domain and local administrators management."
      topics      = ["ansible", "ansible-role", "active-directory", "authentication", "linux", "windows"]
    }

    ansible-role-openssh = {
      description  = "An Ansible role for configure OpenSSH server and client."
      homepage_url = "https://galaxy.ansible.com/antmelekhin/openssh"
      topics       = ["ansible", "ansible-role", "linux", "openssh-client", "openssh-server", "windows"]
    }

    ansible-role-jira = {
      description  = "An Ansible role for install, configure and update Jira."
      homepage_url = "https://galaxy.ansible.com/antmelekhin/jira"
      topics       = ["ansible", "ansible-role", "issuetracker", "jira"]
    }

    ansible-role-confluence = {
      description  = "An Ansible role for install, configure and update Confluence."
      homepage_url = "https://galaxy.ansible.com/antmelekhin/confluence"
      topics       = ["ansible", "ansible-role", "confluence", "wiki"]
    }

    ansible-role-mysqld-exporter = {
      description  = "An Ansible role for install, configure and update MySQL Exporter."
      homepage_url = "https://galaxy.ansible.com/antmelekhin/mysqld_exporter"
      topics       = ["ansible", "ansible-role", "linux", "monitoring", "mysqld-exporter", "prometheus"]
    }

    ansible-role-windows-exporter = {
      description  = "An Ansible role for install, configure and update Windows Exporter."
      homepage_url = "https://galaxy.ansible.com/antmelekhin/windows_exporter"
      topics       = ["ansible", "ansible-role", "monitoring", "prometheus", "windows", "windows-exporter"]
    }

    ansible-role-microsoft-repository = {
      description  = "An Ansible role for add Microsoft repository on Linux distros and install packages from it."
      homepage_url = "https://galaxy.ansible.com/antmelekhin/microsoft_repository"
      topics       = ["ansible", "ansible-role", "debian", "microsoft-repository", "packages", "rhel"]
    }

    packer-templates = {
      description = "A collection of Packer templates."
      topics      = ["hyperv-iso", "linux", "packer", "packer-template", "virtualbox-iso", "windows", "yandex", "yandex-cloud"]
    }

    ansible-role-postgres-exporter = {
      description  = "An Ansible role for install, configure and update Postgres Exporter."
      homepage_url = "https://galaxy.ansible.com/antmelekhin/postgres_exporter"
      topics       = ["ansible", "ansible-role", "linux", "monitoring", "postgres-exporter", "prometheus", "windows"]
    }

    terraform-yandex-compute = {
      description  = "A terraform module to create compute resources on Yandex Cloud."
      homepage_url = "https://registry.terraform.io/modules/antmelekhin/compute/yandex"
      topics       = ["compute", "terraform", "terraform-module", "yandex", "yandex-cloud"]
    }

    docker-systemd = {
      description  = "Docker images with systemd support."
      homepage_url = "https://hub.docker.com/r/antmelekhin/docker-systemd"
      topics       = ["ansible", "docker", "molecule", "systemd"]
    }

    ansible-role-nginx = {
      description  = "An Ansible role that installs NGINX web server."
      homepage_url = "https://galaxy.ansible.com/antmelekhin/nginx"
      topics       = ["ansible", "ansible-role", "nginx", "web"]
    }

    docker-terraform = {
      description  = "Docker images with Terraform and Terragrunt tools."
      homepage_url = "https://hub.docker.com/r/antmelekhin/docker-terraform"
      topics       = ["docker", "terraform", "terragrunt"]
    }

    ansible-role-domain-controller = {
      description  = "An Ansible role for setup Active Directory domain controllers."
      homepage_url = "https://galaxy.ansible.com/antmelekhin/domain_controller"
      topics       = ["active-directory", "ansible", "ansible-role", "domain-controller", "windows"]
    }

    ansible-role-gitlab-runner = {
      description  = "An Ansible role for install GitLab Runner."
      homepage_url = "https://galaxy.ansible.com/antmelekhin/gitlab_runner"
      topics       = ["ansible", "ansible-role", "ci", "gitlab", "gitlab-runner"]
    }

    ansible-role-docker = {
      description  = "An Ansible role for install Docker Engine."
      homepage_url = "https://galaxy.ansible.com/antmelekhin/docker"
      topics       = ["ansible", "ansible-role", "docker", "docker-engine"]
    }

    meta = {
      description  = "Meta-configurations for my repositories."
      homepage_url = "https://github.com/antmelekhin"
      topics       = ["github", "terraform-managed"]
    }

    terraform-github-repository = {
      description  = "A Terraform module to manage GitHub Repositories."
      homepage_url = "https://registry.terraform.io/modules/antmelekhin/repository/github"
      topics       = ["github", "github-repository", "terraform", "terraform-module"]
    }
  }
}

module "repositories" {
  source  = "antmelekhin/repository/github"
  version = "1.0.0"

  for_each = local.repositories

  name         = each.key
  description  = each.value.description
  homepage_url = try(each.value.homepage_url, null)
  topics       = each.value.topics
}
