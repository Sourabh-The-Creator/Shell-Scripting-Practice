!/bin/bash
freem="$(free -m | grep Mem | awk '{print $4}')";
echo "Available Memory : $freem"
if [ "$freem" -gt 1000 ]
then
	sudo apt update
	sudo apt install openjdk-8-jre-headless
	java -version
	sudo apt install apt-transport-https
	wget -q -O - https://www.apache.org/dist/cassandra/KEYS | sudo apt-key add -
	sudo sh -c 'echo "deb http://www.apache.org/dist/cassandra/debian 311x main" > /etc/apt/sources.list.d/cassandra.list'
	sudo apt update
	sudo apt install cassandra
	cqlsh
else
	echo "Insufficient memory! Empty cassandra needs more than 1.5 GB of memory."
fi