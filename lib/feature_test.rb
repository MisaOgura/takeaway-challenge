require_relative 'order'
require_relative 'menu'

order1 = Order.new
order1.menu


order1.place_order({name: 'sushi', amount: 5}, 35)
order1.total
