pipeline {
    agent any

    stages {
        stage('Install and Build') {
            steps {
                script {
                    // Use the correct NodeJS tool name configured in Jenkins
                    def nodejsHome = tool name: 'NodeJS', type: 'hudson.plugins.nodejs.tools.NodeJSInstallation'
                    env.PATH = "${nodejsHome}/bin:${env.PATH}"

                    // Print NodeJS and npm versions for verification
                    sh 'node --version'
                    sh 'npm --version'

                    // Install npm dependencies
                    sh 'npm install'

                    // Build your project
                    sh 'npm run build'
                }
            }
        }

        // Add other stages as needed
    }

    post {
        // Add post-build actions
        always {
            echo 'Always executed steps go here.'
        }
        failure {
            echo 'Build failed! Additional failure steps can be added here.'
        }
    }
}
