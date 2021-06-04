# Fundthrough Rubocop Config

Rubocop configuration to share among all Rails projects in Fundthrough.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ft-rubocop-config', github: 'Fundthrough/ft-rubocop-config'
```

And then execute:

    $ bundle

Or install it separately as:

    $ gem install ft-rubocop-config

## Usage

Add these lines to your `.rubocop.yml`:

```yml
# /.rubocop.yml
inherit_gem:
  ft-rubocop-config:
  - rubocop.yml

# Some files define `Exclude` for same cops. To merge the `Exclude` rules, add:
inherit_mode:
  merge:
    - Exclude
```

## Development

After checking out the repo, run `bundle install` to install dependencies.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Fundthrough/ft-rubocop-config.
