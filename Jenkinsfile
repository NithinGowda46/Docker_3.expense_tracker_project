pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/NithinGowda46/Docker_3.expense_tracker_project.git'
            }
        }
        stage('Build and run') {
            steps {
                    sh '/usr/local/bin/docker compose up --build -d '
            }
        }
        stage('upload image') {
            steps {
                sh '/usr/local/bin/docker push nithingowda46/expensetracker:latest'
            }
        }
    }
}