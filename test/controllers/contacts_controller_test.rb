require 'test_helper'

class ContactsControllerTest < ActionController::TestCase

  test "contact page" do
    get :index
    assert_response :success
    assert_select "title", "HandcraftDemo - Contact Us"
  end

end
