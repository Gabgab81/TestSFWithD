class AdvertsController < ApplicationController

  def new
    @advert = Advert.new
  end

  def create
    @advert = Advert.new(advert_params)
    @advert.user = current_user
    @advert.save

    redirect_to root_path(@advert)
  end

  def index
    @advert = Advert.all
  end

  def show 
    
  end
  
  

private
  
  def advert_params
    params.require(:advert).permit(:title, :type_ad, :address, :content)
  end
  

end
