pipeline {
    agent any
    /*tools {
        //maven 'maven-3.8.6'
        mvnHome = tool 'MVN3'
    }*/
    stages {
       stage("Preparacion Inicial"){
            mvnHome = tool 'maven-3.8.6'
       }
       stage('Build') {
            /*steps {
                sh 'mvn clean package'
            }*/
            if(isUnix()){
                sh "'${mvnHome}/bin/mvn' clean package"
            } else {
                bat(/"${mvnHome}\bin\mvn" clean package/)
            }
       }
       stage('Pruebas Unitarias'){
            steps {
                echo 'Pruebas Unitarias'
            }
       }
       stage('Despliegue en QA'){
            when{branch 'development'}
            steps {
                echo 'Depliegue en QA'
            }
       }
    }

    post{
        success{
            setBuildStatus("Build succeeded", "SUCCESS");
        }

        failure {
            setBuildStatus("Build failed", "FAILURE");
        }
    }
}

void setBuildStatus(String message, String state) {
    step([
        $class: "GitHubCommitStatusSetter",
        reposSource: [$class: "ManuallyEnteredRepositorySource", url: "https://https://github.com/titomatu/automatizacion-credito"],
        contextSource: [$class: "ManuallyEnteredCommitContextSource", context: "ci/jenkins/build-status"],
        errorHandlers: [[$class: "ChangingBuildStatusErrorHandler", result: "UNSTABLE"]],
        statusResultSource: [$class: "ConditionalStatusResultSource", results: [[$class: "AnyBuildResult", message: message, state: state]]]
    ]);
}
