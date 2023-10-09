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
atc init $contest_id

# コード書く流れ
atc edit $contest_id $problem_id

# テストケースを走らせる (edit で開いたエディター内であれば引数省略可能)
atc test $contest_id $problem_id

# 提出 (edit で開いたエディター内であれば引数省略可能)
atc submit $contest_id $problem_id

# コンテスト参加後の PR 作成
atc create-pr $contest_id
```

過去問を解くとき:

```bash
atc edit $problem_url

# エディター内で実行:
atc test
atc submit
```
