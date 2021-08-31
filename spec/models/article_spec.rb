require 'rails_helper'

RSpec.describe Article, type: :model do

  it "is valid with attributes" do
    article = Article.create(title: 'test', body: 'test')
    expect(article).to be_valid
  end

  it "returns hola mundo" do
    expect(Article.put_hola_mundo).to eq("Hola Mundo") 
  end
 end
