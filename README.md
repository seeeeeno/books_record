# Book-records

## 概要
読書記録アプリ
## 実装機能
* ログイン機能
* プロフィール画像の登録
* 書籍情報の登録、編集、削除
* 全ユーザーの登録した本の閲覧ができる
* マイページで自身の登録した本のみ閲覧できる
* 星5つで、本の評価ができる
## 本番環境
* URL https://book-records5232.herokuapp.com/
* テストアカウント
  - ユーザー名: 次郎
  - パスワード: 111111
## 制作背景
私自身が読書が好きで、読書記録ノートを作成しアナログで管理していました。
既に読書記録アプリは多数リリースされていますが、私が記録したい読書期間を管理できるものがありませんでした。そこで、自身で作成しようと思いつきました。
## 使用技術(開発環境)
Haml/SCSS/Ruby/Ruby on Rails/GitHub
## 今後実装したい機能
* 1日に読んだページ数の記録
* 本のカテゴリを登録できる
* 高く評価した本が、どのカテゴリに多くあるか(相性の良いカテゴリを発見できる)
* または、作者毎に平均評価を表示できる(好きな作家の発見)
## DB設計
### usersテーブル
|Column|Type|Option|
|------|----|------|
|email|string|null: false|
|password|string|null: false|
|name|string||
|profileimage|string||
#### Association
* has_many :books
### booksテーブル
|Column|Type|Option|
|------|----|------|
|title|string||
|author|string||
|page|integer||
|publisher|string||
|started_at|date||
|finished_at|date||
|evaluation|integer||
|impression|text||
|user_id|integer|foreign_key: true|
#### Association
* belongs_to :user