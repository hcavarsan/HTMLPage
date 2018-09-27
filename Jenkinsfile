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
                    sudo docker build -t nginx-exemplo:${BUILD_NUMBER} .
                """
            }
        }
        stage('Tag Image') {
            steps {
                sh """
                    sudo docker tag nginx-exemplo hcavarsan/nginx-exemplo:${BUILD_NUMBER}
                """
            }
        }

        stage('Tag Image') {
            steps {
                sh """
                    sudo docker push hcavarsan/nginx-exemplo:${BUILD_NUMBER}
                """
            }
        }
        }
}
