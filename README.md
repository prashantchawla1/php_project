# php_project - Deploying a PHP App Using Ansible on Ubuntu.

Public URL: http://prodappalb01-475151615.us-east-1.elb.amazonaws.com/

The AWS environment in North Virginia Region:
VPC
    Public Subnet:
        Application Load Balancer
    Private Subnet
        Terraform Server (Centos)
        Ansible Server (Ubuntu)
        Web Server (Ubuntu)
    
AWS Client VPN was setup to connect to the private subnet EC2 instances. NACLs and Security Groups were setup. 


Pre-requisites were installed before deploying the Ansible playbooks. App was deployed using Ansible and the Fat-Free Framework
for PHP.
