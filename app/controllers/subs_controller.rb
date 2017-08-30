class SubsController < ApplicationController

  before_action :require_log_in

  def new
    render :new
  end

  def create
    sub = Sub.new(sub_params)
    sub.owner_id = current_user.id
    if sub.save
      redirect_to sub_url(sub)
    else
      flash[:errors] = sub.errors.full_messages
      render :new
    end
  end

  def destroy
  end

  def show
    @sub = Sub.find(params[:id])
  end

  def edit
    @sub = Sub.find(params[:id])
    render :edit
  end

  def index
    @subs = Sub.all
  end

  def update
    return nil unless current_user.subs.include?(Sub.find(params[:id]))
    sub = Sub.find(params[:id])
    if sub.update_attributes(sub_params)
       redirect_to sub_url(sub)
    else
       flash[:errors] = sub.errors.full_messages
       render :edit
    end
  end

  private
  def sub_params
    params.require(:sub).permit(:title, :description)
  end
end
