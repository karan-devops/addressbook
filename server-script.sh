<<<<<<< HEAD
sudo yum install java-1.8.0-openjdk-devel -y
sudo yum install git -y
sudo yum install maven -y
if [ -d "addressbook" ]
	then
		echo "repo is cloned and exists"
		cd /home/ec2-user/addressbook
 		git pull origin master
	else
		echo "repo is not there"
		git clone https://github.com/preethid/addressbook.git
		cd /home/ec2-user/addressbook
fi
mvn package
=======
sudo yum  install java-1.8.0-openjdk-devel -y
sudo yum install git -y
sudo yum install maven -y
if [ -d "addressbook" ]
then 
  echo "repo is cloned and exists"
  cd /home/ec2-user/addressbook
  git pull origin master
else
  echo "repo is not there"
 git clone https://github.com/preethid/addressbook.git
 cd /home/ec2-user/addressbook
fi
 mvn package
>>>>>>> 1afb7029454cbe3c0ba2f304fdc3370058289013
