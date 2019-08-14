pipeline{
    agent any
    tools {
        
        maven 'mymaven' 
    }
    stages{
        
      stage ('build and test'){
            steps{
                
                    sh "mvn clean install -DskipTests"
                
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

post{
   success {
          script{
              d='{"teamName":"KSR","jobtitle":"'+JOB_NAME+'","bNumber":"'+BUILD_NUMBER+'","bUrl":"'+BUILD_URL+'",buildStatus":"SUCCESS"}'
              sh "curl -H 'Content-Type: application/json' -X POST -d '${d}'  http://ec2-52-66-245-186.ap-south-1.compute.amazonaws.com:8080/ExtremeFeedbackSystem/api/addbuildinfo"
          }
   }
         failure {
            script{
              d='{"teamName":"KSR","jobtitle":"'+JOB_NAME+'","bNumber":"'+BUILD_NUMBER+'","bUrl":"'+BUILD_URL+'",buildStatus":"FAILURE"}'
        
            sh "curl -H 'Content-Type: application/json' -X POST -d '${d}'  http://ec2-52-66-245-186.ap-south-1.compute.amazonaws.com:8080/ExtremeFeedbackSystem/api/addbuildinfo"
         }

}
}
}
