require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get signup_path
    assert_no_differentce "User.count" do
      post users_path, params: { users:{ name: "",
                                 email: "user@invalid",
                                 password: "foo",
                                 password_confirmation: "foo"}  }
    end
    assert_template 'users/new'
  end
end
