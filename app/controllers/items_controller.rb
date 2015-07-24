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

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      flash[:notice] = "Item deleted successuflly!"
    else
      flash[:notice] = "Oops something went wrong, try again please"
    end

    respond_to do |format|
      format.html
      format.js
    end
  end

  def item_params
    params.require(:item).permit(:name)
  end
end
