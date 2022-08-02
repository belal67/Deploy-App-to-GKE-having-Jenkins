pipeline {
  agent any
  stages {
    stage('Clone') {
      steps {
          git branch: 'main', url: 'https://github.com/belal67/simple-python-app'
        }
    }  
    stage('Build-app') {
       
      steps {
          withCredentials([usernamePassword(credentialsId: 'dockerhub',usernameVariable:'USER', passwordVariable:'PASSWORD')]){
                sh """
                docker build . -f dockerfile -t belalhany/devops_challenge
                docker login -u ${USER} -p ${PASSWORD}
                docker push belalhany/devops_challenge
                """   
            }           
        }
    }
    stage('deploy-app') {
        steps {
          sh 'kubectl apply -f deploy-app/'
            }        
        }
    }
}