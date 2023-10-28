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

How the web infrastruture works:

User: This is the user and he want to access the website, www.foobar.com. It sends a TCP/UDP request to the DNS server to translate the domain name to it's assigned IP address (IP 8.8.8.8).

DNS server: This is teh phonebook of the internet that helps the user find the correct webserver for the web page it requested. it will maps www.foobar.com to the IP address IP 8.8.8.8.

Web server: This is a software (nginx) that hosts a webpage and delivers its static content. It works in tandem with other servers such as the application server, SQL server, etc

Application server: This server is in charge of executing the code (backend). It communicates with the SQL database to collect data requested by the user. It gets the code to execute from the codebase.
Application files (codebase): This is the code required that needs to be executed byt the application server.
SQL Database: This is a relational data base that anages and stores data. When the user requests for data, SQL queries are sent to this data base to retirve the data.
Domain name: www.foobar.com is the human readable name for the ip address of the web page that we want to access. This iwhat the user input on its web browser.
