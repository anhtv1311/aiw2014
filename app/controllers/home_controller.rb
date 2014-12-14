class HomeController < ApplicationController
  def index
      @top_images= Art.all
      @phuc_hung=Art.all.where('category = "Phục hưng"').order('created_at DESC' ).first
      @can_dai=Art.all.where('category = "Cận đại"').order('created_at DESC').first

      @duong_dai=Art.all.where('category = "Đương đại"').order('created_at DESC').first

  end

  def categories

  end

  def details

  end

  def search

  end

  def sample
    
  end

  def about

  end
end
