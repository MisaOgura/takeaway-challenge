class Menu

  MENU = [
          {name: 'sushi', price: 7},
          {name: 'ramen', price: 12},
          {name: 'soup', price: 4.5},
          {name: 'fish and chips', price: 10},
          {name: 'bread', price: 3},
          {name: 'olives', price: 1.5}
          ].freeze

  def show_menu
    menu = ''
    MENU.each {|item| menu << "#{item[:name]}: £#{item[:price]}\n"}
    menu
  end

  def price(dish)
    raise 'Choose dishes in the menu' unless in_menu?(dish)
    MENU.each {|item| return item[:price] if item[:name] == dish[:name]}
  end

  private

  def in_menu?(dish)
    MENU.any? {|item| item[:name] == dish[:name]}
  end
end
