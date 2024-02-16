pipeline {
    agent {
        docker {
            image 'node:14'  // Use an official Node.js image
            args '-p 4200:4200'  // Map port 4200 from container to host
        }
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'npm install'
                sh 'npm run build'
            }
        }

        stage('Run') {
            steps {
                sh 'npm start'
            }
        }
    }
}
