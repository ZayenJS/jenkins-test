pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building..'
        sh '/usr/bin/docker compose down'
        sh 'docker compose build'
      }
    }
    stage('Test') {
      steps {
        echo 'Testing..'
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying....'
        sh '/usr/bin/docker compose up --force-recreate -d'
      }
    }
  }
}