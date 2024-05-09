pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building..'
        sh 'tsc -v'
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
        sh 'node dist/index.js'
      }
    }
  }
}