pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS=credentials('dockerhub')
    }

    stages {
        stage('gitclone') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                script {
                    // Build the Docker image using the builder stage
                    sh 'docker build -t marinaaaaa/angular-image .'
                }
            }
        }

        stage('Login') {
            steps {
                // Use credentials to log in to Docker Hub
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }

        stage('Push') {
            steps {
                // Push the Docker image to Docker Hub
                sh 'docker push marinaaaaa/angular-image'
            }
        }
    }

    post {
        always {
            // Always log out from Docker Hub
            sh 'docker logout'
        }
    }
}
