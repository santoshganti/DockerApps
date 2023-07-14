# Remove Old Versions of Docker
sudo dnf remove docker \
docker-client \
docker-client-latest \
docker-common \
docker-latest \
docker-latest-logrotate \
docker-logrotate \
docker-selinux \
docker-engine-selinux \
docker-engine

# Setup the Repository
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo

# Install Docker Enginer
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Enable and start the server
sudo systemctl start docker

# Managing docker without sudo
sudo groupadd docker

# Add user to the docker group
sudo usermod -aG docker $USER

# Let the changes take effect
newgrp docker