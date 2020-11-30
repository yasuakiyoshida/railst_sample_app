require 'rails_helper.rb'

RSpec.describe "StaticPages", type: :request do
  describe 'Homeページ' do
    context "Homeページがルートに設定されていて正しく表示される" do
      before do
        get root_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
      it 'タイトルが正しく表示されていること' do
        expect(response.body).to include("Ruby on Rails Tutorial Sample App")
      end
    end
  end
  
  describe 'Helpページ' do
    context "helpページが正しく表示される" do
      before do
        get help_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
      it 'タイトルが正しく表示されていること' do
        expect(response.body).to include("Help | Ruby on Rails Tutorial Sample App")
      end
    end
  end
  
  describe 'Aboutページ' do
    context "aboutページが正しく表示される" do
      before do
        get about_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
      it 'タイトルが正しく表示されていること' do
        expect(response.body).to include("About | Ruby on Rails Tutorial Sample App")
      end
    end
  end
  
  describe 'Contactページ' do
    context "contactページが正しく表示される" do
      before do
        get contact_path
      end
      it 'リクエストは200 OKとなること' do
        expect(response.status).to eq 200
      end
      it 'タイトルが正しく表示されていること' do
        expect(response.body).to include("Contact | Ruby on Rails Tutorial Sample App")
      end
    end
  end
end