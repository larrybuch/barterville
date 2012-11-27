class ItemsController < ApplicationController
  def index
    @item = Item.all
    @a = @authenticated_user.id.to_s
    @item = Item.where('user_id !=' + @a)
  end

  def new
    @item = Item.new
  end

  def create

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
    item_id = params[:id]
    @item = Item.find(item_id)
  end

  def update

  end

end