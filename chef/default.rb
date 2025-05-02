# Simulated Chef script for installing Docker and starting a Flask container

package 'docker.io' do
    action :install
  end
  
  service 'docker' do
    action [:enable, :start]
  end
  
  execute 'run flask container' do
    command 'docker run -d -p 5000:5000 moebaker/cloudapp-flask:latest'
    not_if 'docker ps | grep flask'
  end
  