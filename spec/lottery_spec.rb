require './lottery'

describe Lottery do

	context 'when winners is empty' do
		before do
			@lottery = Lottery.new(0)
		end

		it '#winners is []' do
			@lottery.winners.should eq []
		end
	end

	context 'when winners is not empty' do
		before do
			@lottery = Lottery.new(1)
		end

		it '#winners is []' do
			@lottery.winners.should eq []
		end
	end
end

