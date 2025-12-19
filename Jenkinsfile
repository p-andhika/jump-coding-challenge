pipeline {
  agent any
  environtment {
    SERVER_CREDENTIALS = credentials('server-credentials')
  }

  stages {
    stage("build") {
      steps {
        echo 'building the application...'
        echo "build with ${SERVER_CREDENTIALS}"
        // sh 'npm install'
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
