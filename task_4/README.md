# Task #4: Create Virtual Machine

## Goal of the task:

**Create your first Compute Engine instance and learn some basics about Networking**

Create a Compute Engine instance, install web server (Apache) and host a static website on a created instance

## How to get there:

1. Google Console > Compute Engine > VM Instances > CREATE INSTANCE

2. Virtual Machine instance setup: name, region, machine type (indicates what resources /vRAM, vCPU/ will be allocated for that instance)

3. Identity and API access (who can access the VM instance): leave at default

4. Firewall: allow both HTTP and HTTPS

5. Advanced options > Networking > Add a tag `dareit-public`. Tags are used to match firewall rules to the instances to which the rules should apply

6. Choose network; choose subnetwork; decide if the instance should get a public IP address (External IPv4 address). Leave other options at default. Click Create. Wait.

7. Connect to the Virtual Machine instance. Click on SSH button, it will open a new window and a connection will be established.

8. Get package information from all configured sources (`sudo apt update`) and install **Apache Webserver** (`sudo apt -y install apache2`). Check status of the Apache server (`sudo systemctl status apache2`). Copy the External IP of your VM instance and paste in your browser.

9. Move back to the terminal. Change directory > remove index.html file that was initially created (`sudo rm index.html`; this is the file that holds the definition of the default website configured by Apache). Create your own index.html file (`sudo vim index.html`) add input, save, exit.

10. Refresh the website, now you should see your website 🎉
