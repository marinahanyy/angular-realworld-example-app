pipeline {
    agent any

    environment {
        // Set the path to your local Node.js installation
        NODEJS_HOME = 'C:\\ProgramData\\Microsoft\\Windows\\Start Menu\\Programs\\Node.js'
        // Add Node.js and npm to the PATH
        PATH = "${NODEJS_HOME};${env.PATH}"
    }

    stages {
        stage('Checkout SCM') {
            steps {
                checkout scm
            }
        }

        stage('Install and Build') {
            steps {
                script {
                    // Print Node.js version for verification
                    bat 'node --version'
                    
                    // Print npm version for verification
                    bat 'npm --version'

                    // Install npm dependencies
                    bat 'npm install'

                    // Build your project (adjust this command based on your project)
                    bat 'npm run build'
                }
            }
        }

        // Add additional stages as needed

        stage('Deploy') {
            steps {
              echo 'deploying.'
                // Your deployment steps go here
              
            }
        }
    }

    post {
        success {
            echo 'Build successful! Additional success steps can be added here.'
        }
        failure {
            echo 'Build failed! Additional failure steps can be added here.'
        }
        always {
            echo 'Always executed steps go here.'
        }
    }
}
