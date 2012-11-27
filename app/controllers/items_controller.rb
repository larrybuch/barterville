class ItemsController < ApplicationController
  def index
    @item = Item.where(params[:user_id] != @authenticated_user.id)
  end

  def new
    @item = Item.new
  end

  def create
    # raise params.inspect
    @item = Item.new(params[:item])
    @item[:user_id] = @authenticated_user.id
    @item.save

    if @item.save
      redirect_to item_path
    else
      render :new
    end
  end

  def edit
  end

  def destroy
  end

  def show
  end

  def update

  end

end