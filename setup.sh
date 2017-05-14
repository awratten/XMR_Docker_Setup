apt-get update
apt-get -y install \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual

apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt-get update

apt-get install docker-ce

docker pull kannix/monero-miner
docker run -t kannix/monero-miner -a cryptonight -o stratum+tcp://xmr.pool.minergate.com:45560 -u email@email.com -p x
