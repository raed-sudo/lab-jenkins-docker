pipeline{
	agent any

	stages{
		stage('Build'){
			echo 'This is the Build test'
			sh 'echo Hello'
				}
		stage('Deploy'){
			echo 'This is the Deploy Stage'
			sh 'echo Deplou'
				}
		stage('Production Deploy'){
			when {
				branch 'master'
				}
					}
		}


	}
