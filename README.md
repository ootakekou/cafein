# Cafe-In

## 🌐App URL

### **http://176.32.81.79/**

### テスト用アカウント
ログインメール：test@test.jp

パスワード：ko1994
### BASIC認証
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

## 📖要件定義
ユーザー管理機能
カフェ情報投稿機能
検索機能
お気に入りランキング表示機能
コメント機能

## 🛠実装した機能
ユーザー登録していない時の画面になります。
[![Image from Gyazo](https://i.gyazo.com/8c14b459783fde7f9b1db950389c247f.jpg)](https://gyazo.com/8c14b459783fde7f9b1db950389c247f)

### 新規登録画面

全て記入するとトップページに遷移します。
![bc94328261cb8e68b05bc11f9b481cae](https://user-images.githubusercontent.com/87419421/132305981-c1bb5754-fcb1-4102-90ed-0cd3d51f146a.gif)

### ログイン画面

メールアドレスとパスワードを入力するとトップページへ遷移します。
![0d597caa7b187d554baa64c61abf24ca](https://user-images.githubusercontent.com/87419421/132306318-2d6b5a17-68e7-4a4d-9e15-b0cfc5fb1f44.gif)

### 新規投稿
必須項目は必ず記入し、任意はそのお店に合っている項目をチェックします。
![9e929094a4e5c3c431b984ec741f9422](https://user-images.githubusercontent.com/87419421/132306484-95db59df-a227-4c94-a20d-9666d9e52a01.gif)

### 詳細機能
写真をクリックすればお店の情報や住所がわかります。

Googleマップも実装しているのでどの場所かすぐにわかるようになっています。
![641e3ee4197d90dc8131814a303ba5f9](https://user-images.githubusercontent.com/87419421/132306717-3030d809-66ca-469f-aaa7-7196fe69748a.gif)

### 編集機能
間違ってしまっても編集機能で変更することができます。

編集機能と消去機能は投稿したユーザーのみ可能です。
![9e929094a4e5c3c431b984ec741f9422](https://user-images.githubusercontent.com/87419421/132307130-90a967d0-d0a7-4b2a-abac-fb10bf7c3f2d.gif)

### いいね機能
いいねボタンを押すとお気に入り登録することができます。
![dbcad2d844bb7aa1f1b0186af9f8eb7a](https://user-images.githubusercontent.com/87419421/132307413-7b18641d-22fb-4211-bb7b-91502c4f690b.gif)

### いいねした投稿
いいねを押した投稿については「いいねした投稿」で閲覧することができます。
![6d329576a3d2c66a7f757174e38a0531](https://user-images.githubusercontent.com/87419421/132307683-3f6d4c1b-00d3-467b-bb7f-3223ee140b46.gif)

### 検索機能
店名、住所検索とカテゴリー検索があります。
別々で使用することもできますが、場所を絞ってカテゴリーで検索すrこともできます。

・カテゴリー検索
![7b63ec758bd769bade8e809946c05510](https://user-images.githubusercontent.com/87419421/132307832-a4d1600e-f243-40f3-9d9e-337def6aab0c.gif)

・住所とカテゴリー検索
![a0585829b9dc378ff7c44146c448a877](https://user-images.githubusercontent.com/87419421/132307922-c8bb4648-fc07-479a-8066-ebefdde96b25.gif)

### 実装予定の機能
・コメント機能

・フォロー機能

## ER図
[![Image from Gyazo](https://i.gyazo.com/8e66096396d4e6c775be68aa12d014d6.png)](https://gyazo.com/8e66096396d4e6c775be68aa12d014d6)

## ローカルでの動作方法
$ git clone https://github.com/ootakekou/cafein.git

$ cd cafein

$ bundle install

$ rails db:create

$ rails db:migrate

$ rails s

→http://localhost:3000



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
