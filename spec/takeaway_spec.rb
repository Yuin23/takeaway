require 'takeaway'

describe 'Takeaway' do
	let(:takeaway) {Takeaway.new ({"tuna" => 3, 
								  "salmon" => 2.5, 
								  "seabass" => 3.5,
								  "rice" => 2})}
	it 'should have a menu listing dishes and prices' do 
		expect(takeaway.sushi_menu).to eq ({"tuna" => 3, "salmon" => 2.5, "seabass" => 3.5, "rice" => 2})
	end 

	# Not sure how to test on this.
	# I'm hoping to add item by item to create the oder list,
	# with each item and the quantities accordingly
	it 'should take orders from customers' do 
		takeaway.take_order("rice", 1)
		takeaway.take_order("tuna", 4)
		expect(takeaway.order_list).to include "rice" => 1, "tuna" =>4
		
	end 


	it 'should calculate the total price per order' do 
		takeaway.take_order("rice", 1)
		takeaway.take_order("tuna", 4)
		expect(takeaway.sub_total).to eq 14
	end 


	xit 'should raise an error if the total price is not correct' do 
		# expect(raise_error){}.to raise_error
	end 

	it 'should send text message to the customer, if the total price is correct' do 

	end 




	
end