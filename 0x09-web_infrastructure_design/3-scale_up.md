Description
This upgraded web infrastructure represents an enhanced version of the previously described setup. Here, all Single Points of Failure (SPOFs) have been eliminated, and the primary components, including the web server, application server, and database servers, have been relocated to separate GNU/Linux servers. SSL protection is no longer terminated at the load balancer, and each server's network is shielded by a firewall while also being subject to monitoring.

Specifics About This Infrastructure
The incorporation of a firewall is interposed between every server, serving as a protective barrier.
This safeguard is designed to shield each server from unwelcome and unauthorized access, as opposed to merely safeguarding a single server.

Issues With This Infrastructure
Elevated maintenance expenses.
Transferring each major component to its dedicated server entails procuring additional servers, which would subsequently result in increased electricity consumption and, consequently, a higher electricity bill for the company. This necessitates allocating funds for the purchase of servers and the ongoing operation of both the new and existing ones.
