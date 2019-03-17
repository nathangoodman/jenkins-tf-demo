pipeline {
    agent {
        // Define agent details here
    }
    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-secret-key')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
    }
    stages {
      stage ('Checkout') {
       checkout scm
      }

      stage ('Terraform Plan') {
        sh 'terraform plan -no-color -out=create.tfplan'
      }

      // Optional wait for approval
      input 'Deploy stack?'

      stage ('Terraform Apply') {
        sh 'terraform apply -no-color create.tfplan'
      }

    }
}