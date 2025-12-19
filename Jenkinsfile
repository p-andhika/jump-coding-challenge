pipeline {
  agent any
  environment {
    VERSION = '1.3.0'
    SERVER_CREDENTIALS = credentials('server-credentials')
  }

  stages {
    stage("build") {
      steps {
        echo "version ${VERSION}"
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
