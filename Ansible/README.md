## Creating New User and Installations using Ansible

After spinning up the server, these commands were ran on it to updates and also installed ansible:

```bash 
sudo apt update      
sudo apt install ansible -y
```
All the IP addresses of the target PC I configured was added to the inventory.txt file, whilst the public key of this host server where ansible is installed on was added to the authorized key file of the target server, so as to enable ease of logging in without password. The commands below were the steps I took to run the playbook.yml

```bash 
mkdir Appsilonansible
cd Appsilonansible
sudo nano inventory.txt
sudo nano ansible.cfg
sudo nano vars.yml
sudo nano playbook.yml
ansible-playbook -i inventory.txt playbook.yml
```
After, running all these commands, the task was successful, I navigated into the target system to confirm all the changes were made.
