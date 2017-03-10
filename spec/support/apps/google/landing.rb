class GoogleLandingPage < AutomationFramework::Utilities
  include Capybara::DSL

  def enter_search_text(search_text)
    page.fill_in 'lst-ib', with: search_text
  end

  def click_search
    page.click_on 'Search'
  end

  def navigate_to_wikipedia
    page.find(:css, '#rso a', text: 'Muramasa: The Demon Blade - Wikipedia').click
  end

  def find_release_date
    page.find(:css, 'table.infobox.hproduct tr:nth-child(13) td').text.chomp(' [show]')
  end

  def print_release_date
    puts find_release_date
  end
end
