#!groovy

node {
    def commit = checkoutSCM()
    withEnv([ "COMMIT=${commit}" ]) {
        sh "docker login -u yingdaluo -p lyd1991!!"
    	sh "bash ./build-tag-push.sh yingdaluo/spin-kub-demo . ${COMMIT} ${BRANCH_NAME}"
    }
}
	

// Checkout from scm and returns the commit rev.
def checkoutSCM() {
	//Checkout code from repository
	checkout scm
	def long_commitTmp = sh script: "git rev-parse HEAD", returnStdout: true
	return long_commitTmp.trim()
}

