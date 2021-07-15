# README

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
|sex              |integer    |null: false                    |
|height           |integer    |null: false                    |
|weight           |integer    |null: false                    |
|bmi              |integer    |null: false                    |
|step             |integer    |null: false                    |

### Association
- belongs_to :user
- has_many :comments



## commentsテーブル(コメント)

|Column     |Type       |Options                        |
|---------- |---------- |------------------------------ |
|text       |text       |null: false                    |
|user       |references |null: false, foreign_key: true |
|character  |references |null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :character

