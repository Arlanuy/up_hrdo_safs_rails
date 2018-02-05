require 'test_helper'

class FormsControllerTest < ActionDispatch::IntegrationTest
  test "should get eval_SL" do
    get forms_eval_SL_url
    assert_response :success
  end

  test "should get eval_DSF" do
    get forms_eval_DSF_url
    assert_response :success
  end

  test "should get eval_Sab" do
    get forms_eval_Sab_url
    assert_response :success
  end

  test "should get eval_SD" do
    get forms_eval_SD_url
    assert_response :success
  end

  test "should get eval_EP" do
    get forms_eval_EP_url
    assert_response :success
  end

end
