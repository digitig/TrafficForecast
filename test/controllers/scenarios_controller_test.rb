require 'test_helper'

class ScenariosControllerTest < ActionController::TestCase
  setup do
    @scenario = scenarios(:one)
    @update = {
        name: 'Test case',
        base_year: 2010,
        dom_on_dom: 100,
        dom_on_int: 50,
        min_r2: 0.85,
        el_dom_developed: 1.3,
        el_short_developed: 1.3,
        el_medium_developed: 1.4,
        el_long_developed: 1.5,
        el_ultra_developed: 2.2,
        el_short_developing: 1.8,
        el_medium_developing: 1.8,
        el_long_developing: 2,
        el_ultra_developing: 2.5,
        sat_dom_developed: 2030,
        sat_short_developed: 2030,
        sat_medium_developed: 2030,
        sat_long_developed: 2030,
        sat_ultra_developed: 2030,
        sat_short_developing: 2040,
        sat_medium_developing: 2040,
        sat_long_developing: 2040,
        sat_ultra_developing: 2040,
        optimal_load_factor: 85,
        project_id: 1
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scenarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scenario" do
    assert_difference('Scenario.count') do
      post :create, scenario: @update
    end

    assert_redirected_to scenario_path(assigns(:scenario))
  end

  test "should show scenario" do
    get :show, id: @scenario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scenario
    assert_response :success
  end

  test "should update scenario" do
    patch :update, id: @scenario, scenario: @update
    assert_redirected_to scenario_path(assigns(:scenario))
  end

  test "should destroy scenario" do
    assert_difference('Scenario.count', -1) do
      delete :destroy, id: @scenario
    end

    assert_redirected_to scenarios_path
  end
end
