pipeline{
	agent any

	stages{
		stage('Build'){
			steps {
				echo 'This is the Build test'
				sh 'echo Hello'
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
