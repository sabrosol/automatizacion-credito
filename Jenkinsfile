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
                bat(/"${mvnHome}\bin\mvn" clean package/)
            }
        } else {
            echo 'I execute elsewhere'
        }
    }
}