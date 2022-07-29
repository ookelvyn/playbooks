Attaching EBS volume to new server

Tasks:
1. Attach Existing EBS - 
    Go create a volume in aws
    Attach volume to the server
    Run Cmds:
    lsblk
    mkfs -t ext4 /dev/xvdf
    mount /dev/xvdf /mnt
    cd /mnt
    vi index.html "write random text"
    cd ..
    unmount /mnt
    Go back to AWS and detach the volume
    Copy the volume ID

    Go to Launch configuration
    Create Launch configuration
    Name: webserver
    Choose AMI (Lauch new instance to see AMI ID, copy and paste to search)
    Choose instance type: t2.micro
    Select IAM role
    ec2-s3-role
    user data: as text

    documentation for attaching EBS vol: https://docs.ansible.com/ansible/latest/collections/amazon/aws/ec2_vol_module.html

    To get meta data of ec2 instance: curl http://169.254.169.254/latest/meta-data/

    Requirements: install python, boto3 and botocore



Mount it on /var/www/html