require 'test_helper'

class NomesControllerTest < ActionController::TestCase
  setup do
    @nome = nomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nome" do
    assert_difference('Nome.count') do
      post :create, :nome => @nome.attributes
    end

    assert_redirected_to nome_path(assigns(:nome))
  end

  test "should show nome" do
    get :show, :id => @nome.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @nome.to_param
    assert_response :success
  end

  test "should update nome" do
    put :update, :id => @nome.to_param, :nome => @nome.attributes
    assert_redirected_to nome_path(assigns(:nome))
  end

  test "should destroy nome" do
    assert_difference('Nome.count', -1) do
      delete :destroy, :id => @nome.to_param
    end

    assert_redirected_to nomes_path
  end
end
