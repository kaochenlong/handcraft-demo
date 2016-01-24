require 'test_helper'

class PostsTest < ActionDispatch::IntegrationTest

  test "加一篇文章" do
    po = posts(:one)

    c1 = Post.count
    post posts_path, post: {title:po.title}
    assert_redirected_to root_path
    assert_equal c1 + 1, Post.count
  end

  test "加一篇文章但是會失敗" do
    c1 = Post.count
    post posts_path, post: {title:''}
    assert_redirected_to root_path
    assert_equal c1, Post.count
  end

end
