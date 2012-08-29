class TagsController < ApplicationController

  def index
  	@tags =Tag.all
  end

  def show
  	@tag = Tag.find(params[:id])
  end
  def destroy
  	@tag=Tag.find(params[:id])
		if @tag.delete
			flash[:message]="Hurrey! your comment is deleted"
		redirect_to :action=>'index'
	else
		render 'index'
	end
end
end