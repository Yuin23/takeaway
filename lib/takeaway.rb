require 'bundler/setup'
require 'twilio-ruby'

class Takeaway

 attr_reader :order 

	def initialize(menu)
		@menu = menu
		@order= {}
		@sub_total = 0
	end 

	def sushi_menu
		@menu
	end

	# why @order ={item => quantity}  does not work? 
	def take_order(item, quantity)
		@order[item]= quantity
	end 

	# why sub_total will not work, if I use take_order(item, quantity).each ?
	def order_list
		@order
	end 

	def price_list(item)
		sushi_menu[item]
	end 


	def sub_total
		order_list.each do |item, quantity|
			sub = sushi_menu[item]* quantity
			@sub_total += sub
		end 

		@sub_total
	end 



end 



