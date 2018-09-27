pipeline {
    agent any
    environment {
        serviceName = 'nginx-exemplo'
        version = "${BUILD_NUMBER}"
    }
        stages {
        stage('checkout') {
            steps {
                sh "" sudo docker build -t nginx-exemplo . ""
            }
        }
        }
}
