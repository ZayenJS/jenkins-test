pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building..'
        sh 'npm i -g typescript'
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