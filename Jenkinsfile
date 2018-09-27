pipeline {
    agent any
    environment {
        serviceName = 'nginx-exemplo'
        version = "${BUILD_NUMBER}"
    }
        stages {
        stage('Docker Build') {
            steps {
                sh """
                    sudo docker build -t nginx-exemplo .
                """
            }
        }
        }
}
