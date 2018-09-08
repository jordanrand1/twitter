require 'test_helper'

class BiosControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get bios_edit_url
    assert_response :success
  end

  test "should get update" do
    get bios_update_url
    assert_response :success
  end

end
