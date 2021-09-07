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
| 機能                        | 目的                                              | 詳細                                  |
| -------------------------- | ------------------------------------------------ | ------------------------------------- |
| ユーザー管理機能        | ユーザー情報を登録し投稿写真とユーザーを紐付けるためです。 | Gemのdeviseを用いてユーザー管理機能を追加する。   |
|カフェ情報投稿機能       | 画像アップロードとテキスト情報、住所をデータベースに保存しAPIを用いてgoogleマップを表示させる。| 投稿画面で写真のアップロード、ドリンク名、カフェの雰囲気とかの情報、チェックボックスの入力、Googleマップの表示を行う。googleマップに関しては住所を入力し自動で生成できるように行う。投稿写真には詳細として入力したものが表示され、投稿者は編集と消去ができる。|
| 投稿詳細機能            | 保存した投稿情報を詳細画面で表示させる。 | DBに保存した値を詳細画面に表示。 |
| 投稿編集機能 | 投稿した情報を編集できる。| 詳細画面から編集ボタンをクリックすると画像の変更店名、内容、住所、チェックボックスの変更ができるようにする。 |
| 投稿消去機能 | 投稿した情報を諸挙できる。| 詳細画面から諸挙ボタンをクリックすると情報が消えトップページへ遷移する。|
| 検索機能 | 検索機能でユーザーが求めているお店を簡単に探すことができる | 検索はお店とチェックボックスを紐付けて表示する |
| いいね機能 | 投稿に対し、いいねを押すことができる。| 気に入った写真や喫茶店の情報をいいねすることができる。|
| いいねした投稿機能 | いいねした投稿を簡単に閲覧することができる。| いいねした投稿ボタンをクリックすると自身がいいねした投稿のみ表示する。|
| いいねランキング表示機能 | お気に入りが多い写真ほど上位に表示される。知らないカフェでも人気になる可能性があることを目的としている。 | お気に入り数が多い写真がブラウザのトップに表示される。|
| コメント機能 |カフェの投稿写真に対してコメントできる。| 投稿写真に対して投稿者へコメントを入力。入力はて入力となる。|





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

編集機能は投稿したユーザーのみ可能です。
![cf75dbbf16ab39e973e170b71f9cd881](https://user-images.githubusercontent.com/87419421/132317708-7dfd2df4-7bed-4c23-90f5-53b2cbe38bfb.gif)

### 消去機能
投稿した内容を消去することができます。

消去機能は投稿したユーザーのみ使用可能です。
![c74f1f1e5bf095481942912b22349770](https://user-images.githubusercontent.com/87419421/132318361-c2d77c4c-7062-439b-97eb-9a945240e450.gif)

### いいね機能
いいねボタンを押すとお気に入り登録することができます。
![dbcad2d844bb7aa1f1b0186af9f8eb7a](https://user-images.githubusercontent.com/87419421/132307413-7b18641d-22fb-4211-bb7b-91502c4f690b.gif)

### いいねした投稿
いいねを押した投稿については「いいねした投稿」で閲覧することができます。
![6d329576a3d2c66a7f757174e38a0531](https://user-images.githubusercontent.com/87419421/132307683-3f6d4c1b-00d3-467b-bb7f-3223ee140b46.gif)

## いいねランキング機能
いいねの総数が高い順に表示されます。
![17eb897284c5f2238143bda117fbe6b4](https://user-images.githubusercontent.com/87419421/132311098-f982e63d-9d96-4732-91ef-98eb6fef1e44.gif)

### 検索機能
店名、住所検索とカテゴリー検索があります。
別々で使用することもできますが、場所を絞ってカテゴリーで検索することもできます。

・カテゴリー検索
![7b63ec758bd769bade8e809946c05510](https://user-images.githubusercontent.com/87419421/132307832-a4d1600e-f243-40f3-9d9e-337def6aab0c.gif)

・住所とカテゴリー検索
![a0585829b9dc378ff7c44146c448a877](https://user-images.githubusercontent.com/87419421/132307922-c8bb4648-fc07-479a-8066-ebefdde96b25.gif)

### 実装予定の機能
・コメント機能

・フォロー機能

・heic拡張子対応機能


## ER図
[![Image from Gyazo](https://i.gyazo.com/d912f276427c81f3ac06f51c8a654612.png)](https://gyazo.com/d912f276427c81f3ac06f51c8a654612)

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
