## README

## Overview
  Gutty
## Spec
* Language

  Ruby 2.5.1

* DBMS

  MySQL 5.6.43

* VCS

  Git 2.21.0

* Production Enviroment

  Heroke

## Database

### User
|Column|Type|Option|
|------|----|------|
|nicname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|
|age|integer|null: false|
|gender|string|null: false|

has_many :shops
has_many :reviews

### Shop
|Column|Type|Option|
|------|----|------|
|name|string|null: false|
|title|text|null: false|
|address|string|null: false|
|phone_number|string|null: false|
|gender|string|null: false|

has_many :images
has_many :reviews

### Image
|Column|Type|Option|
|------|----|------|
|image|string|null: false|
|shop_id|integer|null: false, foreign_key: true|

belongs_to :shop

### Review
|Column|Type|Option|
|------|----|------|
|rate|float|null: false|
|review|text|null: false|
|shop_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

belongs_to :shop
belongs_to :user