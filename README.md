# TimeManagement

## 概要
タスク管理アプリケーションです。<br>
登録したタスクを重要度・緊急度のマトリクス上に表示します。

## 本番環境
URL: https://time-management-app-29316.herokuapp.com/<br>
### テスト用アカウント
- email : test@gmail.com<br>
- password : test1234<br>

## 制作背景
仕事に追われていた数年前の自分の課題を解決するためのアプリケーションを制作しました。
### 課題
- 仕事量が多く、何から手をつければいいのかわからない。
- 効率よく業務をこなせるようになりたい。
### 解決策
- タスクの優先順位を可視化する。

## DEMO
### タスク登録
<img width="1439" alt="create" src="https://user-images.githubusercontent.com/69777273/95440566-1100b180-0994-11eb-8b2f-8e3c16b25c68.png">
タスクを追加するボタンをクリックするとタスク登録画面に遷移します。<br>
入力フォームに、タイトル、説明、重要度、完了期限、所要時間を入力してタスクを登録します。<br>

### タスク表示
<img width="1439" alt="index" src="https://user-images.githubusercontent.com/69777273/95440693-31c90700-0994-11eb-8e85-6249cf326bd5.png">
登録したタスクを一覧表示します。<br>
表示するタスクの配置は、入力された重要度と完了期限に応じて変化します。<br>

### 完了チェック
<img width="1439" alt="check" src="https://user-images.githubusercontent.com/69777273/95440389-dbf45f00-0993-11eb-8fbb-616532f4f261.png">
完了したタスクをクリックするとグレーアウトします。

## 工夫したポイント
### タスク一覧画面
タスクをマトリクス上に表示して優先順位を可視化することが目的なので、ボードに付箋を貼るイメージで直感的にわかりやすい見た目を目指しました。
### 完了チェック機能
業務の進捗管理も可能にするために完了チェック機能を実装しました。<br>
また完了したタスクをグレーアウトさせて、次にどのタスクに取り組むべきか判断しやすいようにしました。

## 開発環境
Ruby / Ruby on Rails / JavaScript / MySQL / GitHub / Heroku / Visual Studio Code / Trello

## テーブル設計
### usesテーブル
| Column | Type | Option |
|--------|------|--------|
| name | string | null:false |
| email | string | null:false |
| password | string | null:false |
#### Association
- has_many :boards
- has_many :tasks

### boardsテーブル
| Column | Type | Option |
|--------|------|--------|
| name | string | null:false |
| user | references | foreign_key:true |
#### Association
- belongs_to :user
- has_many :tasks, dependent: :destroy

### tasksテーブル
| Column | Type | Option |
|--------|------|--------|
| title | string | null:false |
| text | string |  |
| inportance | integer | null:false |
| deadline | date | null:false |
| hour | string | null:false |
| check | boolean | |
| user | references | foreign_key:true |
| board | references | foreign_key:true |
#### Association
- belongs_to :user
- belongs_to :board