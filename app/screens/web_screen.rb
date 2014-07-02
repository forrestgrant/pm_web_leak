class WebScreen < PM::WebScreen

  title 'Web Screen'

  def on_load
    # Initialize a large instance var to spike the memory graph
    @data = [*1..1000000]
    1.second.later { close }
  end

  def content
    '<h1>Hello World</h1>'
  end

end
