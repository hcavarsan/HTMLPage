pipeline {
    agent any
    environment {
        serviceName = 'nginx-exemplo'
        version = "${BUILD_NUMBER}"
    }
        stages {
        stage('checkout') {
            steps {
                git branch: branch, credentialsId: 'e40e2851-a8ec-4cdd-a9e5-12e4853d4208', url: 'https://github.com/hcavarsan/HTMLPage.git'
            }
        }
        }
}
