class StaticPagesController < ApplicationController

  def home
  end

  def about
  end

  def bmi
    if request.post?
      h = params[:height].to_f / 100
      w = params[:weight].to_f
      @bmi = w / (h * h)
    end
  end

end
