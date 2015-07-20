class ItemsController < ApplicationController
  def create

    @item = current_user.items.build(item_params)

    if @item.save

    flash[:notice] = "new item added to your list."
  else
    flash[:error] = "There was an error adding that item to your list."
    redirect_to user_path
  end
end

  private

  def item_params
    params.require(:item).permit(:body)
  end
end
