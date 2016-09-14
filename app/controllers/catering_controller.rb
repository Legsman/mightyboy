  class CateringController < ApplicationController

    def new
    @catering = Catering.new
   end

 def create
    @catering = Catering.new(catering_params)
    
    if @catering.valid?
      ContactForm.new_catering(@catering).deliver
      render :new
      flash[:alert] = "Your messages has been sent."
    else
      flash[:alert] = "An error occurred while delivering this message."
      render :new
    end
  end

private

  def catering_params
    params.require(:catering).permit(:name, :email, :message)
  end

end