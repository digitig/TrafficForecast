require 'test_helper'

class CountriesControllerTest < ActionController::TestCase
  setup do
    @country = countries(:afg)
    @update = {
        id: 3,
        alpha3: 'ALB',
        alpha2: 'AL',
        iso_name: 'Albania',
        srs_name: 'Albania',
        global_region: 'Europe',
        european_route_markets: 'Other European',
        eu_member: false,
        oecd_member: false,
        un_member: false,
        economy: 'Developing'
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:countries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create country" do
    assert_difference('Country.count') do
      post :create, country: @update
    end

    assert_redirected_to country_path(assigns(:country))
  end

  test "should show country" do
    get :show, id: @country
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @country
    assert_response :success
  end

  test "should update country" do
    patch :update, id: @country, country: @update
    assert_redirected_to country_path(assigns(:country))
  end

  test "should destroy country" do
    assert_difference('Country.count', -1) do
      delete :destroy, id: @country
    end

    assert_redirected_to countries_path
  end
end
