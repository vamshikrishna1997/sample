@Library('SampleLibrary')_

pipeline
{
    agent any
    stages
    {
        stage('ContinuousDownload_Master')
        {
            steps
            {
                script
                {
                    cicd.newGit("https://github.com/krishnain/SampleMaven.git")
                }
            }
        }
        stage('ContinuousBuild_Master')
        {
            steps
            {
                script
                {
                    cicd.newMaven()
                }
            }
        }
        stage('ContinuousDeployment_Master')
        {
            steps
            {
                script
                {
                    cicd.newDeploy("Pipelinewithlibraries","172.31.23.179","testapp")
                }
            }
        }
        stage('ContinuousTesting_Master')
        {
            steps
            {
                script
                {
                    cicd.newGit("https://github.com/intelliqittrainings/FunctionalTesting.git")
                    cicd.runSelenium("Pipelinewithlibraries")
                }
            }
        }
        stage('ContinuousDelivery_Master')
        {
            steps
            {
                script
                {
                    cicd.newDeploy("Pipelinewithlibraries","172.31.23.149","prodapp")
                }
            }
        }
    }
}
