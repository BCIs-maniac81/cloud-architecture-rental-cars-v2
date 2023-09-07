# Insérer les enregistrements de la table 'brand'

resource "aws_dynamodb_table_item" "brand_record1" {
    table_name = aws_dynamodb_table.brand.name
    hash_key = aws_dynamodb_table.brand.hash_key

    item = <<ITEM
    {
        "id" : {"N": "1"},
        "brand" : {"S" : "FIAT"},
        "site" : {"S" : "ITALY"}
    }
    ITEM
}
resource "aws_dynamodb_table_item" "brand_record2" {
    table_name = aws_dynamodb_table.brand.name
    hash_key = aws_dynamodb_table.brand.hash_key

    item = <<ITEM
    {
        "id" : {"N": "2"},
        "brand" : {"S" : "PEUGEOT"},
        "site" : {"S" : "FRANCE"}
    }
    ITEM
}
resource "aws_dynamodb_table_item" "brand_record3" {
    table_name = aws_dynamodb_table.brand.name
    hash_key = aws_dynamodb_table.brand.hash_key

    item = <<ITEM
    {
        "id" : {"N": "3"},
        "brand" : {"S" : "OPEL"},
        "site" : {"S" : "GERMANY"}
    }
    ITEM
}
resource "aws_dynamodb_table_item" "brand_record4" {
    table_name = aws_dynamodb_table.brand.name
    hash_key = aws_dynamodb_table.brand.hash_key

    item = <<ITEM
    {
        "id" : {"N": "4"},
        "brand" : {"S" : "BMW"},
        "site" : {"S" : "GERMANY"}
    }
    ITEM
}
resource "aws_dynamodb_table_item" "brand_record5" {
    table_name = aws_dynamodb_table.brand.name
    hash_key = aws_dynamodb_table.brand.hash_key

    item = <<ITEM
    {
        "id" : {"N": "5"},
        "brand" : {"S" : "CITROEN"},
        "site" : {"S" : "FRANCE"}
    }
    ITEM
}

# Insérer les enregistrements de la table 'category'
resource "aws_dynamodb_table_item" "category_record1" {
    table_name = aws_dynamodb_table.category.name
    hash_key = aws_dynamodb_table.category.hash_key

    item = <<ITEM
    {
        "id" : {"N" : "1"},
        "category" : {"S" : "city car"}
    }
    ITEM
}
resource "aws_dynamodb_table_item" "category_record2" {
    table_name = aws_dynamodb_table.category.name
    hash_key = aws_dynamodb_table.category.hash_key

    item = <<ITEM
    {
        "id" : {"N" : "2"},
        "category" : {"S" : "utility"}
    }
    ITEM
}
resource "aws_dynamodb_table_item" "category_record3" {
    table_name = aws_dynamodb_table.category.name
    hash_key = aws_dynamodb_table.category.hash_key

    item = <<ITEM
    {
        "id" : {"N" : "3"},
        "category" : {"S" : "monospace"}
    }
    ITEM
}

# Insérer les enregistrements de la table 'car'
resource "aws_dynamodb_table_item" "car_record1" {
  table_name = aws_dynamodb_table.car.name
  hash_key   = aws_dynamodb_table.car.hash_key # Clé de hachage de la table 'car'
  range_key  = aws_dynamodb_table.car.range_key # Clé de tri de la table 'car'

    item = <<ITEM
    {
        "id" : {"N" : "100"},
        "name" : {"S" : "500"},
        "brand_id" : {"N" : "1"},
        "air_cond" : {"S" : "yes"},
        "heating" : {"S" : "yes"},
        "fuel" : {"S" : "gasoline"},
        "category_id" : {"N" : "1"},
        "daily_cost" : {"N" : "102.3"}
    }
    ITEM
}

resource "aws_dynamodb_table_item" "car_record2" {
  table_name = aws_dynamodb_table.car.name
  hash_key   = aws_dynamodb_table.car.hash_key # Clé de hachage de la table 'car'
  range_key  = aws_dynamodb_table.car.range_key # Clé de tri de la table 'car'

    item = <<ITEM
    {
        "id" : {"N" : "101"},
        "name" : {"S" : "207"},
        "brand_id" : {"N" : "2"},
        "air_cond" : {"S" : "yes"},
        "heating" : {"S" : "yes"},
        "fuel" : {"S" : "diesel"},
        "category_id" : {"N" : "1"},
        "daily_cost" : {"N" : "143.217"}
    }
    ITEM
}

resource "aws_dynamodb_table_item" "car_record3" {
  table_name = aws_dynamodb_table.car.name
  hash_key   = aws_dynamodb_table.car.hash_key # Clé de hachage de la table 'car'
  range_key  = aws_dynamodb_table.car.range_key # Clé de tri de la table 'car'

    item = <<ITEM
    {
        "id" : {"N" : "102"},
        "name" : {"S" : "cargo"},
        "brand_id" : {"N" : "3"},
        "air_cond" : {"S" : "no"},
        "heating" : {"S" : "yes"},
        "fuel" : {"S" : "diesel"},
        "category_id" : {"N" : "2"},
        "daily_cost" : {"N" : "170.1"}
    }
    ITEM
}

resource "aws_dynamodb_table_item" "car_record4" {
  table_name = aws_dynamodb_table.car.name
  hash_key   = aws_dynamodb_table.car.hash_key # Clé de hachage de la table 'car'
  range_key  = aws_dynamodb_table.car.range_key # Clé de tri de la table 'car'

    item = <<ITEM
    {
        "id" : {"N" : "103"},
        "name" : {"S" : "serie 2"},
        "brand_id" : {"N" : "4"},
        "air_cond" : {"S" : "yes"},
        "heating" : {"S" : "yes"},
        "fuel" : {"S" : "diesel"},
        "category_id" : {"N" : "3"},
        "daily_cost" : {"N" : "250.5"}
    }
    ITEM
}
resource "aws_dynamodb_table_item" "car_record5" {
  table_name = aws_dynamodb_table.car.name
  hash_key   = aws_dynamodb_table.car.hash_key # Clé de hachage de la table 'car'
  range_key  = aws_dynamodb_table.car.range_key # Clé de tri de la table 'car'

    item = <<ITEM
    {
        "id" : {"N" : "104"},
        "name" : {"S" : "berlingo"},
        "brand_id" : {"N" : "5"},
        "air_cond" : {"S" : "yes"},
        "heating" : {"S" : "no"},
        "fuel" : {"S" : "diesel"},
        "category_id" : {"N" : "3"},
        "daily_cost" : {"N" : "300.0"}
    }
    ITEM
}

# Insérer les enregistrements de la table 'client'
resource "aws_dynamodb_table_item" "client_record1" {
  table_name = aws_dynamodb_table.client.name
  hash_key = aws_dynamodb_table.client.hash_key # Clé de hachage de la table 'client'

item = <<ITEM
{
    "id" : {"N" : "1"},
    "first_name" : {"S" : "Elon"},
    "last_name" : {"S" : "Musk"},
    "birthday" : {"S" : "1960-01-01"},
    "address_1" : {"S" : "California"},
    "address_2" : {"S" : " "},
    "address_3" : {"S" : " "},
    "city" : {"S" : "California"},
    "zip_code" : {"S" : "0014250"},
    "country" : {"S" : "USA"},
    "email" : {"S" : "Emusk@email.com"},
    "phone number" : {"S" : "123456789"},
    "password" : {"S" : "123456"}
}
ITEM
}

# Insérer les enregistrements de la table 'booking'
resource "aws_dynamodb_table_item" "booking_record1" {
  table_name = aws_dynamodb_table.booking.name
  hash_key   = aws_dynamodb_table.booking.hash_key # Clé de hachage de la table 'booking'

  item = <<ITEM
  {
    "id" : {"N" : "1"},
    "client_id" : {"N" : "1"},
    "car_id" : {"N" : "100"},
    "start_day" : {"S" : "2023-09-06"},
    "end_day" : {"S" : "2023-09-10"}
  }
  ITEM
}

