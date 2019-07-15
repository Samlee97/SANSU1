pipeline{
    agent any
    tools {
        maven 'mymaven' 
    }
    stages{
        stage('checkout'){
            steps{
                  sh 'echo $BUILD_NUMBER'
                withCredentials([string(credentialsId: 'Sansu-git', variable: 'git')]) {
                echo "My password is '${git}'!"
                checkout([$class: 'GitSCM',
                branches: [[name: 'origin/dev']],
                extensions: [[$class: 'WipeWorkspace']],
                userRemoteConfigs: [[url: "${git}"]]
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
