A SIMPLE WEBSTACK


Description:
This is a web infrastructure that hosts a website that is reachable via www.foobar.com. It has only one server (based onLAMP)
Requirements:
1 server

1 web server (Nginx)

1 application server

1 application files (your code base)

1 database (MySQL)

1 domain name foobar.com configured with a www record that points to your server IP 8.8.8.8

Specifics about this simple web infrastructure

1-What is a server

A server is a very powerful computer that can either be a hardware or or a software that is used to process, store and retrieve data as requested by clients such as web browsers and other applications over a network.

2-What is the role of the domain name 

www.foobar.com is the human readable/text based representation for the ip address of the web page requested by the client. This is what the user inputs on their web browser.

3- What type of DNS record www is in www.foobar.com?

It is an Address record(A record).Because it stores the host name and the corresponding IPv4 address.

4-What is the role of a web server

This is a hardware or software (nginx in our case) that hosts a webpage and delivers its static content on client request. It works in tandem with other servers such as the application server, SQL server, etc

5-What is the role of the application server

An application server whether in the form of hardware or software is responsible for executing backend code that processes the client request. It often commuicates with other servers like the database server to retrieve or storedata as requested by clients.

6- What is the role of the database

The database is used to manage and store information/data used by web applications. It allows for modifications, retrieval, and deletion.

7- What is the server using to communicate with the computer of the user requesting the website

The server use the web browser on the users computer  to communicate over the internet. This comunication occurs through HTTP over the TCP/IP network.


THE ISSUES WITH THIS INFRASTRUCTURE

1- SPOF

There is only one server meaning only a single channel of communication, if the server fails, the entire system will become unavailable.

2- Downtime when maintenance needed (like deploying new code web server needs to be restarted)

When maintenance is necessary, like when introducing new code or implementing updates, the web server has to be restarted. This can lead to periods when the website is unavailable, impacting user access.

3- Cannot scale if too much incoming traffic

This setup might struggle to manage a substantial surge in incoming traffic. It doesn't possess the capability to smoothly expand horizontally by introducing additional servers to share the workload. This can lead to performance problems during surges in visitor traffic.
