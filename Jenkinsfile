pipeline {
    agent {
        // Define agent details here
    }
    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')
    }
    stages {
      stage ('Checkout') {
       checkout scm
      }

      stage ('Terraform') {
        sh 'terraform init'
        sh 'terraform apply -no-color create.tfplan'
      }
    }
}