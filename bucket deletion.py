import boto3
import json
import os

# === CONFIGURE THESE VALUES ===
MFA_SERIAL = "arn:aws:iam::789234141785:mfa/pixel"  # Change this
BUCKET_NAME = "myvideo-s3"                             # Change this
OBJECT_KEY = "ec2/prac/terraform.tfstate"                        # Change this
REGION = "us-east-1"                                        # Optional: change if needed

# === Prompt for MFA Code ===
mfa_code = input("Enter your 6-digit MFA code: ")

# === Get Temporary Credentials ===
sts_client = boto3.client("sts", region_name=REGION)
try:
    response = sts_client.get_session_token(
        SerialNumber=MFA_SERIAL,
        TokenCode=mfa_code
    )
except Exception as e:
    print(f"Failed to get session token: {e}")
    exit(1)

credentials = response["Credentials"]

# === Create an S3 client with temporary credentials ===
s3 = boto3.client(
    "s3",
    region_name=REGION,
    aws_access_key_id=credentials["AccessKeyId"],
    aws_secret_access_key=credentials["SecretAccessKey"],
    aws_session_token=credentials["SessionToken"]
)

# === Attempt to delete the object ===
try:
    print(f"Deleting s3://{BUCKET_NAME}/{OBJECT_KEY} ...")
    s3.delete_object(Bucket=BUCKET_NAME, Key=OBJECT_KEY)
    print("✅ File deleted successfully.")
except Exception as e:
    print(f"❌ Error deleting file: {e}")
