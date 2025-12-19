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

        script {
          def dockerCmd = 'docker run -p 3000:3000 -d gynx99/jump-app:1.1'
          sshagent(['ec2-server-key']) {
            sh '''
            ssh ec2-user@EC2_IP "
              docker pull gynx99/jump-app:1.1 &&
              docker stop jump-app || true &&
              docker rm jump-app || true &&
              docker run -d --name jump-app -p 3000:3000 gynx99/jump-app:1.1
            "
            '''
          }
        }
      }
    }
  }
}
