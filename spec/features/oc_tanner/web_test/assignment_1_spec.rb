require 'spec_helper'
app = AutomationFramework::Application.new
test_name = 'Navigate Desktop Menu on OC Tanner Website'

feature test_name.to_s, sauce: app.sauce do
  scenario test_name.to_s, type: 'acceptance', broken: false,
                           dev: true, qa: true, prod: true do

    EXPECTED_DESKTOP_MENU_ITEMS = {
      'WHY APPRECIATE' => 'http://www.octanner.com/why-appreciate.html',
      'PRODUCTS' => 'http://www.octanner.com/products.html',
      'WHY CHOOSE US' => 'http://www.octanner.com/why-choose-us.html',
      'INSIGHTS' => 'http://www.octanner.com/insights.html',
      'INSTITUTE' => 'http://www.octanner.com/institute.html',
      'CLIENTS' => 'http://www.octanner.com/clients.html'
    }.freeze

    app.launch_app(app.url('OCT'))

    # Resizing the window to the "desktop" breakpoint is required to get the text of the menu items
    original_width = current_window.size[0]
    app.resize_window(width: 1100)
    expect(current_window.size[0]).to eq 1100

    desktop_menu_items = app.oct_landing_page.find_all_desktop_menu_items
    expect(desktop_menu_items).to eq EXPECTED_DESKTOP_MENU_ITEMS.keys

    desktop_menu_items.each do |desktop_menu_item|
      page.find('ul#main-nav > li > a', text: desktop_menu_item).click
      expect(current_url).to eq EXPECTED_DESKTOP_MENU_ITEMS[desktop_menu_item]
    end

    # Revert window size so this won't affect other tests
    app.resize_window(width: original_width)
    app.close_all_windows
  end
end
