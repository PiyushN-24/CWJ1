pipeline {
	agent any
	
	stages {
	    stage('Checkout') {
	        steps {
			checkout scm			       
		      }}
		stage('Build') {
	           steps {
			  sh '/home/therecker/DevOps/Maven/apache-maven-3.9.6/bin/mvn install'
	                 }}
		stage('Deployment'){
		    steps {
			sh 'cp target/CWJ1.war /home/therecker/DevOps/Maven/apache-tomcat-9.0.85/webapps'
			}}
			stage('Docker build'){
		    steps {
			//sh 'sudo docker build -t $JOB_NAME-$BUILD_NAME .'
			sh 'echo "1109" | sudo -S docker build -t container1 .'
			}}
			stage('Container creation'){
		    steps {
			//sh 'sudo docker run -it -d --name=CWJ-1 $JOB_NAME-$BUILD_NAME /bin/bash'
			sh 'echo "1109" | sudo -S docker run -itd --name=CWJ-1 container1 /bin/bash'
			}}	
}}
