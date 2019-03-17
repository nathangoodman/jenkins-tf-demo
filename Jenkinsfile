pipeline {
    agent {
        // Define agent details here
    }
    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')
    }
 stage(‘Set Terraform path’) {
  steps {
    script {
      def tfHome = tool name: ‘Terraform’
      env.PATH = “${tfHome}:${env.PATH}”
    }
    sh ‘terraform — version’
    }
 }
 
 stage(‘Provision infrastructure’) {
 
  steps {
    {
      sh ‘terraform init’
      sh ‘terraform plan -out=plan’
      // sh ‘terraform destroy -auto-approve’
      sh ‘terraform apply plan’
    }
  }
}
}