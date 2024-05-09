pipeline {
  agent { dockerfile true }
  stages {
    stage('Build') {
      steps {
        echo 'Building..'
        sh "node --version"
        sh 'tsc --version'
        sh 'tsc'
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
        sh 'node dist/index.js'
      }
    }
  }
}