node('built-in')
{
   stage('ContinuosDownload')
   {
       git 'https://github.com/krishnain/SampleMaven.git'
   } 
   stage('ContinuosBuild')
   {
       sh 'mvn package'
   } 
   stage('ContinuosDeployment')
   {
       deploy adapters: [tomcat9(credentialsId: 'cd076526-1975-42c2-a9e1-b79f5c0cc500', path: '', url: 'http://172.31.23.179:8080')], contextPath: 'testapp', war: '**/*.war'
   }
   stage('ContinuosTesting')
   {
       git 'https://github.com/intelliqittrainings/FunctionalTesting.git'
       sh 'java -jar /home/ubuntu/.jenkins/workspace/ScriptedPipeline1/testing.jar'
       
   } 
   stage('ContinuosDelivery')
   {
       input message: 'Need approval from the DM!', submitter: 'srinivas'
      deploy adapters: [tomcat9(credentialsId: 'cd076526-1975-42c2-a9e1-b79f5c0cc500', path: '', url: 'http://172.31.23.149:8080')], contextPath: 'prodapp', war: '**/*.war'
   } 
   
   
   
   
   
   
   
   
   
   
}
