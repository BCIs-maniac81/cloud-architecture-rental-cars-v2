# Créer l'API gateway (Passerelle API) qui est un service qui permet créer, de publier, 
# de maintenir, de surveiller et de sécuriser des API à n'importe quelle échelle.

resource "aws_api_gateway_rest_api" "rental_cars" {
    name = "rental-cars-api"
    description = "API pour la location de voitures"
}

# Maintenant, on va créer les chemins "/brand", "/category" "/cars", "/clients", 
# "/booking" and "/promo" de l'API RESTful. (ressources)
resource "aws_api_gateway_resource" "cars" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    parent_id = aws_api_gateway_rest_api.rental_cars.root_resource_id
    path_part = "car"
}
resource "aws_api_gateway_resource" "brand" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    parent_id = aws_api_gateway_rest_api.rental_cars.root_resource_id
    path_part = "brand"
}
resource "aws_api_gateway_resource" "category" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    parent_id = aws_api_gateway_rest_api.rental_cars.root_resource_id
    path_part = "category"
}
resource "aws_api_gateway_resource" "clients" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    parent_id = aws_api_gateway_rest_api.rental_cars.root_resource_id
    path_part = "client"
}
resource "aws_api_gateway_resource" "booking" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    parent_id = aws_api_gateway_rest_api.rental_cars.root_resource_id
    path_part = "booking"
}
resource "aws_api_gateway_resource" "promo" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    parent_id = aws_api_gateway_rest_api.rental_cars.root_resource_id
    path_part = "promo"
}

/* Créer des méthodes qui sont mappées auxverbes HTTP POST, PUT, GET, DELETE. 
Nous ferons correspondre ces méthodes avec la fonction Lambda. */

resource "aws_api_gateway_method" "create-car" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.cars.id
    http_method = "POST"
    authorization = "NONE"
}
resource "aws_api_gateway_method" "get-car" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.cars.id
    http_method = "GET"
    authorization = "NONE"
}
resource "aws_api_gateway_method" "delete-car" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.cars.id
    http_method = "DELETE"
    authorization = "NONE"
}
resource "aws_api_gateway_method" "put-car" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.cars.id
    http_method = "PUT"
    authorization = "NONE"
}

resource "aws_api_gateway_method" "create-client" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.clients.id
    http_method = "POST"
    authorization = "NONE"
}
resource "aws_api_gateway_method" "get-client" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.clients.id
    http_method = "GET"
    authorization = "NONE"
}
resource "aws_api_gateway_method" "delete-client" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.clients.id
    http_method = "DELETE"
    authorization = "NONE"
}
resource "aws_api_gateway_method" "put-client" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.clients.id
    http_method = "PUT"
    authorization = "NONE"
}

resource "aws_api_gateway_method" "create-brand" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.brand.id
    http_method = "POST"
    authorization = "NONE"
}
resource "aws_api_gateway_method" "get-brand" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.brand.id
    http_method = "GET"
    authorization = "NONE"
}
resource "aws_api_gateway_method" "delete-brand" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.brand.id
    http_method = "DELETE"
    authorization = "NONE"
}
resource "aws_api_gateway_method" "put-brand" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.brand.id
    http_method = "PUT"
    authorization = "NONE"
}

resource "aws_api_gateway_method" "create-category" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.category.id
    http_method = "POST"
    authorization = "NONE"
}
resource "aws_api_gateway_method" "get-category" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.category.id
    http_method = "GET"
    authorization = "NONE"
}
resource "aws_api_gateway_method" "delete-category" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.category.id
    http_method = "DELETE"
    authorization = "NONE"
}
resource "aws_api_gateway_method" "put-category" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.category.id
    http_method = "PUT"
    authorization = "NONE"
}

resource "aws_api_gateway_method" "create-booking" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.booking.id
    http_method = "POST"
    authorization = "NONE"
}
resource "aws_api_gateway_method" "get-booking" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.booking.id
    http_method = "GET"
    authorization = "NONE"
}
resource "aws_api_gateway_method" "delete-booking" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.booking.id
    http_method = "DELETE"
    authorization = "NONE"
}
resource "aws_api_gateway_method" "put-booking" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.booking.id
    http_method = "PUT"
    authorization = "NONE"
}

resource "aws_api_gateway_method" "create-promo" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.promo.id
    http_method = "POST"
    authorization = "NONE"
}
resource "aws_api_gateway_method" "get-promo" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.promo.id
    http_method = "GET"
    authorization = "NONE"
}
resource "aws_api_gateway_method" "delete-promo" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.promo.id
    http_method = "DELETE"
    authorization = "NONE"
}
resource "aws_api_gateway_method" "put-promo" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.promo.id
    http_method = "PUT"
    authorization = "NONE"
}

# Créer le Role
resource "aws_iam_role" "RentalLambdaRole" {
  name               = "RentalLambdaRole"
  assume_role_policy = <<EOF
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Action": "sts:AssumeRole",
        "Principal": {
          "Service": "lambda.amazonaws.com"
        },
        "Effect": "Allow",
        "Sid": ""
      }
    ]
  }
  EOF
}

data "template_file" "rentallambdapolicy" {
    template = file("${path.module}/policy.json")
}

# Créer une politique IAM pour la fonction Lambda
resource "aws_iam_policy" "RentalLambdaPolicy" {
    name = "RentalLambdaPolicy"
    path = "/"
    description = "Policy for Lambda functions in Rental Cars project"
    policy = data.template_file.rentallambdapolicy.rendered
}

# Attacher la politique IAM au Role IAM
resource "aws_iam_role_policy_attachment" "RentalLambdaPolicyAttachment" {
    role = aws_iam_role.RentalLambdaRole.name
    policy_arn = aws_iam_policy.RentalLambdaPolicy.arn
}

# Créer la fonction lambda
resource "aws_lambda_function" "rental_lambda" {
  function_name = "RentalLambdaFunction"
  filename = "${path.module}/rental-lambda/rental-lambda.zip"
  handler = "main-rental.lambda_handler"
  role = aws_iam_role.RentalLambdaRole.arn
  runtime = "python3.8"
  timeout = "5"
  memory_size = "128"
  
  environment {
    variables = {
        REGION = "eu-central-1"
        CARS_TABLE = aws_dynamodb_table.car.name
        BRAND_TABLE = aws_dynamodb_table.brand.name
        CATEGORY_TABLE = aws_dynamodb_table.category.name
        CLIENTS_TABLE = aws_dynamodb_table.client.name
        BOOKING_TABLE = aws_dynamodb_table.booking.name
        PROMO_TABLE = aws_dynamodb_table.promo.name
    }
  }

  source_code_hash = filebase64sha256("${path.module}/rental-lambda/rental-lambda.zip")
}

# Connecter l'API Gateway à la fonction Lambda pour chaque méthode ==> Intérgation
# cars
resource "aws_api_gateway_integration" "apigw-lambda-car-create" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.cars.id
    http_method = aws_api_gateway_method.create-car.http_method
    integration_http_method = "POST"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}
resource "aws_api_gateway_integration" "apigw-lambda-car-get" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.cars.id
    http_method = aws_api_gateway_method.get-car.http_method
    integration_http_method = "GET"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}
resource "aws_api_gateway_integration" "apigw-lambda-car-put" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.cars.id
    http_method = aws_api_gateway_method.put-car.http_method
    integration_http_method = "PUT"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}
resource "aws_api_gateway_integration" "apigw-lambda-car-delete" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.cars.id
    http_method = aws_api_gateway_method.delete-car.http_method
    integration_http_method = "DELETE"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}

# clients
resource "aws_api_gateway_integration" "apigw-lambda-client-create" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.clients.id
    http_method = aws_api_gateway_method.create-client.http_method
    integration_http_method = "POST"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}
resource "aws_api_gateway_integration" "apigw-lambda-client-get" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.clients.id
    http_method = aws_api_gateway_method.get-client.http_method
    integration_http_method = "GET"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}
resource "aws_api_gateway_integration" "apigw-lambda-client-put" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.clients.id
    http_method = aws_api_gateway_method.put-client.http_method
    integration_http_method = "PUT"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}
resource "aws_api_gateway_integration" "apigw-lambda-client-delete" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.clients.id
    http_method = aws_api_gateway_method.delete-client.http_method
    integration_http_method = "DELETE"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}

# brand
resource "aws_api_gateway_integration" "apigw-lambda-brand-create" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.brand.id
    http_method = aws_api_gateway_method.create-brand.http_method
    integration_http_method = "POST"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}
resource "aws_api_gateway_integration" "apigw-lambda-brand-get" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.brand.id
    http_method = aws_api_gateway_method.get-brand.http_method
    integration_http_method = "GET"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}
resource "aws_api_gateway_integration" "apigw-lambda-brand-put" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.brand.id
    http_method = aws_api_gateway_method.put-brand.http_method
    integration_http_method = "PUT"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}
resource "aws_api_gateway_integration" "apigw-lambda-brand-delete" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.brand.id
    http_method = aws_api_gateway_method.delete-brand.http_method
    integration_http_method = "DELETE"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}

# category
resource "aws_api_gateway_integration" "apigw-lambda-category-create" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.category.id
    http_method = aws_api_gateway_method.create-category.http_method
    integration_http_method = "POST"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}
resource "aws_api_gateway_integration" "apigw-lambda-category-get" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.category.id
    http_method = aws_api_gateway_method.get-category.http_method
    integration_http_method = "GET"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}
resource "aws_api_gateway_integration" "apigw-lambda-category-put" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.category.id
    http_method = aws_api_gateway_method.put-category.http_method
    integration_http_method = "PUT"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}
resource "aws_api_gateway_integration" "apigw-lambda-category-delete" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.category.id
    http_method = aws_api_gateway_method.delete-category.http_method
    integration_http_method = "DELETE"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}

# booking
resource "aws_api_gateway_integration" "apigw-lambda-booking-create" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.booking.id
    http_method = aws_api_gateway_method.create-booking.http_method
    integration_http_method = "POST"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}
resource "aws_api_gateway_integration" "apigw-lambda-booking-delete" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.booking.id
    http_method = aws_api_gateway_method.delete-booking.http_method
    integration_http_method = "DELETE"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}
resource "aws_api_gateway_integration" "apigw-lambda-booking-get" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.booking.id
    http_method = aws_api_gateway_method.get-booking.http_method
    integration_http_method = "GET"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}
resource "aws_api_gateway_integration" "apigw-lambda-booking-put" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.booking.id
    http_method = aws_api_gateway_method.put-booking.http_method
    integration_http_method = "PUT"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}

# promo
resource "aws_api_gateway_integration" "apigw-lambda-promo-create" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.promo.id
    http_method = aws_api_gateway_method.create-promo.http_method
    integration_http_method = "POST"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}

resource "aws_api_gateway_integration" "apigw-lambda-promo-get" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.promo.id
    http_method = aws_api_gateway_method.get-promo.http_method
    integration_http_method = "GET"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}
resource "aws_api_gateway_integration" "apigw-lambda-promo-put" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.promo.id
    http_method = aws_api_gateway_method.put-promo.http_method
    integration_http_method = "PUT"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}
resource "aws_api_gateway_integration" "apigw-lambda-promo-delete" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.promo.id
    http_method = aws_api_gateway_method.delete-promo.http_method
    integration_http_method = "DELETE"
    type = "AWS_PROXY"
    uri = aws_lambda_function.rental_lambda.invoke_arn
}

# Créer les réponses de méthode (200 OK) pour chaque méthode:POST, GET, PUT et DELETE
# car POST
resource "aws_api_gateway_method_response" "create_car_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.cars.id
    http_method = aws_api_gateway_method.create-car.http_method
    status_code = "200"
}
# car GET
resource "aws_api_gateway_method_response" "get_car_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.cars.id
    http_method = aws_api_gateway_method.get-car.http_method
    status_code = "200"
}
# car PUT
resource "aws_api_gateway_method_response" "put_car_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.cars.id
    http_method = aws_api_gateway_method.put-car.http_method
    status_code = "200"
}
# car DELETE
resource "aws_api_gateway_method_response" "delete_car_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.cars.id
    http_method = aws_api_gateway_method.delete-car.http_method
    status_code = "200"
}

# client POST
resource "aws_api_gateway_method_response" "create_client_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.clients.id
    http_method = aws_api_gateway_method.create-client.http_method
    status_code = "200"
}
# client GET
resource "aws_api_gateway_method_response" "get_client_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.clients.id
    http_method = aws_api_gateway_method.get-client.http_method
    status_code = "200"
}
# client PUT
resource "aws_api_gateway_method_response" "put_client_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.clients.id
    http_method = aws_api_gateway_method.put-client.http_method
    status_code = "200"
}
# client DELETE
resource "aws_api_gateway_method_response" "delete_client_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.clients.id
    http_method = aws_api_gateway_method.delete-client.http_method
    status_code = "200"
}
# brand POST
resource "aws_api_gateway_method_response" "create_brand_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.brand.id
    http_method = aws_api_gateway_method.create-brand.http_method
    status_code = "200"
}
# brand GET
resource "aws_api_gateway_method_response" "get_brand_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.brand.id
    http_method = aws_api_gateway_method.get-brand.http_method
    status_code = "200"
}
# brand PUT
resource "aws_api_gateway_method_response" "put_brand_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.brand.id
    http_method = aws_api_gateway_method.put-brand.http_method
    status_code = "200"
}
# brand DELETE
resource "aws_api_gateway_method_response" "delete_brand_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.brand.id
    http_method = aws_api_gateway_method.delete-brand.http_method
    status_code = "200"
}
# category POST
resource "aws_api_gateway_method_response" "create_category_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.category.id
    http_method = aws_api_gateway_method.create-category.http_method
    status_code = "200"
}
# category GET
resource "aws_api_gateway_method_response" "get_category_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.category.id
    http_method = aws_api_gateway_method.get-category.http_method
    status_code = "200"
} 
# category PUT
resource "aws_api_gateway_method_response" "put_category_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.category.id
    http_method = aws_api_gateway_method.put-category.http_method
    status_code = "200"
} 
# category DELETE
resource "aws_api_gateway_method_response" "delete_category_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.category.id
    http_method = aws_api_gateway_method.delete-category.http_method
    status_code = "200"
}
# booking POST
resource "aws_api_gateway_method_response" "create_booking_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.booking.id
    http_method = aws_api_gateway_method.create-booking.http_method
    status_code = "200"
}
# booking GET
resource "aws_api_gateway_method_response" "get_booking_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.booking.id
    http_method = aws_api_gateway_method.get-booking.http_method
    status_code = "200"
}
# booking PUT
resource "aws_api_gateway_method_response" "put_booking_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.booking.id
    http_method = aws_api_gateway_method.put-booking.http_method
    status_code = "200"
}
# booking DELETE
resource "aws_api_gateway_method_response" "delete_booking_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.booking.id
    http_method = aws_api_gateway_method.delete-booking.http_method
    status_code = "200"
}
# promo POST
resource "aws_api_gateway_method_response" "create_promo_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.promo.id
    http_method = aws_api_gateway_method.create-promo.http_method
    status_code = "200"
}
# promo GET
resource "aws_api_gateway_method_response" "get_promo_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.promo.id
    http_method = aws_api_gateway_method.get-promo.http_method
    status_code = "200"
}
# promo PUT
resource "aws_api_gateway_method_response" "put_promo_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.promo.id
    http_method = aws_api_gateway_method.put-promo.http_method
    status_code = "200"
}
# promo DELETE
resource "aws_api_gateway_method_response" "delete_promo_response" {
    rest_api_id = aws_api_gateway_rest_api.rental_cars.id
    resource_id = aws_api_gateway_resource.promo.id
    http_method = aws_api_gateway_method.delete-promo.http_method
    status_code = "200"
}

# Créer des intégrations de reponses pour chaque méthode
# car POST
resource "aws_api_gateway_integration_response" "create_car_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.cars.id
  http_method = aws_api_gateway_method.create-car.http_method
  status_code = aws_api_gateway_method_response.create_car_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-car-create ]
}
# car GET
resource "aws_api_gateway_integration_response" "get_car_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.cars.id
  http_method = aws_api_gateway_method.get-car.http_method
  status_code = aws_api_gateway_method_response.get_car_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-car-get ]
}
# car PUT
resource "aws_api_gateway_integration_response" "put_car_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.cars.id
  http_method = aws_api_gateway_method.put-car.http_method
  status_code = aws_api_gateway_method_response.put_car_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-car-put ]
}
# car DELETE
resource "aws_api_gateway_integration_response" "delete_car_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.cars.id
  http_method = aws_api_gateway_method.delete-car.http_method
  status_code = aws_api_gateway_method_response.delete_car_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-car-delete ]
}

# client POST
resource "aws_api_gateway_integration_response" "create_client_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.clients.id
  http_method = aws_api_gateway_method.create-client.http_method
  status_code = aws_api_gateway_method_response.create_client_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-client-create ]
}

# client GET
resource "aws_api_gateway_integration_response" "get_client_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.clients.id
  http_method = aws_api_gateway_method.get-client.http_method
  status_code = aws_api_gateway_method_response.get_client_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-client-get ]
}
# client PUT
resource "aws_api_gateway_integration_response" "put_client_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.clients.id
  http_method = aws_api_gateway_method.put-client.http_method
  status_code = aws_api_gateway_method_response.put_client_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-client-put ]
}
# client DELETE
resource "aws_api_gateway_integration_response" "delete_client_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.clients.id
  http_method = aws_api_gateway_method.delete-client.http_method
  status_code = aws_api_gateway_method_response.delete_client_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-client-delete ]
}

# brand POST
resource "aws_api_gateway_integration_response" "create_brand_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.clients.id
  http_method = aws_api_gateway_method.create-brand.http_method
  status_code = aws_api_gateway_method_response.create_brand_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-brand-create ]
}
# brand GET
resource "aws_api_gateway_integration_response" "get_brand_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.clients.id
  http_method = aws_api_gateway_method.get-brand.http_method
  status_code = aws_api_gateway_method_response.get_brand_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-brand-get ]
}
# brand PUT
resource "aws_api_gateway_integration_response" "put_brand_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.clients.id
  http_method = aws_api_gateway_method.put-brand.http_method
  status_code = aws_api_gateway_method_response.put_brand_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-brand-put ]
}
# brand DELETE
resource "aws_api_gateway_integration_response" "delete_brand_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.clients.id
  http_method = aws_api_gateway_method.delete-brand.http_method
  status_code = aws_api_gateway_method_response.delete_brand_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-brand-delete ]
}
# category POST
resource "aws_api_gateway_integration_response" "create_category_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.category.id
  http_method = aws_api_gateway_method.create-category.http_method
  status_code = aws_api_gateway_method_response.create_category_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-category-create ]
}
# category GET
resource "aws_api_gateway_integration_response" "get_category_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.category.id
  http_method = aws_api_gateway_method.get-category.http_method
  status_code = aws_api_gateway_method_response.get_category_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-category-get ]
}
# category PUT 
resource "aws_api_gateway_integration_response" "put_category_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.category.id
  http_method = aws_api_gateway_method.put-category.http_method
  status_code = aws_api_gateway_method_response.put_category_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-category-put ]
}
# category DELETE 
resource "aws_api_gateway_integration_response" "delete_category_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.category.id
  http_method = aws_api_gateway_method.delete-category.http_method
  status_code = aws_api_gateway_method_response.delete_category_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-category-delete ]
}

# booking POST
resource "aws_api_gateway_integration_response" "create_booking_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.booking.id
  http_method = aws_api_gateway_method.create-booking.http_method
  status_code = aws_api_gateway_method_response.create_booking_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-booking-create ]
}
# booking GET 
resource "aws_api_gateway_integration_response" "get_booking_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.booking.id
  http_method = aws_api_gateway_method.get-booking.http_method
  status_code = aws_api_gateway_method_response.get_booking_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-booking-get ]
}
# booking PUT 
resource "aws_api_gateway_integration_response" "put_booking_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.booking.id
  http_method = aws_api_gateway_method.put-booking.http_method
  status_code = aws_api_gateway_method_response.put_booking_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-booking-put ]
}
# booking DELETE
resource "aws_api_gateway_integration_response" "delete_booking_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.booking.id
  http_method = aws_api_gateway_method.delete-booking.http_method
  status_code = aws_api_gateway_method_response.delete_booking_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-booking-delete ]
}
# promo POST
resource "aws_api_gateway_integration_response" "create_promo_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.promo.id
  http_method = aws_api_gateway_method.create-promo.http_method
  status_code = aws_api_gateway_method_response.create_promo_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-promo-create ]
}
# promo GET
resource "aws_api_gateway_integration_response" "get_promo_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.promo.id
  http_method = aws_api_gateway_method.get-promo.http_method
  status_code = aws_api_gateway_method_response.get_promo_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-promo-get ]
}
# promo PUT 
resource "aws_api_gateway_integration_response" "put_promo_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.promo.id
  http_method = aws_api_gateway_method.put-promo.http_method
  status_code = aws_api_gateway_method_response.put_promo_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-promo-put ]
}
# promo DELETE 
resource "aws_api_gateway_integration_response" "delete_promo_integration_response" {
  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  resource_id = aws_api_gateway_resource.promo.id
  http_method = aws_api_gateway_method.delete-promo.http_method
  status_code = aws_api_gateway_method_response.delete_promo_response.status_code
  response_templates =  {
    "application/json" = ""
  }
  depends_on = [ aws_api_gateway_integration.apigw-lambda-promo-delete ]
}

# Déployer l'API GATEWAY
resource "aws_api_gateway_deployment" "rental_cars_deployment" {
  depends_on = [ 
    aws_api_gateway_integration.apigw-lambda-car-create,
    aws_api_gateway_integration.apigw-lambda-car-get,
    aws_api_gateway_integration.apigw-lambda-car-put,
    aws_api_gateway_integration.apigw-lambda-car-delete,

    aws_api_gateway_integration.apigw-lambda-client-create,
    aws_api_gateway_integration.apigw-lambda-client-get,
    aws_api_gateway_integration.apigw-lambda-client-put,
    aws_api_gateway_integration.apigw-lambda-client-delete,

    aws_api_gateway_integration.apigw-lambda-brand-create,
    aws_api_gateway_integration.apigw-lambda-brand-get,
    aws_api_gateway_integration.apigw-lambda-brand-put,
    aws_api_gateway_integration.apigw-lambda-brand-delete,

    aws_api_gateway_integration.apigw-lambda-category-create,
    aws_api_gateway_integration.apigw-lambda-category-get,
    aws_api_gateway_integration.apigw-lambda-category-put,
    aws_api_gateway_integration.apigw-lambda-category-delete,

    aws_api_gateway_integration.apigw-lambda-booking-create,
    aws_api_gateway_integration.apigw-lambda-booking-get,
    aws_api_gateway_integration.apigw-lambda-booking-put,
    aws_api_gateway_integration.apigw-lambda-booking-delete,

    aws_api_gateway_integration.apigw-lambda-promo-create,
    aws_api_gateway_integration.apigw-lambda-promo-get,
    aws_api_gateway_integration.apigw-lambda-promo-put,
    aws_api_gateway_integration.apigw-lambda-promo-delete,

    aws_api_gateway_integration_response.create_car_integration_response,
    aws_api_gateway_integration_response.get_car_integration_response,
    aws_api_gateway_integration_response.put_car_integration_response,
    aws_api_gateway_integration_response.delete_car_integration_response,

    aws_api_gateway_integration_response.create_client_integration_response,
    aws_api_gateway_integration_response.get_client_integration_response,
    aws_api_gateway_integration_response.put_client_integration_response,
    aws_api_gateway_integration_response.delete_client_integration_response,

    aws_api_gateway_integration_response.create_brand_integration_response,
    aws_api_gateway_integration_response.get_brand_integration_response,
    aws_api_gateway_integration_response.put_brand_integration_response,
    aws_api_gateway_integration_response.delete_brand_integration_response,

    aws_api_gateway_integration_response.create_category_integration_response,
    aws_api_gateway_integration_response.get_category_integration_response,
    aws_api_gateway_integration_response.put_category_integration_response,
    aws_api_gateway_integration_response.delete_category_integration_response,

    aws_api_gateway_integration_response.create_booking_integration_response,
    aws_api_gateway_integration_response.get_booking_integration_response,
    aws_api_gateway_integration_response.put_booking_integration_response,
    aws_api_gateway_integration_response.delete_booking_integration_response,

    aws_api_gateway_integration_response.create_promo_integration_response,
    aws_api_gateway_integration_response.get_promo_integration_response,
    aws_api_gateway_integration_response.put_promo_integration_response,
    aws_api_gateway_integration_response.delete_promo_integration_response

  ]

  rest_api_id = aws_api_gateway_rest_api.rental_cars.id
  stage_name = "prod"
  description = "production stage" 
}

# déclarer les permissions lambda <=> API GW
/* Cela permet au service de passerelle API d'invoquer notre fonction lambda */
resource "aws_lambda_permission" "apigw-rental_lambda" {
  action = "lambda:InvokeFunction"
  function_name = aws_lambda_function.rental_lambda.function_name
  principal = "apigateway.amazonaws.com"
  source_arn = "${aws_api_gateway_rest_api.rental_cars.execution_arn}/*/*/car"
}

