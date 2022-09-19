node{
    def mvnHome
    stage("preparacion"){
    //    git 'https://github.com/sabrosol/automatizacion-credito.git'        mvnHome = tool 'maven-3.8.6'
           mvnHome = tool 'maven-3.8.6'
    }
    stage("Build"){
        if (env.BRANCH_NAME == 'development') {
            if(isUnix()){
                sh "'${mvnHome}/bin/mvn' -version"
            } else {
                bat(/"${mvnHome}\bin\mvn" clean package -DskipTests/)
            }
        } else {
            echo 'I execute elsewhere'
        }
    }
}
void setBuildStatus(String message, String state) {
    step([
        $class: "GitHubCommitStatusSetter",
        reposSource: [$class: "ManuallyEnteredRepositorySource", url: "https://github.com/sabrosol/automatizacion-credito"],
        contextSource: [$class: "ManuallyEnteredCommitContextSource", context: "ci/jenkins/build-status"],
        errorHandlers: [[$class: "ChangingBuildStatusErrorHandler", result: "UNSTABLE"]],
        statusResultSource: [$class: "ConditionalStatusResultSource", results: [[$class: "AnyBuildResult", message: message, state: state]]]
    ]);
}