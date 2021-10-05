pipeline{
	agent any

	stages{
		stage('Build'){
			steps {
			withCredentials ([usernamePassword(credentialsId: 'deploy', usernameVariable: 'USERNAME', passwordVariable: 'USERPASS')]) {
				echo '###### This Is The Build Stage ######'
sh "sshpass -p '$USERPASS' -v ssh -o StrictHostKeyChecking=no $USERNAME@${env.dev_ip} \" cd /home/deploy/lab-jenkins-docker ; jar -cvf dist/lab-jenkins.war src/index.html \""
sh "sshpass -p '$USERPASS' -v ssh -o StrictHostKeyChecking=no $USERNAME@${env.dev_ip} \" cd /home/deploy/lab-jenkins-docker ; docker build -t rlouati/lab-jenkins:latest . ; docker build -t  rlouati/lab-jenkins:${env.BUILD_NUMBER}  \""
sh "sshpass -p '$USERPASS' -v ssh -o StrictHostKeyChecking=no $USERNAME@${env.dev_ip} \" cd /home/deploy/lab-jenkins-docker ; docker push rlouati/lab-jenkins:latest ; docker push rlouati/lab-jenkins:${env.BUILD_NUMBER}  \""

				}
			}
					}
		stage('Deploy'){
			steps {
				echo 'This is the Deploy Stage'
				echo ''
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
