pipeline {
    agent any

    tools {
        nodejs 'NodeJS'
      }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/marinahanyy/angular-realworld-example-app.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build --prod'
            }
        }

        stage('Deploy') {
            steps {
                // Add deployment steps here
                // Example: Copy the build artifacts to a web server
                sh 'cp -r dist/* /var/www/html/'
            }
        }
    }

    post {
        always {
            // Clean up steps or notifications can go here
            sh 'echo "Finished the build process"'
        }
    }
}
