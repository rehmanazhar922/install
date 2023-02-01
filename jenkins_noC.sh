#EXEC: bash < <(curl -s https://raw.githubusercontent.com/rehmanazhar922/install/main/jenkins_noC.sh)
#Jenkins has no installation candidate : error while trying to install jenkins on ubuntu system

#Command 1

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null

#command2 :

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

#command3:

sudo apt-get update

sudo apt-get install jenkins

sudo systemctl status jenkins

#Access the URL http://hostname:8080

#use the below command to get the password

#Service
sudo service jenkins start

#Password
more /var/lib/jenkins/secrets/initialAdminPassword
