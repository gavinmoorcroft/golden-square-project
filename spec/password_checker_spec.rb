require 'password_checker'

# password equal to 8 characters

RSpec.describe PasswordChecker do
    context 'when passed a password of 8 characters' do
        it 'will return true' do
            pwchecker = PasswordChecker.new
            checked = pwchecker.check('password')
            expect(checked).to eq true
        end
    end


# password greater than 8 characters

    context 'when passed a password greater than 8 characters' do
        it 'will return true' do
            pwchecker = PasswordChecker.new
            checked = pwchecker.check('longpassword')
            expect(checked).to eq true
        end
    end


# password less than 8 charcters.



    context 'when passed a password less than 8 characters' do
        it 'will return error' do
            pwchecker = PasswordChecker.new
            expect{pwchecker.check('short')}.to raise_error "Invalid password, must be 8+ characters."
        end
    end
end