require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Example User", email: "user@example.com",
                      password: "foobar", password_confirmation: "foobar")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "email validation should valid addresses" do
    valid_adresses = %w[user@example.com]
    valid_adresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test"password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6 
    assert_not @user.valid?
  end

  test"password should have a minimum length" do 
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end
end
