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
npx acc new $contest_id

cd $contest_id

# 各問用のディレクトリと sample を作成
npx acc add

cd $task_id

# コード書く & 提出
nvim $src_file
npx acc submit $src_file
```
