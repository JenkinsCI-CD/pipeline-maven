pipeline{

  agent any
  
  stages {
    stage('Build'){
      steps{
        sh '''
            ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
            ./jenkins/build/build.sh
        '''
      }
      post {
	success {
	  archiveArtifacts artifacts: 'java-app/target/*.jar', fingerprint: true
	}
      }
    }
    stage('Test'){
      steps{
        sh './jenkins/test/test.sh mvn clean test'
      }
      post {
	success {
	   junit 'java-app/target/surefire-reports/*.xml'
	  }
	}
    }
    stage('Push'){
      steps{
        sh './jenkins/push/push.sh'
      }
    }
    stage('Deploy'){
      steps{
        sh './jenkins/deploy/deploy.sh'
      }
    }

  }

}
