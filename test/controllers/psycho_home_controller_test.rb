require 'test_helper'

class PsychoHomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get psycho_home_index_url
    assert_response :success
  end

end
