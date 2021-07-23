# アプリケーション名
Lifelogアプリケーション

## アプリケーション概要
日々の健康管理、主にウォーキングの進捗管理を行うことが出来ます。

## URL
https://lifelog-app-35947.herokuapp.com/

## テスト用アカウント
メールアドレス：asd123@gmail.com
パスワード：asd123

### basic認証
ID:admin
パスワード：2222

## 利用方法
トップページからログインもしくは新規登録して利用します。

## 目指した課題解決
家に居る時間が増え、歩くことすらおざなりになってしまっている人への意識付けを行うことが目的です。
また、他者と交流することで挫折させないようにする狙いがあります。

## 洗い出した要件
ユーザー管理機能
カレンダー（予定入力、コメント）機能
BMI計算機能
チャット機能
目標設定機能

## 実装した機能についての画像やGIFおよびその説明
身長と体重を入力すると自動的にBMIが計算されて表示される機能
[![Image from Gyazo](https://i.gyazo.com/4e42b525f0dfca6388cd1966642e8295.gif)](https://gyazo.com/4e42b525f0dfca6388cd1966642e8295)

日時と内容を入力してコメントするとカレンダーにタイトルが表示され、タイトルをクリックすると内容を確認できる機能
[![Image from Gyazo](https://i.gyazo.com/1b88e9b5f8032fb67fe814dd5faa323b.gif)](https://gyazo.com/1b88e9b5f8032fb67fe814dd5faa323b)

## 実装予定の機能
チャット機能
目標設定機能

## データベース設計
[![Image from Gyazo](https://i.gyazo.com/6fbd0d6c408623d3b0d4705ebe70661a.png)](https://gyazo.com/6fbd0d6c408623d3b0d4705ebe70661a)

## ローカルでの動作方法
% git clone https://github.com/f102ngtyuj/life_log
% cd projects
% cd lifelog_app_35947
% bundle install
% yarn install
% rails db:create
% rails db:migrate
% rails s


## usersテーブル (ユーザー情報)

|Column             |Type   |Options                   |
|------------------ |------ |------------------------- |
|nickname           |string |null: false               |
|email              |string |null: false, unique: true |
|encripted_password |string |null: false               |
|last_name          |string |null: false               |
|first_name         |string |null: false               |
|birthday           |date   |null: false               |

### Association
- has_one :character
- has_many :comments



### charactersテーブル(ユーザーの特徴)

|Column           |Type       |Options                        |
|---------------- |---------- |------------------------------ |
|user             |references |null: false, foreign_key: true |
|sex              |integer    |null: false                    |
|height           |integer    |null: false                    |
|weight           |integer    |null: false                    |

### Association
- belongs_to :user
- has_many :comments



## commentsテーブル(コメント)

|Column     |Type       |Options                        |
|---------- |---------- |------------------------------ |
|title      |string     |null: false                    |
|content    |text       |null: false                    |
|start_time |datetime   |null: false                    |
|step       |integer    |                               |

### Association
- belongs_to :user
- belongs_to :character
