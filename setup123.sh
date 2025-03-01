sudo apt update
sudo apt upgrade -y
sudo apt install openjdk-17-jre -y
echo OpenJdk 17 has been installed!
mkdir ~/.minecraft
wget -P ~/.minecraft https://llaun.ch/jar
mv ~/.minecraft/jar ~/.minecraft/tlaunch.jar
java -jar ~/.minecraft/tlaunch.jar | awk '/[Thread-0] INFO shaded.com.getsentry.raven.connection.AsyncConnection - Shutdown finished./ {system("^C")}'

