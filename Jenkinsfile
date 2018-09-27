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
                    sudo docker tag nginx-exemplo:${BUILD_NUMBER} hcavarsan/nginx-exemplo:${BUILD_NUMBER}
                    sudo docker tag nginx-exemplo:${BUILD_NUMBER} hcavarsan/nginx-exemplo:latest
                """
            }
        }
        stage('Push Image') {
            steps {
                sh """
                    sudo docker push hcavarsan/nginx-exemplo:${BUILD_NUMBER}
                """
            }
        }
         stage('Deploy Container ') {
            steps {
                sh """
                    sudo ssh -i /tmp/consul.pem ec2-user@52.206.108.67 sudo docker container stop nginx-exemplo
                    sudo ssh -i /tmp/consul.pem ec2-user@52.206.108.67 sudo docker container rm nginx-exemplo
                    sudo ssh -i /tmp/consul.pem ec2-user@52.206.108.67 sudo docker run -d --name nginx-exemplo -p 80:80 hcavarsan/nginx-exemplo:${BUILD_NUMBER}
                """
            }
        }
        }
}
