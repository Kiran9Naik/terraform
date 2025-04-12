import boto3

def lambda_handler(event, context):
    instance_id = event['detail']['instance-id']
    region = event['region']

    ec2 = boto3.client('ec2', region_name=region)
    print(f"Received stop notification for instance {instance_id}. Attempting to start it...")

    ec2.start_instances(InstanceIds=[instance_id])
    return {
        'statusCode': 200,
        'body': f"Instance {instance_id} restarted."
    }
