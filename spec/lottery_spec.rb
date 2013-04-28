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

		describe 'when add' do
			it '#winners is 1 people' do
				@lottery.add('paul', 1)
				@lottery.winners.should eq ['paul']
			end
		end
	end
end

