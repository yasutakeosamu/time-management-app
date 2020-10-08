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
- タスク登録
<img width="1439" alt="create" src="https://user-images.githubusercontent.com/69777273/95440566-1100b180-0994-11eb-8b2f-8e3c16b25c68.png">
タスクを追加するボタンをクリックするとタスク登録画面に遷移します。<br>
入力フォームに、タイトル、説明、重要度、完了期限、所要時間を入力してタスクを登録します。<br>

- タスク表示
<img width="1439" alt="index" src="https://user-images.githubusercontent.com/69777273/95440693-31c90700-0994-11eb-8e85-6249cf326bd5.png">
登録したタスクを一覧表示します。<br>
表示するタスクの配置は、入力された重要度と完了期限に応じて変化します。<br>

- 完了チェック
<img width="1439" alt="check" src="https://user-images.githubusercontent.com/69777273/95440389-dbf45f00-0993-11eb-8fbb-616532f4f261.png">
完了したタスクをクリックするとグレーアウトします。