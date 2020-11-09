# Workforce
Lightweight shift creation and assigment management system.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'workforce'
```

And then execute:
```bash
$ bundle
```

## Running Locally
1. add `.env` to root of repo with `POSTGRES_USER` and `POSTGRES_PASSWORD` defined
2. `source .env`
3. `cd spec/dummy`
4. `bundle install`
5. `rails s`


## Run Specs
1. `rails db:create db:migrate RAILS_ENV=test`
2. `bundle exec rspec spec`

## Lint 
code with `rubocop --fix`

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
