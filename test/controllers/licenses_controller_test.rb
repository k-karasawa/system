require 'test_helper'

class LicensesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get licenses_new_url
    assert_response :success
  end

end
