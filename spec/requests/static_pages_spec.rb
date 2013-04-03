require 'spec_helper'

describe "StaticPages" do
  describe "Inicio Page" do

  	before { visit root_path }

    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_index_path
      response.status.should be(200)
    end
  end

  describe "Pedidos Page" do

    before { visit pedidos_path }

    let(:submit) { "Enviar Pedido" }

    describe "Invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(Pedidos, :count)
      end
    end

    describe "Valid information" do
      before do
        fill_in "Nombre",       with: "Nombre Ejemplo"
        fill_in "Correo",       with: "usuario@ejemplo.com"
        fill_in "Telefono",     with: "80000000"
        fill_in "Comentarios", 	with: "Comentario"
      end

      it "should create pedido" do
        expect { click_button submit }.to change(Pedidos, :count).by(1)
      end
    end
  end

end
