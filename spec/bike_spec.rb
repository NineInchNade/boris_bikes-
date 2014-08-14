require 'bike'

 

describe Bike do 

	let(:bike)	{Bike.new}

	context 'at creation' do
		it "is not broken" do 
			expect(bike.broken?).to be false 
		end
	end

  context 'breaking' do
   	it 'is able to break' do 
   		bike.break!
      #we expect the bike to be broken if we break it 
   		expect(bike).to be_broken
   	end 
  end

  context 'fixing' do
  	it 'is able to be fixed' do
  		bike.break!
  		bike.fix!
  		expect(bike.broken?).to be false 
  	end
  end
end