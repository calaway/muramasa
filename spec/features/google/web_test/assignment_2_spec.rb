require 'spec_helper'
app = AutomationFramework::Application.new
test_name = 'Search Google, Navigate to Wikipedia, & print date'

feature test_name.to_s, sauce: app.sauce do
  scenario test_name.to_s, type: 'acceptance', broken: false, dev: true, qa: true, prod: true do
    app.launch_app(app.url('GOOGLE'))
    app.google_landing_page.enter_search_text('Muramasa')
    app.google_landing_page.click_search

    app.google_landing_page.navigate_to_wikipedia
    expect(current_url).to eq 'https://en.wikipedia.org/wiki/Muramasa:_The_Demon_Blade'

    expect(app.google_landing_page.find_release_date).to eq 'April 9, 2009'

    expect { app.google_landing_page.print_release_date }.to output("April 9, 2009\n").to_stdout

    app.close_all_windows
  end
end
