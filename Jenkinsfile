pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building..'
        sh "node --version"
        sh 'docker build -t test-app .'
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
        sh 'docker run --rm -d -p 10000:10000 test-app --name test-app'
      }
    }
  }
}