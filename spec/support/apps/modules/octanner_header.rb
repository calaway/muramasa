module Header
  def open_menu
    page.find(:css, "a[id='mobile-nav-link']").click
  end

  def find_all_desktop_menu_items
    page.all(:css, 'ul#main-nav > li > a', visible: :all).map(&:text) - ['SEARCH', '']
  end
end
