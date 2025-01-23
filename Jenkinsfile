pipeline {
    agent {
        label 'main-host'
    }

    environment {
        IMAGE_NAME = "springboot-sample:latest" // Docker 이미지 이름
    }

    stages {
        stage('Checkout') {
            steps {
                // Git에서 코드 가져오기
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Dockerfile을 사용해 이미지를 빌드
                    sh "docker build -t ${IMAGE_NAME} ."
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    // 기존 컨테이너를 삭제 (있을 경우)
                    sh "docker rm -f springboot-sample || true"

                    // 새 컨테이너 실행
                    sh "docker run -d --name springboot-sample -p 8090:8090 ${IMAGE_NAME}"
                }
            }
        }
    }
}
