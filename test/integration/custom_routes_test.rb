require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /login route opens the login page" do
    get '/login'
    assert_response :success
  end

  test "that /logout route opens the log out page" do
    get '/logout'
    #302 error so we test for redirect
    assert_response :redirect
    #check that redirected to root /
    assert_redirected_to '/'
  end

  test "that /register route opens the sign up page " do
    get '/register'
    assert_response :success
end

end

# to run tests ruby -Itest test/integration/custom_routes_test.rb
