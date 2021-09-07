# Cafe-In

## 🌐App URL

### **http://176.32.81.79/**

##  テスト用アカウント
ログインメール：test@test.jp
パスワード：ko1994
##  BASIC認証
ID:kou
パスワード：0726

## ☕️アプリ説明
Cafe-In完全ユーザー登録制のアプリとなっており、ユーザー登録している方のみ使用できます。
自分だけのマイカフェに入っていただきたい！という思いを込めてCafe-Inと名付けました。
新着情報で他ユーザーの投稿が見れたり、条件を絞って検索することができます。
自身が行った喫茶店の情報を発信し他ユーザーのために役立つようにしております。
また、いいねを押せばすぐに閲覧することができ、ランキング機能もあるのでオシャレな喫茶店など投稿して、沢山のユーザーからいいねを貰って1位を目指すのも楽しみの一つとなります。


## ❗️課題解決
オシャレな喫茶店に行きたい方や、勉強や仕事で喫茶店を探している方に使っていただくアプリケーションとなります。
喫茶店に入ってWi-fiがない！コンセントがない！うるさい！といったことで、失敗しないためのアプリケーションとなります。

##  要件定義
ユーザー管理機能
カフェ情報投稿機能
検索機能
お気に入りランキング表示機能
コメント機能

## 実装した機能
### 新規登録/ログイン機能
ユーザー登録していない時の画面になります。
[![Image from Gyazo](https://i.gyazo.com/8c14b459783fde7f9b1db950389c247f.jpg)](https://gyazo.com/8c14b459783fde7f9b1db950389c247f)

新規登録画面
全て記入するとトップページに遷移します。
[![Image from Gyazo](https://i.gyazo.com/bc94328261cb8e68b05bc11f9b481cae.gif)](https://gyazo.com/bc94328261cb8e68b05bc11f9b481cae)

ログイン画面
メールアドレスとパスワードを入力するとトップページへ遷移します。
[![Image from Gyazo](https://i.gyazo.com/0d597caa7b187d554baa64c61abf24ca.gif)](https://gyazo.com/0d597caa7b187d554baa64c61abf24ca)

新規投稿
必須項目は必ず記入し、任意はそのお店に合っている項目をチェックします。
[![Image from Gyazo](https://i.gyazo.com/9e929094a4e5c3c431b984ec741f9422.gif)](https://gyazo.com/9e929094a4e5c3c431b984ec741f9422)


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
