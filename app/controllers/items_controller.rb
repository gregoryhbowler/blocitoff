class ItemsController < ApplicationController
  def create
    @item = current_user.items.create(item_params)
    if @item.save
      flash[:notice] = "New item successfully added to your list."
    else
      flash[:notice] = "Uh oh. There was a problem adding that item to your list."
    end
    redirect_to current_user
  end

  def item_params
    params.require(:item).permit(:name)
  end
end
