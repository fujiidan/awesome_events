require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  test "/events/:id ページ表示" do
    event = FactoryBot.create(:event)
    visit event_url(event)
    assert_selector "h1", text: event.name
  end

  test "/events/new ページ表示" do
    sign_in_as(FactoryBot.create(:user))

    visit new_event_url
    assert_selector "h1", text: "イベント作成"
  end
end
