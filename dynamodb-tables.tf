# Créer la table 'brand'
resource "aws_dynamodb_table" "brand" {
  name         = "brand"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id" # Clé de hashage

  attribute {
    name = "id"
    type = "N" # Type Number pour la clé de hashage
  }

}

# Créer la table 'Category'
resource "aws_dynamodb_table" "category" {
  name         = "category"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id" # Clé de Hashage

  attribute {
    name = "id"
    type = "N" # type Number pour la clé ID
  }

}

# Créer la table "car"
resource "aws_dynamodb_table" "car" {
  name         = "car"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"   # Clé de hashage
  range_key    = "name" # Clé de tri

  attribute {
    name = "id"
    type = "N"
  }
  attribute {
    name = "name"
    type = "S"
}

}

# créer la table 'client'
resource "aws_dynamodb_table" "client" {
  name         = "client"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "N"
  }

}

# créer la table 'booking'
resource "aws_dynamodb_table" "booking" {
  name         = "booking"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id" # Clé de hachage

  attribute {
    name = "id"
    type = "N" # Type Number pour la clé de hachage
  }

}

resource "aws_dynamodb_table" "promo" {
  name         = "promo"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "N"
  }

}
