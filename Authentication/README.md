# Authentication with Rails

Docs: [has_secure_password](http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html#method-i-has_secure_password)

## Challenges
1. Add a `password_digest` attribute to your `User` model.
2. Add `has_secure_password` to your `User` class in your `user.rb` file where you'd put `has_many...`
3. The following code will create a user with an ecrypted password.
  ```
    @user = User.new(name: 'david', password: 'awesomesauce', password_confirmation: 'awesomesauce')`
    @user.save
  ```
4. Notice that `password_confirmation` is required.
5. Add a model test and validation that makes sure the user password is at least 6 characters long?
6. Create a `current_user` helper method in your application controller. (Hint use the has_secure_password `authenticate` method).

## Stretch Challenges

1. What other stuff goes into authentication?
2. What if users forget their password?
3. What if you want to confirm their email before they are actually signed up?
4. What if you want to have a token
