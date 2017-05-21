# config/deploy.rb

# capistranoのバージョン固定
lock '3.8.1'

# デプロイするアプリケーション名
set :application, "infra-test-app" #ENV['APP_NAME']

# cloneするgitのリポジトリ
set :repo_url, "https://github.com/mktktmr/infra-test-app.git" #ENV['REPO_URL']

# deployするブランチ。デフォルトはmaster
# この記載をすることで bundle exec cap production deploy BRANCH=ブランチ名で特定のブランチをデプロイできるようになる
set :branch, ENV['BRANCH'] || 'master'

# deploy先のディレクトリ。
set :deploy_to, "/var/www/infra-test-app" #'/var/www/' + ENV['APP_NAME']

# シンボリックリンクをはるファイル。(※後述)
set :linked_files, %w(config/secrets.yml config/database.yml .env)

# シンボリックリンクをはるフォルダ。(※後述)
set :linked_dirs, %w(log tmp/pids tmp/cache tmp/sockets)

# 保持するバージョンの個数(※後述)
set :keep_releases, 5

# rubyのバージョン
set :rbenv_ruby, '2.4.1'

# システムワイドにインストールされているRubyを使用する
set :rbenv_type, :system

# デプロイ実行時に出力するログのレベル。
set :log_level, :debug
