pipeline {
  agent {
    node { label 'workstation' }
  }

  options {
    ansiColor('xterm')
  }

  stages {
    stage( 'Terraform Apply') {
      steps {
        sh 'terraform init'
        sh 'terraform apply -auto-approve'
      }
    }
  }
  post {
    always {
    cleanWs()
    }
  }
}
