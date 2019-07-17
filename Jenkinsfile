pipeline{
    agent any
    tools {
        
        maven 'mymaven' 
    }
    stages{
        stage('checkout'){
            steps{
                
                withCredentials([string(credentialsId: 'Sansu-git', variable: 'git')]) {
              
                checkout([$class: 'GitSCM',
                branches: [[name: 'origin/dev']],
                extensions: [[$class: 'WipeWorkspace']],
            
                ])
                }
            }
        }
      stage ('build and test'){
            steps{
                
                    sh "mvn clean install"
                
            }
        }
      
        
       stage('Sonar') 
       {environment {
           scannerHome=tool 'sonar scanner'
       }
            steps {
                
                sh "mvn sonar:sonar -Dsonar.host.url=http://3.14.251.87:9000"
            }
        }
        stage ('Uploading artifact to nexus'){
            steps{
 withCredentials([usernamePassword(credentialsId: 'sudipa_nexus', passwordVariable: 'pass', usernameVariable: 'usr')]) {
sh label: '', script: "curl -u $usr:$pass --upload-file target/sam-app1.war http://3.14.251.87:8081/nexus/content/repositories/devopstraining/samyy/sam-app1.war"
}
            
        }
        }
         stage ('Deploy'){
            steps{
              withCredentials([usernamePassword(credentialsId: 'devops-tomcat', passwordVariable: 'pass', usernameVariable: 'userId')]) {
                    sh "cd target;ls"
                    sh label: '', script:'curl -u $userId:$pass http://ec2-18-224-182-74.us-east-2.compute.amazonaws.com:8080/manager/text/undeploy?path=/Sansu-deploy'
                    sh label: '', script: 'curl -u  $userId:$pass --upload-file target/sam-app1.war http://ec2-18-224-182-74.us-east-2.compute.amazonaws.com:8080/manager/text/deploy?config=file:/var/lib/tomcat8/sam-app1.war\\&path=/Sansu-deploy'
            }
        }

    }
}
}
 post {
    success {
      slackSend (color: '#00FF00', message: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
    }
    failure {
      slackSend (color: '#FF0000', message: "FAILED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
    }
  }
} 
