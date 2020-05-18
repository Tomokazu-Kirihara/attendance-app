# README
![出席簿](https://user-images.githubusercontent.com/63994393/82172220-8b0c9d00-9904-11ea-8801-e0414e74a83f.jpeg)

## Name
**== Childendance ==**
<br>child + attendance

## Description
This is Kindergarten attendance book.
<br>You can be contacted for absenteeism.
<br>You don't have to use a paper attendance book.
<br>You can save attendance data to your computer.

## Demo
![1](https://user-images.githubusercontent.com/63994393/82180048-ae424700-991a-11ea-8dda-504e383b9279.gif)
<br>![2](https://user-images.githubusercontent.com/63994393/82180083-c2864400-991a-11ea-8482-22f97c5747d3.gif)
<br>![3](https://user-images.githubusercontent.com/63994393/82180111-d2058d00-991a-11ea-814c-96a73a7f4585.gif)
<br>![4](https://user-images.githubusercontent.com/63994393/82180137-e5185d00-991a-11ea-81f5-9e94e3fce861.gif)

## Requirement
rails 5.0.7.2

## Installation



## database-design
  ### usersテーブル
  |Column|Type|Options|
  |------|----|-------|
  |email|string|null: false|
  |password|string|null: false|
  |name|string|null: false|
  #### Association
  - has_many :days, throught: :days_users
  - has_many :messages
  - has_many :days_users

  ### daysテーブル
  |Column|Type|Options|
  |------|----|-------|
  |dayname|date|null: false|
  |member|text|null: false|
  |absence|text|null: false|
  #### Association
  - has_many :users, througt: :days_users
  - has_many :days_users

  ### messagesテーブル
  |Column|Type|Options|
  |------|----|-------|
  |dayname|date|null: false|
  |absence|text|null: false|
  |body|text|null: false|
  |user_id|integer|null: false, foreign_key: true|
  |day_id|integer|null: false, foreign_key: true|
  #### Association
  - belongs_to :user

  ### days_usersテーブル
  |Column|Type|Options|
  |------|----|-------|
  |user_id|integer|null: false, foreign_key: true|
  |day_id|integer|null: false, foreign_key: true|
  #### Association
  - belongs_to :day
  - belongs_to :user