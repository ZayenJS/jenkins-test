pipeline {
  agent { docker "jenkins/agent" }
  stages {
    stage('Build') {
      steps {
        echo 'Building..'
        sh "node --version"
      }
    }
    stage('Test') {
      steps {
        echo 'Testing..'
        sh 'ls -ltrA'
        sh 'find . -type d -name dist -exec ls -ltr {} \\;'
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying....'
        sh 'docker compose down'
        sh 'docker compose up -d'
      }
    }
  }
}