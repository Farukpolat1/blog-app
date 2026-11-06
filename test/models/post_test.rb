require "test_helper"

class PostTest < ActiveSupport::TestCase
  self.use_instantiated_fixtures = false
  self.use_transactional_tests = true

  setup do
    @user = User.create!(
      email: "test@example.com",
      password: "123456",
      password_confirmation: "123456"
    )
  end

  test "başlıksız post kaydedilemez" do
    post = Post.new(body: "bir gövde", user: @user)
    assert_not post.valid?
  end

  test "gövdesiz post kaydedilemez" do
    post = Post.new(title: "bir başlık", user: @user)
    assert_not post.valid?
  end
end
