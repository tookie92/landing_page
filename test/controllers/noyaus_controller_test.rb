require 'test_helper'

class NoyausControllerTest < ActionController::TestCase
  setup do
    @noyau = noyaus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:noyaus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create noyau" do
    assert_difference('Noyau.count') do
      post :create, noyau: { nom: @noyau.nom, parole: @noyau.parole, prenom: @noyau.prenom, role: @noyau.role }
    end

    assert_redirected_to noyau_path(assigns(:noyau))
  end

  test "should show noyau" do
    get :show, id: @noyau
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @noyau
    assert_response :success
  end

  test "should update noyau" do
    patch :update, id: @noyau, noyau: { nom: @noyau.nom, parole: @noyau.parole, prenom: @noyau.prenom, role: @noyau.role }
    assert_redirected_to noyau_path(assigns(:noyau))
  end

  test "should destroy noyau" do
    assert_difference('Noyau.count', -1) do
      delete :destroy, id: @noyau
    end

    assert_redirected_to noyaus_path
  end
end
