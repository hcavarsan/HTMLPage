pipeline {
    agent any
    environment {
        serviceName = 'nginx-exemplo'
        version = "${BUILD_NUMBER}"
    }
        stages {
        stage('sonar analysis') {
            steps {
                sh """
                    sudo docker build -t nginx-exemplo .
                """
            }
        }
        }
}
