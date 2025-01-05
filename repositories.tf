provider "github" {}

locals {
  repositories = {
    powershell = {
      description    = "My collection of Powershell modules and scripts."
      topics         = ["powershell", "powershell-module", "powershell-script", "user-management", "vmware"]
      default_branch = "master"
    }

    ansible-role-domain-join = {
      description    = "An Ansible role to join hosts to Active Directory domain and local administrators management."
      topics         = ["ansible", "ansible-role", "active-directory", "authentication", "linux", "windows"]
      default_branch = "master"
    }

    ansible-role-openssh = {
      description    = "An Ansible role to configure the OpenSSH server and client."
      homepage_url   = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/openssh/"
      topics         = ["ansible", "ansible-role", "linux", "openssh-client", "openssh-server", "windows"]
      default_branch = "main"
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    ansible-role-jira = {
      description    = "An Ansible role to install, configure and update Jira."
      homepage_url   = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/jira/"
      topics         = ["ansible", "ansible-role", "issuetracker", "jira"]
      default_branch = "main"
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    ansible-role-confluence = {
      description    = "An Ansible role to install, configure and update Confluence."
      homepage_url   = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/confluence/"
      topics         = ["ansible", "ansible-role", "confluence", "wiki"]
      default_branch = "main"
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    ansible-role-mysqld-exporter = {
      description    = "An Ansible role to install, configure and update the MySQLd Exporter."
      homepage_url   = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/mysqld_exporter/"
      topics         = ["ansible", "ansible-role", "linux", "monitoring", "mysqld-exporter", "prometheus"]
      default_branch = "main"
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    ansible-role-windows-exporter = {
      description    = "An Ansible role to install, configure and update the Windows Exporter."
      homepage_url   = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/windows_exporter/"
      topics         = ["ansible", "ansible-role", "monitoring", "prometheus", "windows", "windows-exporter"]
      default_branch = "main"
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    ansible-role-microsoft-repository = {
      description    = "An Ansible role that adds the Microsoft repository to Linux distributions and installs packages from it."
      homepage_url   = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/microsoft_repository/"
      topics         = ["ansible", "ansible-role", "debian", "microsoft-repository", "packages", "rhel"]
      default_branch = "main"
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    packer-templates = {
      description    = "A collection of Packer templates."
      topics         = ["hyperv-iso", "linux", "packer", "packer-template", "virtualbox-iso", "windows", "yandex", "yandex-cloud"]
      default_branch = "main"
      actions_plaintext_secrets = {
        GH_TOKEN = var.github_token
      }
    }

    ansible-role-postgres-exporter = {
      description    = "An Ansible role to install, configure and update the Postgres Exporter."
      homepage_url   = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/postgres_exporter/"
      topics         = ["ansible", "ansible-role", "linux", "monitoring", "postgres-exporter", "prometheus", "windows"]
      default_branch = "main"
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    terraform-yandex-compute = {
      description    = "A terraform module to create compute resources on Yandex Cloud."
      homepage_url   = "https://registry.terraform.io/modules/antmelekhin/compute/yandex"
      topics         = ["compute", "iac", "terraform", "terraform-module", "yandex", "yandex-cloud"]
      default_branch = "main"
      actions_plaintext_secrets = {
        GH_TOKEN = var.github_token
      }
    }

    docker-systemd = {
      description    = "Docker images with systemd support."
      homepage_url   = "https://hub.docker.com/r/antmelekhin/docker-systemd"
      topics         = ["ansible", "docker", "molecule", "systemd"]
      default_branch = "main"
      actions_plaintext_secrets = {
        DOCKERHUB_USERNAME = var.dockerhub_username
        DOCKERHUB_TOKEN    = var.dockerhub_token
        GH_TOKEN           = var.github_token
      }
    }

    ansible-role-cni-plugins = {
      description  = "An Ansible role to install and configure CNI (Container Network Interface) plugins."
      homepage_url = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/cni_plugins/"
      topics       = ["ansible", "ansible-role", "cni", "containers", "debian", "docker", "kubernetes", "k8s", "networking", "rhel"]
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    ansible-role-nginx = {
      description    = "An Ansible role to install the NGINX web server."
      homepage_url   = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/nginx/"
      topics         = ["ansible", "ansible-role", "debian", "nginx", "rhel", "web"]
      default_branch = "main"
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    docker-terraform = {
      description    = "Alpine-based Docker images with Terraform tools for use in pipelines."
      homepage_url   = "https://hub.docker.com/r/antmelekhin/docker-terraform"
      topics         = ["docker", "terraform", "terragrunt"]
      default_branch = "main"
      actions_plaintext_secrets = {
        DOCKERHUB_USERNAME = var.dockerhub_username
        DOCKERHUB_TOKEN    = var.dockerhub_token
        GH_TOKEN           = var.github_token
      }
    }

    ansible-role-domain-controller = {
      description    = "An Ansible role to setup Active Directory domain controllers."
      homepage_url   = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/domain_controller/"
      topics         = ["active-directory", "ansible", "ansible-role", "domain-controller", "windows"]
      default_branch = "main"
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    ansible-role-gitlab-runner = {
      description    = "An Ansible role to install GitLab Runner."
      homepage_url   = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/gitlab_runner/"
      topics         = ["ansible", "ansible-role", "ci", "gitlab", "gitlab-runner", "linux", "windows"]
      default_branch = "main"
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    ansible-role-docker = {
      description    = "An Ansible role to install and configure Docker Engine."
      homepage_url   = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/docker/"
      topics         = ["ansible", "ansible-role", "debian", "docker", "docker-engine", "fedora", "rhel", "ubuntu"]
      default_branch = "main"
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    meta = {
      description    = "Meta-configurations for my repositories."
      homepage_url   = "https://github.com/antmelekhin"
      topics         = ["github", "iac", "terraform-managed"]
      default_branch = "main"
      actions_plaintext_secrets = {
        GH_TOKEN = var.github_token
      }
    }

    ansible-role-postgresql = {
      description  = "An Ansible role to install the PostgreSQL server."
      homepage_url = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/postgresql/"
      topics       = ["ansible", "ansible-role", "database", "debian", "postgres", "postgresql", "sql", "rhel"]
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    terraform-github-repository = {
      description    = "A Terraform module to manage GitHub Repositories."
      homepage_url   = "https://registry.terraform.io/modules/antmelekhin/repository/github"
      topics         = ["github", "github-repository", "iac", "terraform", "terraform-module"]
      default_branch = "main"
      actions_plaintext_secrets = {
        GH_TOKEN = var.github_token
      }
    }

    ansible-role-java = {
      description    = "An Ansible role to install the Java package."
      homepage_url   = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/java/"
      topics         = ["ansible", "ansible-role", "corretto", "debian", "java", "openjdk", "rhel"]
      default_branch = "main"
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    terraform-gitlab-project = {
      description  = "A Terraform module to manage GitLab Projects."
      homepage_url = "https://registry.terraform.io/modules/antmelekhin/project/gitlab"
      topics       = ["gitlab", "gitlab-project", "iac", "terraform", "terraform-module"]
      actions_plaintext_secrets = {
        GH_TOKEN = var.github_token
      }
    }

    docker-ansible = {
      description    = "Alpine-based Docker images with Ansible for use in pipelines."
      homepage_url   = "https://hub.docker.com/r/antmelekhin/docker-ansible"
      topics         = ["docker", "ansible"]
      default_branch = "main"
      actions_plaintext_secrets = {
        DOCKERHUB_USERNAME = var.dockerhub_username
        DOCKERHUB_TOKEN    = var.dockerhub_token
        GH_TOKEN           = var.github_token
      }
    }

    ansible-role-chocolatey = {
      description  = "An Ansible role that installs Chocolatey and manages packages using it."
      homepage_url = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/chocolatey/"
      topics       = ["ansible", "ansible-role", "chocolatey", "packages", "windows"]
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    ansible-galaxy-action = {
      description = "A GitHub Action to publish an Ansible roles to Galaxy."
      topics      = ["ansible", "ansible-galaxy", "ansible-role"]
    }

    ansible-role-locales = {
      description  = "An Ansible role to manage locales."
      homepage_url = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/locales/"
      topics       = ["ansible", "ansible-role", "debian", "locales", "rhel", "system"]
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    ansible-role-containerd = {
      description    = "An Ansible role to install and configure Containerd."
      homepage_url   = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/containerd/"
      topics         = ["ansible", "ansible-role", "containerd", "containers", "debian", "docker", "rhel"]
      default_branch = "main"
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }

    ansible-role-gitlab = {
      description  = "An Ansible role to install and configure GitLab."
      homepage_url = "https://galaxy.ansible.com/ui/standalone/roles/antmelekhin/gitlab/"
      topics       = ["ansible", "ansible-role", "gitlab"]
      actions_plaintext_secrets = {
        GALAXY_API_KEY = var.galaxy_api_token
        GH_TOKEN       = var.github_token
      }
    }
  }
}

module "repositories" {
  source  = "antmelekhin/repository/github"
  version = "1.3.2"

  for_each = local.repositories

  name         = each.key
  description  = each.value.description
  homepage_url = try(each.value.homepage_url, null)
  topics       = each.value.topics

  default_branch = try(each.value.default_branch, null)

  actions_encrypted_secrets = try(each.value.actions_encrypted_secrets, {})
  actions_plaintext_secrets = try(each.value.actions_plaintext_secrets, {})
}
