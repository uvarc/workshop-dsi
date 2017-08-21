import boto3

client = boto3.client('ec2')

response = client.run_instances(
    BlockDeviceMappings=[
        {
            'DeviceName': '/dev/xvda',     # This is the normal mountpoint
            'Ebs': {
                'Encrypted': False,
                'DeleteOnTermination': True,
                'VolumeSize': 9,           # Size in GB of boot volume
                'VolumeType': 'gp2'        # Standard SSD
            },
        },
    ],
    ImageId='ami-6e1a0117',     # Ubuntu 16.04LTS base
    InstanceType='t2.micro',    # Instance type
    KeyName='nem2p',            # User key (omit the .pem portion)
    MaxCount=1,
    MinCount=1,
    SecurityGroupIds=[
        'sg-3ba0eb41',          # Sec Group ID
    ],
    # UserData='string',        # Can insert user-data
    DryRun=False                # Dry run to test?
)

print(response)
