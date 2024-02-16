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
      
        stage('Build, Login, Push') {
            steps {
                script {
                    // Build the Docker image using the builder stage
                    bat 'docker build -t marinaaaaa/angular-image .'
                    bat 'echo %DOCKERHUB_CREDENTIALS_PSW% | docker login -u %DOCKERHUB_CREDENTIALS_USR% --password-stdin'
                    bat 'docker push marinaaaaa/angular-image'

                }
            }
        }

        // Add additional stages as needed

        stage('Deploy') {
            steps {
                echo 'Deploying...'
                // Your deployment steps go here
            }
        }
    }

    post {
        success {
            echo 'Build and Docker push successful! Additional success steps can be added here.'
        }
        failure {
            echo 'Build or Docker push failed! Additional failure steps can be added here.'
        }
        always {
            // Always log out from Docker Hub
            sh 'docker logout'
            echo 'Always executed steps go here.'
        }
    }
}
