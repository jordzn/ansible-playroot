pipeline {
  agent any
  options {
    ansiColor colorMapName: 'XTerm'
    timestamps()
  }
  environment {
    AWS_ACCESS_KEY_ID     = credentials("aws_access_key_${exchange_name}")
    AWS_SECRET_ACCESS_KEY = credentials("aws_secret_key_${exchange_name}")
    https_proxy           = "https://127.0.0.1:9000/"
  }
  stages {
    stage("Preflight") {
      steps {
        sh "chmod 755 ansible/build/app-ansible-run.sh"
      }
    }
    stage("Ansible run") {
      steps {
        sh "cd ansible && ./build/app-ansible-run.sh ${exchange_name} ${environment} ${size} ${playbook}"
      }
    }
  }
}
