require "application_system_test_case"

class CardInColumnsTest < ApplicationSystemTestCase
  setup do
    @card_in_column = card_in_columns(:one)
  end

  test "visiting the index" do
    visit card_in_columns_url
    assert_selector "h1", text: "Card In Columns"
  end

  test "creating a Card in column" do
    visit card_in_columns_url
    click_on "New Card In Column"

    fill_in "Card", with: @card_in_column.card_id
    fill_in "Column", with: @card_in_column.column_id
    click_on "Create Card in column"

    assert_text "Card in column was successfully created"
    click_on "Back"
  end

  test "updating a Card in column" do
    visit card_in_columns_url
    click_on "Edit", match: :first

    fill_in "Card", with: @card_in_column.card_id
    fill_in "Column", with: @card_in_column.column_id
    click_on "Update Card in column"

    assert_text "Card in column was successfully updated"
    click_on "Back"
  end

  test "destroying a Card in column" do
    visit card_in_columns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Card in column was successfully destroyed"
  end
end
