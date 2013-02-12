require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "a user can have a correctly formatted profile name" do
    user = User.new(first_name:'Andrew', last_name: 'Griffith', email 'andyncirl@gmail.com')
    user.password = user.password_confirmation = 'asdfasdf'

    user.profile_name = 'andygriffith'
    assert user.valid?

  end
end
