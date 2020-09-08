
describe 'User' do 
    before do 
        @user = User.create(name: "Pete")
    end

    it 'has a name' do 
        expect(User.find_by(name: "Pete")).to eq(@user)
    end
end