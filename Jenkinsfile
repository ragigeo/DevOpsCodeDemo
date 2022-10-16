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
    }
}
