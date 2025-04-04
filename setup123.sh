sudo apt update
sudo apt upgrade -y
sudo apt install openjdk-17-jre -y
echo OpenJdk 17 has been installed!
wget https://llaun.ch/jar
mv jar tlaunch.jar
mkdir ~/.local/share/applications
wget -P ~/.local/share/applications https://raw.githubusercontent.com/rochanlavu10/mcinstall123/refs/heads/main/minecraft.desktop
wget -P ~/.tlauncher https://raw.githubusercontent.com/rochanlavu10/mcinstall123/refs/heads/main/legacy.properties
java -jar tlaunch.jar | awk '/[Thread-0] INFO shaded.com.getsentry.raven.connection.AsyncConnection - Shutdown finished./ {system("^C")}'
echo Minecraft launcher (tlauncher legacy) has been installed! You can now click "Minecraft" in the application launcher to open it
