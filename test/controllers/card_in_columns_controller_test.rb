require 'test_helper'

class CardInColumnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @card_in_column = card_in_columns(:one)
  end

  test "should get index" do
    get card_in_columns_url
    assert_response :success
  end

  test "should get new" do
    get new_card_in_column_url
    assert_response :success
  end

  test "should create card_in_column" do
    assert_difference('CardInColumn.count') do
      post card_in_columns_url, params: { card_in_column: { card_id: @card_in_column.card_id, column_id: @card_in_column.column_id } }
    end

    assert_redirected_to card_in_column_url(CardInColumn.last)
  end

  test "should show card_in_column" do
    get card_in_column_url(@card_in_column)
    assert_response :success
  end

  test "should get edit" do
    get edit_card_in_column_url(@card_in_column)
    assert_response :success
  end

  test "should update card_in_column" do
    patch card_in_column_url(@card_in_column), params: { card_in_column: { card_id: @card_in_column.card_id, column_id: @card_in_column.column_id } }
    assert_redirected_to card_in_column_url(@card_in_column)
  end

  test "should destroy card_in_column" do
    assert_difference('CardInColumn.count', -1) do
      delete card_in_column_url(@card_in_column)
    end

    assert_redirected_to card_in_columns_url
  end
end
