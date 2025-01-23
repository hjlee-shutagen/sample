pipeline {
    agent any

    environment {
        IMAGE_NAME = "springboot-sample:latest"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh './mvnw clean package -DskipTests'
            }
        }

        stage('Docker Build') {
            steps {
                sh "docker build -t ${IMAGE_NAME} ."
            }
        }

        stage('Run Container') {
            steps {
                // 이전 컨테이너가 있다면 제거
                sh "docker rm -f springboot-sample || true"
                // 새 컨테이너 실행
                sh "docker run -d --name springboot-sample -p 8090:8090 ${IMAGE_NAME}"
            }
        }
    }
}
