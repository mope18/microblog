#sudo cp scripts/deploy-app/resources/supervisor.conf /etc/supervisor/conf.d/microblog.conf

#sudo mkdir /var/log/microblog
#sudo chmod 777 /var/log/microblog
#sudo supervisorctl reload

sudo apt-get update

sudo apt-get -y install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
sudo docker run hello-world
docker-compose up prod