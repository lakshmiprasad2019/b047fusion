pipeline {
    agent any

    stages {
        stage('Git checkout') {
            steps {
                git 'https://github.com/lakshmiprasad2019/b047fusion.git'
            }
        }
         stage('Terraform-init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform-plan') {
            steps {
                sh 'terraform plan -out $BUILD_NUMBER'
            }
        }
        stage('Terraform-apply') {
            steps {
                sh 'terraform apply $BUILD_NUMBER'
            }
        }
    }
}
