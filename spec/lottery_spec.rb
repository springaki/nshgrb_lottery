require './lottery'

describe Lottery do
	before do
	end

	context 'when winners is empty' do
		lottery = Lottery.new(0)
		it '#winners is 0' do
			lottery.winners.should eq []
		end
	end

	context 'when winners is not empty' do
	end
end

