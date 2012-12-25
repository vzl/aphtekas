class MainController < ApplicationController
  def index
    @test = request.remote_ip
  end

  # search product by name
  def search_by_name
    list=[]
    products = Product.where("name LIKE ?", "%#{params[:term]}%").select("id, name")

#    products.each { |product|
#        list << {"label" => product.name}
#    }

    list = products.map {|ui| Hash[ id: ui.id, label: ui.name]}

    respond_to do |format|
        format.json { render :json => list}
    end
  end
  
end




