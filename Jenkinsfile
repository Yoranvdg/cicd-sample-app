node {
    stage('Preparation') {
        catchError(buildResult: 'SUCCESS') {
            sh 'docker stop samplerunning'
            sh 'docker rm samplerunning'
        }
    }
    stage('Build & Staging') {
        echo 'Bouwen en starten op Staging (infra010)...'
        sh 'docker build -t cicd-sample-app .'
        sh 'docker run -d --name samplerunning -p 5050:5050 cicd-sample-app'
    }
    stage('Deploy to Production (dmz010)') {
        echo 'Deployen naar productie webserver dmz010...'
        sh 'ansible-playbook -i /vagrant/ansible/inventory.yml /vagrant/ansible/site.yml --limit dmz010'
    }
}