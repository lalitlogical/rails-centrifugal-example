require 'test_helper'

class SnakeBoardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snake_board = snake_boards(:one)
  end

  test "should get index" do
    get snake_boards_url
    assert_response :success
  end

  test "should get new" do
    get new_snake_board_url
    assert_response :success
  end

  test "should create snake_board" do
    assert_difference('SnakeBoard.count') do
      post snake_boards_url, params: { snake_board: { index: @snake_board.index } }
    end

    assert_redirected_to snake_board_url(SnakeBoard.last)
  end

  test "should show snake_board" do
    get snake_board_url(@snake_board)
    assert_response :success
  end

  test "should get edit" do
    get edit_snake_board_url(@snake_board)
    assert_response :success
  end

  test "should update snake_board" do
    patch snake_board_url(@snake_board), params: { snake_board: { index: @snake_board.index } }
    assert_redirected_to snake_board_url(@snake_board)
  end

  test "should destroy snake_board" do
    assert_difference('SnakeBoard.count', -1) do
      delete snake_board_url(@snake_board)
    end

    assert_redirected_to snake_boards_url
  end
end
