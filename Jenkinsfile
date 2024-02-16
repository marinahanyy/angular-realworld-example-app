node {
    stage('Checkout') {
        checkout scm
    }

    stage('Build') {
        bat 'npm install'
        bat 'npm run build'
    }
    stage('Dockerize') {
        // Build a Docker image from the Angular app
        bat 'docker build -t angular-realworld-app .'
    }

    stage('Publish') {
        // Add steps to publish or deploy your application
        // For example, deploy to a web server or push to a cloud platform
    }
}
