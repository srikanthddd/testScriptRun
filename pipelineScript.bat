pipeline{
	agent any
	stages{
		stage('Check-out') {
			steps{
				echo "Compiled stage completed !";
			}
		}
		stage('Build') {
			steps{
				echo "Compiled stage completed !";
			}
		}
		stage('JUnit'){
			steps{
				echo "JUnit stage completed !";
			}
		}
		stage('Quality-Gate'){
			steps{
				echo "SonarQube Quality-Gate stage completed !";
			}
		}
		stage('Deploy'){
			steps{
				echo "Deploy stage is also completed !!!";
			}
		}
	}
	post{
		always {
			echo "This will always run.."
		}
		success {
			echo "This will run only if successful.."
		}
		failure{
			echo "This will run only if failed.."
		}
		unstable {
			echo "This will run only if the run was marked as unstable.."
		}
		changed{
			echo "This will run if the stage of the pipeline has changed.."
			echo "For example, if the pipeline was previously failing but is now successful"
		}
				
	}
}