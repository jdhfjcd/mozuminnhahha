class MozsController < ApplicationController
  def index
    @moz = Moz.all.order(created_at: :desc)
  end

  def new
    @moz = Moz.new
  end

  def create
    @moz = Moz.new(moz_params)

    if @moz.save 
      redirect_to action: 'index'
    else 
      redirect_to action: 'new'
    end
  end

  private
  def moz_params
    params.require(:moz).permit(:mozuku,:nozomi)
  end
end
