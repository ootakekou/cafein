## users テーブル

| Column               | Type   | Option            |
| -------------------- | ------ | ----------------- |
| nickname             | string | null: false       |
| encrypted_password   | string | null: false       |
| first_name           | string | null: false       |
| last_name            | string | null: false       |
| first_kana           | string | null: false       |
| last_kana            | string | null: false       |
| email                | string | null: false       |
|birthday              | date   | null: false       |

### Association
-has_many :cafes
-has_many :favorites
-has_many :comments

## cafes テーブル

| Column               | Type      | Option                         |
| -------------------- | --------- | ------------------------------ |
| drink_name           | string    | null: false                    |
| text                 | text      | null: false                    |
| wifi                 | integer   |                                |
| oshare               | integer   |                                |
| shizuka              | integer   |                                |
| concent              | integer   |                                |
| speak                | integer   |                                |
| bright_room          | integer   |                                |
| dark_room            | integer   |                                |
| pet                  | integer   |                                |
| smoke_room           | integer   |                                |
| address              | string    | null: false                    |
| user                 | reference | null: false, foreign_key: true |

### Association
-belongs_to :user
-has_many :favorites
-has_many :comments

## favorites

| Column              | Type      | option                         |
| ------------------- | --------- | ------------------------------ |
| favo                | integer   |                                |
| user                | reference | null: false, foreign_key: true |
| cafe                | reference | null: false, foreign_key: true |

## Association
-belongs_to :user
-belongs_to :cafe

## comments

| Column              | Type      | option                         |
| ------------------- | --------- | ------------------------------ |
| text                | text      |                                |
| user                | reference | null: false, foreign_key: true |
| cafe                | reference | null: false, foreign_key: true |