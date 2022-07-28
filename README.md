This playbook is designed to create ssh keys on ansible nodes and copy them to target servers
Target nodes setup
Planning:
1.  Inputs: hosts
    1. Update invetory
2.  Play
    Tasks:
    1. Create .ssh
    2. Create authorized_keys
    3. Copy public key content to the file

HTTPD Installation
1. Install httpd
2. Create the index.html file in node system
3. Copy the index file from node to target server
4. Start httpd service
5. Run playbook with cmd: ansible-playbook apache.yaml
