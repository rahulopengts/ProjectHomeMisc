sudo shutdown -h now

export CLASSPATH=$CLASSPATH:/home/pi/project_samples/NRF24L01/Java_Project/rf24-bcm-java/lib/commons-lang3-3.3.2.jar:.:/home/pi/project_samples/NRF24L01/Java_Project/rf24-bcm-java/java:/home/pi/project_samples/NRF24L01/Java_Project/rf24-bcm-java/java


sudo java -Djava.library.path=/home/pi/project_samples/NRF24L01/Java_Project/rf24-bcm-java/cpp -cp /home/pi/project_samples/NRF24L01/Java_Project/rf24-bcm-java/java:/home/pi/project_samples/NRF24L01/Java_Project/rf24-bcm-java/examples::/home/pi/project_samples/NRF24L01/Java_Project/rf24-bcm-java/examples/commons-lang3-3.3.2.jar:  GettingStarted

#sudo update-java-alternatives -s jdk-7-oracle-armhf
sudo update-java-alternatives -s jdk-8-oracle-arm-vfp-hflt
java -jar jnaerator.jar -library Test Test.h -o . -v -noJar -noComp


sudo java -Djava.library.path=/home/pi/project_samples/NRF24L01/Java_Project/rf24-bcm-java/cpp GettingStarted

export CLASSPATH=$CLASSPATH:/home/pi/project_samples/NRF24L01/CPPTOJAVA/JNIJAVA/rf24-bcm-java/lib/commons-lang3-3.3.2.jar:.:/home/pi/project_samples/NRF24L01/CPPTOJAVA/JNIJAVA/rf24-bcm-java/java:/home/pi/project_samples/NRF24L01/CPPTOJAVA/JNIJAVA/rf24-bcm-java/java

sudo java -Djava.library.path=/home/pi/project_samples/NRF24L01/CPPTOJAVA/JNIJAVA/rf24-bcm-java/cpp -cp /home/pi/project_samples/NRF24L01/CPPTOJAVA/JNIJAVA/rf24-bcm-java/java:/home/pi/project_samples/NRF24L01/CPPTOJAVA/JNIJAVA/rf24-bcm-java/examples: testjava
	
	
	 cd cpp/RF24/RPi/RF24/
	 sudo make clean
	 sudo make install
	 cd ../../../..
	 sudo make clean
	 sudo make swig
	 sudo make wrapper
	 cd java
	 javac com/my/*.java
	 
	 
	 
	 
INSTALL EJECT
sudo apt-get install eject
udisks --unmount /dev/ttyUSB0
udisks --eject /dev/ttyUSB0
	 
	 
	  javac -cp /usr/share/java/RXTXcomm.jar:. TwoWaySerialComm.java
	  java -Djava.library.path=/usr/lib/jni -cp /usr/share/java/RXTXcomm.jar:. TwoWaySerialComm
	  
	  
	  javac -cp /home/pi/project_samples/paho-clt/mqtt-client-0.4.1-20140524.040116-91.jar:. ./com/mqtt/MqttPublishSample.java
	  


	  
	  MessageBroker

java -Djava.library.path=/usr/lib/jni -cp /home/pi/project_samples/java_rasp/lib/mqtt-client-0.4.1-20140524.040116-91.jar:/home/pi/project_samples/java_rasp/lib/RXTXcomm.jar:.	com.homeauto.mqtt.MessageBrokerService

	  export CLASSPATH=$CLASSPATH:/home/pi/project_samples/java_rasp/lib/mqtt-client-0.4.1-20140524.040116-91.jar:/home/pi/project_samples/java_rasp/lib/RXTXcomm.jar:/home/pi/project_samples/java_rasp/bin:
	  
	  javac -cp /home/pi/project_samples/java_rasp/lib/mqtt-client-0.4.1-20140524.040116-91.jar:/usr/share/java/RXTXcomm.jar:. com.homeauto.mqtt.MessageBrokerService.java
	
java -Djava.library.path=/usr/lib/jni -cp /usr/share/java/RXTXcomm.jar:.:/home/pi/project_samples/java_rasp/lib/mqtt-client-0.4.1-20140524.040116-91.jar: com.homeauto.mqtt.MessageBrokerService

	  ls -l tty*

	   sudo rm LCK..ttyACM0

	   
	   
---------------------------WITH LOGGER------------------------------
javac -cp /home/pi/project_samples/java_rasp/lib/mqtt-client-0.4.1-20140524.040116-91.jar:/usr/share/java/RXTXcomm.jar:/home/pi/project_samples/openHAB/server/plugins/ch.qos.logback.classic_1.0.7.v20121108-1250.jar:/home/pi/project_samples/openHAB/server/plugins/ch.qos.logback.core_1.0.7.v20121108-1250.jar:/home/pi/project_samples/openHAB/server/plugins/ch.qos.logback.slf4j_1.0.7.v20121108-1250.jar:/home/pi/project_samples/openHAB/server/plugins/org.slf4j.api_1.7.2.v20121108-1250.jar:/home/pi/project_samples/openHAB/server/plugins/org.slf4j.log4j_1.7.2.v20130115-1340.jar:. com/homeauto/mqtt/MessageBrokerService.java
	  
export CLASSPATH=$CLASSPATH:/home/pi/project_samples/java_rasp/lib/mqtt-client-0.4.1-20140524.040116-91.jar:/usr/share/java/RXTXcomm.jar:/home/pi/project_samples/openHAB/server/plugins/ch.qos.logback.classic_1.0.7.v20121108-1250.jar:/home/pi/project_samples/openHAB/server/plugins/ch.qos.logback.core_1.0.7.v20121108-1250.jar:/home/pi/project_samples/openHAB/server/plugins/ch.qos.logback.slf4j_1.0.7.v20121108-1250.jar:/home/pi/project_samples/openHAB/server/plugins/org.slf4j.api_1.7.2.v20121108-1250.jar:/home/pi/project_samples/openHAB/server/plugins/org.slf4j.log4j_1.7.2.v20130115-1340.jar:/home/pi/project_samples/java_rasp/config:.
	  
	  
java -Djava.library.path=/usr/lib/jni -Dlogback.configurationFile=/home/pi/project_samples/java_rasp/config/logback.xml com.homeauto.mqtt.MessageBrokerService	   



nohup sudo ./start.sh > logmessage.out 2> logmessage.err < /dev/null &