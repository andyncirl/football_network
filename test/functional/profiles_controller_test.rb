require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, id: user(:andrew).profile_name #sends in profile name to check if success
    assert_response :success
    assert_template 'profiles/show'
  end


  test "should render 404 on a profile not found" do
      get :show, id: "doesn't exist"
    assert_response :not_found
  end

  test "that variables are assigned on successful profile viewing"  do
    get :show, id: users(:andrew).profile_name
    assert assigns(:user)
    assert_not_empty assigns(:statuses)
  end

  test "only shows the correct user's stauses" do
    get :show, :id users(:andrew).profile_name
    assign(:statuses).each do |status|
      assert_equal users(:andrew), status_user
    end
  end

end
