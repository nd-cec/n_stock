require_dependency "n_stock/application_controller"
#Or, alternatively, reference the right constant: class ItemsController < NStock::ApplicationController

module NStock
  class ItemsController < ApplicationController
    before_filter :authenticate_user!
    before_action :set_item, only: [:show, :edit, :update, :destroy]
    before_action :set_user, only: [:index, :show]

    # GET /items
    def index
      #@user = current_user
      @items = Item.all

    end

    # GET /items/1
    def show
    end

    # GET /items/new
    def new
      @item = Item.new
      @user = current_user
      @item.user_id = @user.id
    end

    # GET /items/1/edit
    def edit
    end

    # POST /items
    def create
      @item = Item.new(item_params)
      @user = current_user
      @item.user_id = @user.id

      if @item.save
        redirect_to @item, notice: 'Item was successfully created.'
      else
        render action: 'new'
      end
    end

    # PATCH/PUT /items/1
    def update
      if @item.update(item_params)
        redirect_to @item, notice: 'Item was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /items/1
    def destroy
      @item.destroy
      redirect_to items_url, notice: 'Item was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.

      def set_user
        @user = current_user
      end

      def set_item
        @item = Item.find(params[:id])
       # @item.owner_id = Owner.curent_user.id
      end
      # Only allow a trusted parameter "white list" through.
      def item_params
        params.require(:item).permit(:file_name, :content_type, :file_size)
        
      end

  end
end
