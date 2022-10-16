pipeline{
    
    tools{
        jdk 'myjava'
        maven 'mymaven'
    }
    
    agent any
    
    stages{

        stage('1.CloneRepo')
        {
           
            steps{
                git 'https://github.com/ragigeo/DevOpsCodeDemo'
            }
        }
        stage('2.Compile the code')
        {
             
            steps{
             sh 'mvn compile'
            }
        }
       stage('3.Unit Testing'){
            steps{
                sh 'mvn test'
            }
            post{
                success{
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
        stage('6.Package'){
            steps{
                sh 'mvn package'
            }
        }
        stage('7.Build docker image'){
            steps{
                sh 'docker build -t ragigeo/addressbook:1.0.0 .'
            }
        }
        stage('8.Push docker image'){
            steps{
                sh 'docker login -u ragigeo -p Vaishali@2015'
                sh 'docker push ragigeo/addressbook:1.0.0'
            }
        }
         stage('9.Run container on tomcat server'){
            steps{
                sh 'docker container run -p 8090:8090 -d -name addressbook ragigeo/addressbook:1.0.0'
            }
        }
    }
}
