# Cafe-In

## 🌐App URL

### **http://176.32.81.79/**

## テスト用アカウント
ログインメール：test@test.jp
パスワード：ko1994
## BASIC認証
ID:kou
パスワード：0726


[![Image from Gyazo](https://i.gyazo.com/8c14b459783fde7f9b1db950389c247f.jpg)](https://gyazo.com/8c14b459783fde7f9b1db950389c247f)

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
| birthday             | date   | null: false       |

### Association
-has_many :cafes
-has_many :likes
-has_many :comments

## cafes テーブル

| Column               | Type       | Option                         |
| -------------------- | ---------- | ------------------------------ |
| drink_name           | string     | null: false                    |
| text                 | text       | null: false                    |
| wifi                 | integer    |                                |
| oshare               | integer    |                                |
| shizuka              | integer    |                                |
| concent              | integer    |                                |
| speak                | integer    |                                |
| bright_room          | integer    |                                |
| dark_room            | integer    |                                |
| pet                  | integer    |                                |
| smoke_room           | integer    |                                |
| address              | string     | null: false                    |
| user                 | references | null: false, foreign_key: true |
| latitude             | float      |                                |
| longitude            | float      |                                |

### Association
-belongs_to :user
-has_many :likes
-has_many :comments

## likes

| Column              | Type       | option                         |
| ------------------- | ---------- | ------------------------------ |
| like                | integer    |                                |
| user                | references | null: false, foreign_key: true |
| cafe                | references | null: false, foreign_key: true |

## Association
-belongs_to :user
-belongs_to :cafe

## comments

| Column              | Type       | option                         |
| ------------------- | ---------- | ------------------------------ |
| text                | text       |                                |
| user                | references | null: false, foreign_key: true |
| cafe                | references | null: false, foreign_key: true |
