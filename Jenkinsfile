pipeline{
	agent any

	stages{
		stage('Build'){
			steps {
				echo '###### This Is The Build Stage ######'
				sh 'cd /root/lab-jenkins-docker'
				sh 'jar -cvf /root/lab-jenkins-docker/dist/lab-jenkins.war /root/lab-jenkins-docker/src/index.html'
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
