class ClubsController < ApplicationController
  
  def index
    @clubs = Club.order(:name)
  end
  
  def show
  end
  
  def new
  end
  
  def edit
  end
  
  def create
  end
  
  def update
  end
  
  def destroy
  end
  
end
