class StaticPagesController < ApplicationController
  def home
    @data_array = (1..20).to_a
    @title = "Home"
    respond_to do |format|
      format.html
      format.json do
        sleep 3
        render json: @data_array
      end
    end
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
  end
end
