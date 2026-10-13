node {
    stage('Checkout') {
        git branch: 'main', url: 'https://github.com/Yoranvdg/cicd-sample-app'
    }
    stage('Preparation') {
        sh 'docker rm -f samplerunning || true'
    }
    stage('Build & Staging') {
        echo 'Bouwen en starten op Staging (infra010)...'
        sh 'docker build -t cicd-sample-app .'
        sh 'docker run -d --name samplerunning -p 5050:5050 cicd-sample-app'
    }
    stage('Deploy to Production (dmz010)') {
        echo 'Klaar op Staging! Productie-deployment loopt via de Control VM of Ansible playbook.'
    }
}