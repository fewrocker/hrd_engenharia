require 'test_helper'

class FilesControllerTest < ActionDispatch::IntegrationTest
  test "should get download" do
    get files_download_url
    assert_response :success
  end

end
