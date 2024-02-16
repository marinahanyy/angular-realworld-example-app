pipeline {
    agent {
        docker {
            image 'node:14'
            args '-p 4200:4200'
        }
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build and Run with Docker') {
            steps {
                // Build Docker image
                sh 'docker build -t my-angular-app .'

                // Run Docker container
                sh 'docker run -p 4200:4200 my-angular-app'
            }
        }
    }
}
