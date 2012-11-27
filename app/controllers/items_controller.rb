class ItemsController < ApplicationController
  def index
    @item = Item.where('user_id != ?', @authenticated_user.id)
  end

  def new
    @item = Item.new
  end

  def create

    @item = Item.new(params[:item])
    @item[:user_id] = @authenticated_user.id
    @item.save

    if @item.save
      redirect_to items_path
    else
      render :new
    end
  end

  def edit
    item_id = params[:id]
    @item = Item.find(item_id)
  end
   
  def show
    item_id = params[:id]
    @item = Item.find(item_id)
  end

  def update

  end

  def destroy
    item = Item.find(params[:id])
    item.delete
    redirect_to items_path
  end

end