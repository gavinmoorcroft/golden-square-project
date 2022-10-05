require 'present'

RSpec.describe Present do
    context 'when wrapping a present' do
        it 'A present is wrapped' do
            present = Present.new
            wrapped = present.wrap('teddy')
            expect(wrapped).to eq 'teddy'
        end
    end

    context 'we we try and wrap two presents' do
        it 'errors' do 
            present = Present.new
            wrapped = present.wrap('teddy')
            expect {present.wrap('train')}.to raise_error 'A contents has already been wrapped.'
        end
    end

    context 'when we unwrap a present' do
        it 'reveals what is inside' do
            present = Present.new
            wrapped = present.wrap('train')
            unwrapped = wrapped
            expect(unwrapped).to eq 'train' 
        end
    end

    context 'when we unwrap a present that has not been wrapped' do
        it 'errors' do
            present = Present.new
            expect {present.unwrap}.to raise_error 'No contents have been wrapped.'
        end
    end









end
