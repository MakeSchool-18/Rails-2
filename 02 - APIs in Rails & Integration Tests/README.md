# APIs in Rails & Integration Tests

## Challenges

### Baseline Challenges

**Goal: Sending GET and POST requests to your API**

1. Using the Rails project you pushed live on Wednesday. Make sure there are a few posts in your post database. In the browser, make a `/posts.json` request. What does it return?
1. Add the plugin [JSON View](https://chrome.google.com/webstore/detail/jsonview/chklaanhfefbnpoihckbnefhakgolnmc) to Chrome to view JSON in a pretty way.
1. Open up [Postman](https://www.getpostman.com/). Send the GET request again to `/posts` and to `/posts.json`.
1. Now send a `POST` request to `/posts.json`. What happens? This problem has two parts:
  1. Rails demands having a CRSF Token present in the headers of non-GET HTTP requests. Read this [Rails Security Guide: CSRF](http://guides.rubyonrails.org/security.html#csrf-countermeasures) section to understand CSRF Tokens. Why does Rails have them? Where is the code that manages CSRF token requirements?
  1. You'll have to send some data along with the `POST` request that fits the "strong parameters" that are setup at the bottom of your `posts_controller.rb`
  1. ([SO Question Solution](http://stackoverflow.com/questions/18690196/how-should-i-format-a-json-post-request-to-my-rails-app)) 

**Goal: Manipulating [JBuilder](https://github.com/rails/jbuilder)**

1. If your app's posts does not have comments, add them.
  1. `rails g scaffold comment post:references body:text`
    ```ruby
      # post.rb
      class Post < ApplicationRecord
        has_many :comments
      end
    ```
    ```ruby
      # comment.rb
      class Comment < ApplicationRecord
        belongs_to :post
      end
    ```
  1. Don't forget to run migrations
1. Use your API (with postman) to create a comment on one of your posts.
1. Use ActiveRecord (in the console) to create a comment on one of your posts.
1. Make the JBuilder template for a post include each posts' child comments.
1. Can you make the JBuilder template only include the last 3 comments?

### Stretch Challenges

** Goal: APIs**
1. Review this issue on the rails github repo about RESTful requests to a rails API endpoint needing to be present even on JSON formatted requests. [Issue](https://github.com/rails/rails/issues/3041)
1. Review this [Contributing to Rails Guide](http://guides.rubyonrails.org/contributing_to_ruby_on_rails.html) and make a plan for how you would make Rails ignore CSRF tokens if the a request were `Content-Type = 'application/json'`

** Goal: Testing** 
1. Create a integration test file for minitest called `blog_flow`
  ```bash
    rails g integration_test blog_flow
  ```
1. Add tests for all RESTful routes for your controllers. (Reference: [Testing a Rails API](http://johnmosesman.com/testing-a-rails-api/))

### Extra Stretch Challenges

**API**
1. Follow the [Rails Cast](http://railscasts.com/episodes/350-rest-api-versioning) on making a versioned API and create a RESTful versioned API.
1. Add test coverage for the versioned API.

**Testing**
1. Follow [this tutorial](https://medium.com/@heidar/how-i-test-rails-apps-with-minitest-capybara-and-guard-5e07a6856781#.5mt5b0si6) to add `minitest-reporters` and `guard` to your test suite.
