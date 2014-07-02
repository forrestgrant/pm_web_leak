class HomeScreen < PM::TableScreen

  title 'Home'

  def table_data
    [{
      cells: [
        {
          title: 'With NavBar',
          action: :open_web_view,
          arguments: { nav_bar: true }
        },
        {
          title: 'Without NavBar',
          action: :open_web_view,
          arguments: { nav_bar: false }
        }
      ]
    }]
  end

  def open_web_view(args={})
    if args[:nav_bar]
      open_modal WebScreen.new(nav_bar: true)
    else
      open_modal WebScreen.new
    end
  end

end
