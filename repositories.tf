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
      homepage_url = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/openssh/"
      topics       = ["ansible", "ansible-role", "linux", "openssh-client", "openssh-server", "windows"]
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    ansible-role-jira = {
      description  = "An Ansible role for install, configure and update Jira."
      homepage_url = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/jira/"
      topics       = ["ansible", "ansible-role", "issuetracker", "jira"]
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    ansible-role-confluence = {
      description  = "An Ansible role for install, configure and update Confluence."
      homepage_url = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/confluence/"
      topics       = ["ansible", "ansible-role", "confluence", "wiki"]
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    ansible-role-mysqld-exporter = {
      description  = "An Ansible role for install, configure and update MySQL Exporter."
      homepage_url = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/mysqld_exporter/"
      topics       = ["ansible", "ansible-role", "linux", "monitoring", "mysqld-exporter", "prometheus"]
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    ansible-role-windows-exporter = {
      description  = "An Ansible role for install, configure and update Windows Exporter."
      homepage_url = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/windows_exporter/"
      topics       = ["ansible", "ansible-role", "monitoring", "prometheus", "windows", "windows-exporter"]
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    ansible-role-microsoft-repository = {
      description  = "An Ansible role for add Microsoft repository on Linux distros and install packages from it."
      homepage_url = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/microsoft_repository/"
      topics       = ["ansible", "ansible-role", "debian", "microsoft-repository", "packages", "rhel"]
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    packer-templates = {
      description = "A collection of Packer templates."
      topics      = ["hyperv-iso", "linux", "packer", "packer-template", "virtualbox-iso", "windows", "yandex", "yandex-cloud"]
    }

    ansible-role-postgres-exporter = {
      description  = "An Ansible role for install, configure and update Postgres Exporter."
      homepage_url = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/postgres_exporter/"
      topics       = ["ansible", "ansible-role", "linux", "monitoring", "postgres-exporter", "prometheus", "windows"]
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    terraform-yandex-compute = {
      description  = "A terraform module to create compute resources on Yandex Cloud."
      homepage_url = "https://registry.terraform.io/modules/antmelekhin/compute/yandex"
      topics       = ["compute", "iac", "terraform", "terraform-module", "yandex", "yandex-cloud"]
      actions_plaintext_secrets = {
        GH_TOKEN = var.github_token
      }
    }

    docker-systemd = {
      description  = "Docker images with systemd support."
      homepage_url = "https://hub.docker.com/r/antmelekhin/docker-systemd"
      topics       = ["ansible", "docker", "molecule", "systemd"]
      actions_plaintext_secrets = {
        DOCKER_HUB_TOKEN = var.docker_hub_token
        GH_TOKEN         = var.github_token
      }
    }

    ansible-role-nginx = {
      description  = "An Ansible role that installs NGINX web server."
      homepage_url = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/nginx/"
      topics       = ["ansible", "ansible-role", "nginx", "web"]
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    docker-terraform = {
      description  = "Alpine-based Docker images with Terraform tools for usage in pipelines."
      homepage_url = "https://hub.docker.com/r/antmelekhin/docker-terraform"
      topics       = ["docker", "terraform", "terragrunt"]
      actions_plaintext_secrets = {
        DOCKER_HUB_TOKEN = var.docker_hub_token
      }
    }

    ansible-role-domain-controller = {
      description  = "An Ansible role for setup Active Directory domain controllers."
      homepage_url = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/domain_controller/"
      topics       = ["active-directory", "ansible", "ansible-role", "domain-controller", "windows"]
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    ansible-role-gitlab-runner = {
      description  = "An Ansible role for install GitLab Runner."
      homepage_url = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/gitlab_runner/"
      topics       = ["ansible", "ansible-role", "ci", "gitlab", "gitlab-runner"]
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    ansible-role-docker = {
      description  = "An Ansible role for install Docker Engine."
      homepage_url = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/docker/"
      topics       = ["ansible", "ansible-role", "docker", "docker-engine"]
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    meta = {
      description  = "Meta-configurations for my repositories."
      homepage_url = "https://github.com/antmelekhin"
      topics       = ["github", "iac", "terraform-managed"]
    }

    ansible-role-postgresql = {
      description  = "An Ansible role to install PostgreSQL."
      homepage_url = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/postgresql/"
      topics       = ["ansible", "ansible-role", "database", "postgres", "postgresql", "sql"]
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    terraform-github-repository = {
      description  = "A Terraform module to manage GitHub Repositories."
      homepage_url = "https://registry.terraform.io/modules/antmelekhin/repository/github"
      topics       = ["github", "github-repository", "iac", "terraform", "terraform-module"]
      actions_plaintext_secrets = {
        GH_TOKEN = var.github_token
      }
    }

    ansible-role-java = {
      description  = "An Ansible role for install Java."
      homepage_url = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/java/"
      topics       = ["ansible", "ansible-role", "java"]
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    docker-ansible = {
      description  = "Alpine-based Docker images with Ansible tools for usage in pipelines."
      homepage_url = "https://hub.docker.com/r/antmelekhin/docker-ansible"
      topics       = ["docker", "ansible"]
      actions_plaintext_secrets = {
        DOCKER_HUB_TOKEN = var.docker_hub_token
        GH_TOKEN         = var.github_token
      }
    }

    ansible-galaxy-action = {
      description = "A GitHub Action for publish an Ansible roles to Galaxy."
      topics      = ["ansible", "ansible-galaxy", "ansible-role"]
    }

    ansible-role-containerd = {
      description  = "An Ansible role to install Containerd."
      homepage_url = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/containerd/"
      topics       = ["ansible", "ansible-role", "containerd"]
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }
  }
}

module "repositories" {
  source  = "antmelekhin/repository/github"
  version = "1.0.2"

  for_each = local.repositories

  name         = each.key
  description  = each.value.description
  homepage_url = try(each.value.homepage_url, null)
  topics       = each.value.topics

  actions_encrypted_secrets = try(each.value.actions_encrypted_secrets, {})
  actions_plaintext_secrets = try(each.value.actions_plaintext_secrets, {})
}
