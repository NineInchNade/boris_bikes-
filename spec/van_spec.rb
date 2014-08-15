
require 'van'

class ContainerHolder; include BikeContainer; end 

describe Van do 

	let(:bike)   { Bike.new }
	let(:holder) {ContainerHolder.new }
	let(:van)    {Van.new(:capacity => 20)}

	it "should allow setting default capacity on initializing" do 
		expect(van.capacity).to eq 20 
	end 

end 
