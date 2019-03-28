describe "review creation", type: :feature do
  before do
    visit new_review_path
    fill_in "book_title", with "test"
    select 1, from: "destination_id"
    fill_in "title", with: "Dustwing"
    fill_in "review_body", with: "Abradacus nonexistus adasd sadsa dsada"
    click_button "Submit Review"
  end
