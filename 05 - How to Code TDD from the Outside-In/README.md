# How to Code TDD From the Outside-In

1. Never use `rails g scaffold` ever. EVER.
1. Start with one user story. Create a branch for this user story. We will work on this one user story until it is into a pull request.
1. Begin completing the user story from the "outside in": Open the browser and navigate to the URL of the page you'd like to exist. What error do you receive?
1. Build a route to this url to remove this error. Now what error do you receive?
1. Use the `rails g controller ControllerName action_name` patterned command to generate a controller and the action you are creating. What do you see in the browser now? (This will create an `controller_name_test.rb` file with a basic test. Make sure this controller test is built before continuing.)
1. Edit and minimally style the template and add the data you would like to see e.g. `<%= @posts %>`. Is the data there when you refresh?
1. Add code to your controller to deliver the data you want to the view - e.g. `@posts = Post.all`. Now does your test pass? How does your view look?
1. Use the `rails g model Model attribute:type` patterned command to generate a model and minimal attributes (we'll add more attributes with migrations later). This command will generate a model test file too. We will be adding model tests to this file.
1. As soon as the view looks how you want it to and your controller and model tests are all written and pass. Generally write the tests first then the code.
1. If you are working with someone else, push your branch to remote and create a pull request. Otherwise just checkout master and run `git merge branch-name`. Then push master to heroku and run `heroku open` and feast your eyes on your completed feature!
1. Rinse and repeat until your app is done.
