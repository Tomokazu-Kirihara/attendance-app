# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

#### database-design

  ## usersテーブル
  |Column|Type|Options|
  |------|----|-------|
  |email|string|null: false|
  |password|string|null: false|
  |name|string|null: false|
  ### Association
  - has_many :days, throught: :days_users
  - has_many :messages
  - has_many :days_users

  ## daysテーブル
  |Column|Type|Options|
  |------|----|-------|
  |dayname|date|null: false|
  ### Association
  - has_many :users, througt: :days_users
  - has_many :messages
  - has_many :days_users

  ## messagesテーブル
  |Column|Type|Options|
  |------|----|-------|
  |absence|text|null: false|
  |body|text|null: false|
  |user_id|integer|null: false, foreign_key: true|
  |day_id|integer|null: false, foreign_key: true|
  ### Association
  - belongs_to :user
  - belongs_to :day

  ## days_usersテーブル
  |Column|Type|Options|
  |------|----|-------|
  |user_id|integer|null: false, foreign_key: true|
  |day_id|integer|null: false, foreign_key: true|
  ### Association
  - belongs_to :day
  - belongs_to :user