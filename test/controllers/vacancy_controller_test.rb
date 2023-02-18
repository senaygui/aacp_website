require 'test_helper'

class VacancyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vacancy_index_url
    assert_response :success
  end

  test "should get show" do
    get vacancy_show_url
    assert_response :success
  end

end
