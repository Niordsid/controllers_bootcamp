require 'rails_helper'
require 'pry'

RSpec.describe ProductsController do

  describe 'GET index' do
    before do
      Product.create(name: Faker::Lorem.word,
        summary: Faker::Lorem.sentence(word_count: 3),
        price: rand(0.5..200))
    end

    let(:params) { {} } 

    it 'returns all the products' do
      get :index, params: params
      expect(response.status).to eq(200)
    end
  end

  describe 'POST new' do
    # TODO : Generar la logica necesaria para agregar una suite de test 
    # para la accion create del controlador ProducsController
  end
end