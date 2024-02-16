pipeline {
    agent any

    stages {
        stage('Checkout SCM') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/marinahanyy/angular-realworld-example-app.git']]])
            }
        }

        stage('Install and Build') {
            steps {
                script {
                    // Assuming 'NodeJS' tool is installed locally
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

        stage('Deploy') {
            steps {
                script {
                    // Add your deployment steps here
                    // For example, deploying to a server, cloud platform, etc.
                    echo 'Deployment steps go here.'
                }
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
            // Add any post-build actions you need to perform regardless of success or failure
            echo 'Always executed steps go here.'
        }
    }
}
