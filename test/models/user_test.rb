require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "a user should enter a first name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:first_name].empty?
  end

  test "a user should enter a last name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:first_name].empty?
  end

  test "a user should enter a profile name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end

  test "a user should have a unique profile name" do
  	user = User.new
  	user.profile_name = "lalala"
  	user.email = "lameduck@aol.com"
  	user.first_name = "adam"
  	user.last_name = "kelm"
  	user.password = "pass"
  	user.password_confirmation = "pass"
  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end

end
