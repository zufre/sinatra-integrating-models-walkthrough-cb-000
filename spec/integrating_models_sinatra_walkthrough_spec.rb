describe App do

  describe 'GET /' do
    
    it 'sends a 200 status code' do
      get '/'
      expect(last_response.status).to eq(200)
    end

    it 'renders form' do 
      visit '/'
      expect(page).to have_selector("form")
      expect(page).to have_field(:user_text)
    end
  end

  describe 'POST /' do
   it "displays string results" do 
    visit '/'

    fill_in(:user_text, :with => "Green Eggs and Ham")
    click_button "submit"
    expect(page).to have_text("Number of Words:4")
    expect(page).to have_text("Number of Words: 4")
  end

  

  end
end