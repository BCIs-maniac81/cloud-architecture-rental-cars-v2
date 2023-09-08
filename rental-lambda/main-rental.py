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
        http_method = event["httpMethod"]

        if http_method == "POST":
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
        
        elif http_method == 'GET':
            # Traitement pour la requête GET
            car_id = event["pathParameters"]["car_id"]
            return {"status_code" : 200,
                    'body':json.dumps({"car_id": car_id}),
                    'headers': {
                        'Content-Type': 'application/json',
                    },
                    }
    except Exception as e:
        logging.error(e)
        return {
            'statusCode': 500,
           'body': '{"status":"Server error"}'
        }
