# AtCoder の解答置き場

## setup

[atcoder-cli](https://github.com/Tatamo/atcoder-cli) を使う。

```bash
# atcoder-cli が依存している
pip install online-judge-tools selenium

# AtCoder にログイン
npx acc login

# ログインステータス確認
npx acc session
```

## コンテストに参加する流れ

```bash
# コンテスト用ディレクトリのセットアップ
# (ディレクトリと contest.acc.json が作成される)
scripts/atc new $contest_id

# コード書く流れ
scripts/atc edit $contest_id $problem_id

# テストケースを走らせる
scripts/atc test $contest_id $problem_id

# 提出
scripts/atc submit $contest_id $problem_id

# コンテスト参加後の PR 作成
scripts/atc create-pr $contest_id
```
