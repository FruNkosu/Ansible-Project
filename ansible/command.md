ansible webserver-dev -i inventory/webservers/hosts -m ping
ansible-playbook -i inventory/servers/hosts tomcat-deploy.yml
ansible-playbook -i inventory/servers/hosts tomcat-deploy.yml --extra-vars 'tomcat_user=tomcat tomcat_group=tomcat'