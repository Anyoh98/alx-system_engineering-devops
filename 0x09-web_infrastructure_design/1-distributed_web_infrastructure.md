DESCRIPTION

In this web infrastructure setup, there are two servers, Server A and Server B, working together to host the website www.foobar.com. The infrastructure is designed to provide redundancy, load balancing, and high availability, improving the system's reliability and performance.

1- Reason for adding an extra server:

An extra server was added to provide redundancy and improve the systems reliability.

2- What distribution algorithm your load balancer is configured with and how it works:

The load balancer is configured with a round-robin distribution algorithm, which evenly distributes incoming requests among the two available application servers.This algorithm evenly distributes incoming requests in a cyclic manner. Each server in the pool takes turns handling a request.

3- Is your load-balancer enabling an Active-Active or Active-Passive setup, explain the difference between bothc

With two application servers, the setup is Active-Active. Both servers actively handle incoming requests, improving system performance and fault tolerance.

4- How a database Primary-Replica (Master-Slave) cluster works

The Primary node (on Server A) manages write operations, and the Replica node (on Server B) replicates data from the Primary. This ensures data redundancy and enhances database reliability.

5- What is the difference between the Primary node and the Replica node in regard to the application

The primary node is the authoritative source for write operations. Any changes or updates to the database, such as inserting, updating, or deleting data, must be made on the primary node while  Replica nodes primarily handle read operations. They serve as secondary copies of the data and are used to distribute read traffic, reducing the load on the primary node.

ISSUES WITH THIS INFRASTRUCTURE

1- Where are SPOF

While this setup improves redundancy, there is still the potential for single points of failure at each server level.

2- Security issues (no firewall, no HTTPS)

The infrastructure lacks essential security measures, such as a firewall and HTTPS encryption, making it susceptible to security threats.

3- No monitoring 

There is no monitoring system in place to track server health, traffic patterns, or security threats. Monitoring is essential for early issue detection and effective troubleshooting.
