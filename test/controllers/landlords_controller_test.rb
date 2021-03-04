require "test_helper"

class LandlordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @landlord = landlords(:one)
  end

  test "should get index" do
    get landlords_url
    assert_response :success
  end

  test "should get new" do
    get new_landlord_url
    assert_response :success
  end

  test "should create landlord" do
    assert_difference('Landlord.count') do
      post landlords_url, params: { landlord: { building_id: @landlord.building_id, cell: @landlord.cell, email: @landlord.email, name: @landlord.name } }
    end

    assert_redirected_to landlord_url(Landlord.last)
  end

  test "should show landlord" do
    get landlord_url(@landlord)
    assert_response :success
  end

  test "should get edit" do
    get edit_landlord_url(@landlord)
    assert_response :success
  end

  test "should update landlord" do
    patch landlord_url(@landlord), params: { landlord: { building_id: @landlord.building_id, cell: @landlord.cell, email: @landlord.email, name: @landlord.name } }
    assert_redirected_to landlord_url(@landlord)
  end

  test "should destroy landlord" do
    assert_difference('Landlord.count', -1) do
      delete landlord_url(@landlord)
    end

    assert_redirected_to landlords_url
  end
end
