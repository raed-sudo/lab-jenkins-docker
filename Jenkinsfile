pipeline{
	agent any

	stages{
		stage('Build'){
			steps {
				echo '###### This Is The Build Stage ######'
				sh 'sudo -i ; cd /home/deploy/lab-jenkins-docker ; jar -cvf dist/lab-jenkins.war src/index.html'
				sh 'sudo -i ; cd /home/deploy/lab-jenkins-docker ; docker build -t rlouati/lab-jenkins:latest ;'
				}
					}
		stage('Deploy'){
			steps {
				echo 'This is the Deploy Stage'
				sh 'echo Deploy'
				}
				}
		stage('Production Deploy'){
			when {
				branch 'master'
				}
			steps{
				echo 'This is PROD'
				sh ' hostname '
				}
					}
		}


	}
