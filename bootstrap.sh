# Mise à jour du gestionnaire de paquets et des dépendances système
sudo yum update -y

## Création d'un point de montage pour mon bucket S3 :

# Installation des dépendances nécessaires
sudo yum install -y git automake fuse fuse-devel gcc-c++ openssl-devel libcurl-devel libxml2-devel mailcap

# Téléchargement et compilation de s3fs-fuse à partir du code source
cd /tmp
git clone https://github.com/s3fs-fuse/s3fs-fuse.git
cd s3fs-fuse
./autogen.sh
./configure --prefix=/usr
make
sudo make install

# Configuration de FUSE pour autoriser l'option allow_other
echo "user_allow_other" | sudo tee -a /etc/fuse.conf

# Création du répertoire de montage
mkdir -p ~/s3bucket

# Montage du bucket en utilisant le rôle IAM
s3fs chakir-p8-data ~/s3bucket -o iam_role=auto -o allow_other -o use_cache=/tmp

# Ajout du montage à fstab pour le rendre persistant après un redémarrage
echo "s3fs#chakir-p8-data ~/s3bucket fuse _netdev,iam_role=auto,allow_other,use_cache=/tmp 0 0" | sudo tee -a /etc/fstab

## Installation des packages python nécessaires sur chaque instance :

aws s3 cp s3://chakir-p8-data/requirements.txt /tmp/requirements.txt
pip install --no-cache-dir -r /tmp/requirements.txt
