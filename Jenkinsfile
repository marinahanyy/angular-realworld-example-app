pipeline{

	agent {label 'any'}

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {
	    
	    stage('gitclone') {

			steps {
				git 'https://github.com/marinahanyy/angular-realworld-example-app.git'
			}
		}

		stage('Build') {

			steps {
				sh 'docker build -t marinaaaaa/angular-image .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push marinaaaaa/angular-image'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
