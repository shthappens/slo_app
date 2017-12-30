require 'test_helper'

class SloAppControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get slo_app_index_url
    assert_response :success
  end

end
