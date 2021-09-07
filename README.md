# Cafe-In

## 🌐App URL

### **http://176.32.81.79/**

## テスト用アカウント
ログインメール：test@test.jp
パスワード：ko1994
## BASIC認証
ID:kou
パスワード：0726

## ☕️アプリ説明
Cafe-In完全ユーザー登録制のアプリとなっており、ユーザー登録している方のみ使用できます。
自分だけのマイカフェに入っていただきたい！という思いを込めてCafe-Inと名付けました。
コーヒーが好きな方やお店の雰囲気が好きな方はもちろん、勉強や仕事で喫茶店に入る方に使っていただくアプリケーションとなります。
喫茶店に入ってWi-fiがない！コンセントがない！うるさい！といったことで、失敗しないための
アプリケーションとなっております。
新着情報で他ユーザーの投稿が見れたり、条件を絞って検索することができます。
また、お気に入りすればすぐに閲覧することができます。


## 課題解決


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
