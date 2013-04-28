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

	context 'when winners is 1 people' do
		before do
			@lottery = Lottery.new(1)
		end

		it '#winners is []' do
			@lottery.winners.should eq []
		end

		describe 'when add 1 people' do
			it '#winners is 1 people' do
				@lottery.add('paul', 1)
				@lottery.winners.should eq ['paul']
			end
		end
	end

	context 'when winners is same people' do
		before do
			@lottery = Lottery.new(3)
			@lottery.add("John", 1)
			@lottery.add("Tom", 2)
			@lottery.add("Bill", 5)
			@lottery.add("Woz", 2)
			@lottery.add("Ken", 10)
		end

		describe 'when add 5 people' do
			it 'John is 1/20 hit' do
				(@lottery.count("John") / @lottery.size.to_f).should be_within(0.03).of(0.07)
			end
		end
	end
end

