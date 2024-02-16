node {
    stage('Checkout') {
        checkout scm
    }

    stage('Build') {
        bat 'npm install'
        bat 'npm run build'
    }

    stage('Publish') {
        // Add steps to publish or deploy your application
        // For example, deploy to a web server or push to a cloud platform
    }
}
