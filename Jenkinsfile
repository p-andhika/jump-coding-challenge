pipeline {
  agent any

  stages {
    stage("build") {
      steps {
        echo 'building the application...'
        sh 'npm install'
      }
    }

    stage("test") {
      steps {
        echo 'testing the application...'
      }
    }

    stage("deploy") {
      steps {
        echo 'deploy the application...'
      }
    }
  }
}
