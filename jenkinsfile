pipeline {
    agent any

    environment 
      { 
       AWS_CREDS = credentials('aws-cred') 
       AWS_ACCESS_KEY_ID = "${AWS_CREDS_USR}" 
       AWS_SECRET_ACCESS_KEY = "${AWS_CREDS_PSW}" 
       AWS_DEFAULT_REGION = 'eu-north-1' 
     }

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/muraliee/eks-terraform.git'
            }
        }

        stage('Terraform Init') {
            steps {
                
                    sh 'terraform init'
                
            }
        }

        stage('Terraform Validate') {
            steps {
                
                    sh 'terraform validate'
                
            }
        }

        stage('Terraform Plan') {
            steps {
                
                    sh 'terraform plan'
                
            }
        }

        stage('Approval') {
            steps {
                input 'Approve deployment?'
            }
        }

        stage('Terraform Apply') {
            steps {
                
                    sh 'terraform apply -auto-approve'
                
            }
        }

        stage('Configure Kubectl') {
            steps {
                sh '''
                aws eks update-kubeconfig \
                --region ap-south-1 \
                --name jenkins-eks
                '''
            }
        }

        stage('Verify Cluster') {
            steps {
                sh 'kubectl get nodes'
            }
        }
    }
}
