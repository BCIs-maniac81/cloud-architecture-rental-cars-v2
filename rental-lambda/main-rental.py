import logging
import boto3
import json
import os


session = boto3.Session(region_name=os.environ['REGION'])
dynamodb_client = session.client('dynamodb')

def lambda_handler(event, context):
    try:
        print("event ->" + str(event))
        payload = json.loads(event["body"])
        print("payload ->" + str(payload))
        dynamodb_response = dynamodb_client.put_item(
            TableName=os.environ["CARS_TABLE"],
            Item={
                "id": {
                    "N": str(payload["car_id"])
                },
                "name": {
                    "S": str(payload["car_name"])
                },
                "brand_id": {
                    "N": str(payload["brand_id"])
                },
                
                "air_cond": {
                    "S": str(payload["air_cond"])
                },
                "heating": {
                    "S": str(payload["heating"])
                },
                "fuel": {
                    "S": str(payload["fuel"])
                },
                "category_id": {
                    "N": str(payload["category_id"])
                },
                "daily_cost": {
                    "N": str(payload["daily_cost"])
                }
            }
        )
        print(dynamodb_response)
        return {
            'statusCode': 201,
           'body': '{"status":"car created"}'
        }
    except Exception as e:
        logging.error(e)
        return {
            'statusCode': 500,
           'body': '{"status":"Server error"}'
        }
'''
Nous utilisons le SDK python AWS boto3 pour accéder aux services AWS - dans ce cas le service DynamoDB. 
Nous créons le client DynamoDB en dehors de la fonction Lambda Handler, 
de sorte que tant que la VM Lambda est en vie, nous pouvons réutiliser la même instance client.
Nous analysons ensuite la charge utile envoyée par l'application cliente 
et invoquons l'API put item du service DynamoDb pour transférer l'article.
'''