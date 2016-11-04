# APIs in Rails & Integration Tests

## Challenges

### Baseline API Challenges

1. Make a `.json` request to one of your current url endpoints. What does it return?
1. Add the plugin [JSON View](https://chrome.google.com/webstore/detail/jsonview/chklaanhfefbnpoihckbnefhakgolnmc) to Chrome to view JSON.
1. Create a integration test file for minitest called `blog_flow`
  ```bash
    rails g integration_test blog_flow
  ```
1. Add tests for all RESTful routes for your controllers. (Reference: [Testing a Rails API](http://johnmosesman.com/testing-a-rails-api/))

### Baseline Capybara & Shouda Challenges

1. Add Capybara to your project. Add it to your gem file. And add these lines to `test_helper.rb`.

  ```ruby
    ENV['RAILS_ENV'] ||= 'test'
    require File.expand_path('../../config/environment', __FILE__)
    require 'rails/test_help'
    require "capybara/rails" #this one

    class ActiveSupport::TestCase
      fixtures :all
      include Capybara::DSL #this one
    end
  ```
1. Add Capybara's syntactic sugar to `blog_flow`.

### Stretch Testing Challenges

1. Follow [this tutorial](https://medium.com/@heidar/how-i-test-rails-apps-with-minitest-capybara-and-guard-5e07a6856781#.5mt5b0si6) to add `minitest-reporters` and `guard` to your test suite.

### Stretch API Challenges

1. Follow the [Rails Cast](http://railscasts.com/episodes/350-rest-api-versioning) on making a versioned API and create a RESTful versioned API.
1. Add test coverage for the versioned API.
