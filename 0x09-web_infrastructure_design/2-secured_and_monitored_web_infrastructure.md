DESCRIPTION

In this modified web structure, we added 3 firewalls, 3 Sumologic data collectors and and SSL certificate authenticator over HTTPS.

SPECIFICS EXPLAINED

1- Reason additonal elements are added

-Firewalls (x3):

Purpose: To provide network security and control incoming and outgoing traffic.
Functions:
a. Firewall 1 protects the Load Balancer.
b. Firewall 2 protects the Web Servers.
c. Firewall 3 protects the Application Servers and Database Servers.

-Monitoring Clients (x3):

Purpose: To collect and send monitoring data to Sumologic (or other monitoring services).
Data Collection: These clients are responsible for collecting various metrics, logs, and performance data from servers and components in the infrastructure.

- SSL Termination: 

SSL termination at the load balancer is beneficial because it offloads SSL encryption/decryption from web servers, improving their performance. It also simplifies certificate management as you need to maintain SSL certificates on the load balancer only.

2- What are Firewalls For:

Firewalls are network security devices designed to control and filter incoming and outgoing network traffic based on an organization's previously established security policies.

3- Why is the Traffic Served Over HTTPS:

Serving traffic over HTTPS (HyperText Transfer Protocol Secure) is essential for several reasons:
Data Encryption: HTTPS encrypts data transmitted between a user's browser and the web server. This encryption ensures that sensitive information, like login credentials and personal data, remains confidential and secure.

Data Integrity: It guarantees the integrity of the data in transit. Any tampering or modification of the data is detected, protecting against data corruption.

Trust and Authentication: HTTPS uses SSL/TLS certificates to verify the identity of the website. Users can trust that they are connecting to the legitimate site and not a malicious one.

Search Engine Ranking: Major search engines like Google favor websites that use HTTPS, resulting in better search rankings.


4- What Monitoring is Used For:

Monitoring is used to keep an eye on the health, performance, and security of IT systems and networks. 

5- How the Monitoring Tool is Collecting Data:

They collect data through data collectors placed on the devices within the network.

6- Monitoring Web Server QPS (Queries Per Second):

To monitor the Queries Per Second (QPS) for a web server, follow these steps:

-Deploy a monitoring tool or agent on the web server.

-Configure the monitoring tool to capture relevant metrics, including incoming requests.

-Set up custom alerts or notifications for QPS thresholds you want to monitor.

-Monitor the generated QPS data and alerting to ensure that the web server's performance remains within acceptable limits.

-Take necessary actions when QPS exceeds predefined thresholds to address performance or capacity issues, such as scaling the infrastructure or optimizing the application.

ISSUES WITH THE INFRASTRUCTURE

-Terminating SSL at Load Balancer: Terminating SSL at the load balancer may expose unencrypted traffic between the load balancer and web servers. To address this, you can establish a secure network connection between the load balancer and web servers.

-Single MySQL Server for Writes: Relying on a single MySQL server for write operations creates a single point of failure. Implementing a MySQL replication setup with a primary-replica configuration is recommended to ensure high availability and data redundancy.

-Uniform Server Components: Using the same server components for all servers can pose a problem if a common issue affects all servers simultaneously. Consider introducing diversity and redundancy to mitigate this risk.
