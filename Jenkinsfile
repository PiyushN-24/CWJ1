pipeline {
	agent any
	
	stages {
	    stage('Checkout') {
	        steps {
			checkout scm			       
		      }}
		stage('Build') {
	           steps {
			  sh '/home/admin/apache-maven-3.9.4/bin/mvn install'
	                 }}
		stage('Deployment'){
		    steps {
			sh 'cp target/CWJ1.war /home/admin/apache-tomcat-9.0.79/webapps'
			}}
			stage('Docker build'){
		    steps {
			sh 'docker build -t $JOB_NAME-$BUILD_NAME .'
			}}
			stage('Container creation'){
		    steps {
			sh 'docker run -it -d --name=CWJ-1 $JOB_NAME-$BUILD_NAME /bin/bash'
			}}	
}}
