# README

<h1 align="center">Childendance</h1>

<img width="414" alt="1" src="https://user-images.githubusercontent.com/63994393/82203147-de4f1180-993d-11ea-8f63-f17bf220801f.png">

## 名前の由来
**== Childendance ==**
<br>child（子供） + attendance（出欠簿）
<br>children（子供たち） + dance（踊る）
<br>子供たちの為の出欠簿、そして幼稚園の楽しい雰囲気をイメージして名付けました。

## 機能紹介
・幼稚園の出席簿管理アプリです。
<br>・出欠確認のデータ化が可能です。
<br>・出欠データはインポート出力が可能な為、集計作業等に便利です。
<br>・園児の欠席連絡もデータの送受信により行います。
<br>・幼稚園の教諭/保護者側の双方の時間削減と、ペーパーレス化による費用削減となります。

## 工夫した点
・CSVを利用したデータのインポート化。
<br>・出欠確認の際、ダブルチェックを可能としヒューマンエラーを防止。
<br>・機能の実装は実際に幼稚園の教諭にインタビューを行い設計。

## :paperclip: 主な使用言語
<a><img src="https://user-images.githubusercontent.com/39142850/71774533-1ddf1780-2fb4-11ea-8560-753bed352838.png" width="70px;" /></a> <!-- rubyのロゴ -->
<a><img src="https://user-images.githubusercontent.com/39142850/71774548-731b2900-2fb4-11ea-99ba-565546c5acb4.png" height="60px;" /></a> <!-- RubyOnRailsのロゴ -->
<a><img src="https://user-images.githubusercontent.com/39142850/71774618-b32edb80-2fb5-11ea-9050-d5929a49e9a5.png" height="60px;" /></a> <!-- Hamlのロゴ -->
<a><<img src="https://user-images.githubusercontent.com/39142850/71774644-115bbe80-2fb6-11ea-822c-568eabde5228.png" height="60px" /></a> <!-- Scssのロゴ -->
<a><img src="https://user-images.githubusercontent.com/39142850/71774768-d064a980-2fb7-11ea-88ad-4562c59470ae.png" height="65px;" /></a> <!-- jQueryのロゴ -->

## Demo
（1）ユーザー管理機能：新規登録、ログインが可能です。
<br>![3906aa0404c621a3caa633f045bc82c3](https://user-images.githubusercontent.com/63994393/84658357-b8bf2300-af50-11ea-8e55-ce1412168733.gif)


<br>（2）欠席連絡メッセージ機能：園児の欠席連絡内容を送信し、一覧表示します。
<br>![e9550eb3adf3cd893c352e73950b945e](https://user-images.githubusercontent.com/63994393/84658413-d55b5b00-af50-11ea-8179-1a3e5894ba5c.gif)


<br>（3）出欠管理機能：園児の出欠確認をデータ入力し、それを表示します。
<br>![4548822fcc7b9073046003a6342ca728](https://user-images.githubusercontent.com/63994393/84658502-f58b1a00-af50-11ea-85fb-85fba6fcaa11.gif)


<br>（4）インポート出力機能：データをパソコン内へ保存可能です。
<br>![081c5a95f6e79e8ce4fb719f2c1d335e](https://user-images.githubusercontent.com/63994393/84658562-09cf1700-af51-11ea-9c41-68c0688f0652.gif)

<br>![234a0189b4886ef9e5c0ee5464fb5827](https://user-images.githubusercontent.com/63994393/84658627-210e0480-af51-11ea-9579-1f4a25b319f2.gif)

## Youtube Demo
URL: https://youtu.be/fQT73719Xjg

## :globe_with_meridians: サイトURL紹介
URL: https://childendance.herokuapp.com/users/sign_in
<br>< テストアカウント >
<br>メールアドレス：test@test
<br>パスワード：test1234

## :globe_with_meridians: インストール方法
$ git clone https://github.com/Tomokazu-Kirihara/attendance-app.git
<br>$ cd attendance-app

## :page_facing_up: DB設計
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

  ## 改善の余地
・幼稚園はクラス分けがある為、1つのグループテーブルを作成し、ユーザー（園児）を管理する仕様にする必要があります。
<br>・保護者の園児欠席連絡フォームと日付別データは別ページへそれぞれ遷移、編集や削除機能を設けることでより実用に近くなります。
<br>◇これらの改善はポートフォリオという性質上、ひとつの画面で説明等を実施したいので省略致します。