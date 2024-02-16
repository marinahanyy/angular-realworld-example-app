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

        stage('Publish') {
            steps {
                // Add steps to publish or deploy your application
                // For example, deploy to a web server or push to a cloud platform
            }
        }
    }
}
