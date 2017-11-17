# 環境名
set :stage, :production

# RAILS_ENVに設定する値
set :rails_env, :production

role :app, %w{ app@ryozo-infra.xyz }
role :web, %w{ app@ryozo-infra.xyz }
role :db,  %w{ app@ryozo-infra.xyz }
