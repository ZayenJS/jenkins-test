pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building..'
        sh "docker-compose exec node bash -ci 'npm i && tsc'"
      }
    }
    stage('Test') {
      steps {
        echo 'Testing..'
        sh 'ls -ltrA'
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying....'
        sh 'docker-compose up'
      }
    }
  }
}