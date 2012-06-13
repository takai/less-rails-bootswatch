# Less Rails Bootswatch

less-rails-bootswatch is straightforward Bootswatches integration with Rails.
This gem depends on following:

* less-rails-bootstrap https://github.com/metaskills/less-rails-bootstrap
* bootswatch http://bootswatch.com/

## Installation

Add this lines to your application's Gemfile:

```ruby
group :assets do
  gem 'therubyracer'
  gem 'less-rails'
  gem 'less-rails-bootstrap'
  gem 'less-rails-bootswatch'
end
```

And then execute:

```
$ bundle
```

## Usage

Add this line to your LESS file:

```css
@import "twitter/bootstrap";
@import "bootswatch/cerulean/bootswatch";
@import "bootswatch/cerulean/variables";
```
