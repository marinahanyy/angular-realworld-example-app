pipeline {
    agent any

    environment {
        // Define any environment variables needed for your build
        NODEJS_HOME = tool 'NodeJS'
        PATH = "${NODEJS_HOME}/bin:${PATH}"
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout your Angular app source code from the repository
                git 'https://github.com/yourusername/your-angular-app.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                // Install Node.js dependencies
                sh 'npm install'
            }
        }

        stage('Build') {
            steps {
                // Build Angular app
                sh 'npm run build --prod'
            }
        }

        stage('Deploy') {
            steps {
                // Add steps to deploy your Angular app (e.g., copy to a web server, Dockerize, etc.)
                // Example: Copy the build artifacts to a web server
                sh 'cp -r dist/* /var/www/html/'
            }
        }
    }

    post {
        always {
            // Clean up steps or notifications can go here
        }
    }
}
