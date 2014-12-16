class HomeController < ApplicationController
  def index
      @top_images= Art.all
      @phuc_hung=Art.all.where('category = "Phục hưng"').order('created_at DESC' ).first
      @can_dai=Art.all.where('category = "Cận đại"').order('created_at DESC').first

      @duong_dai=Art.all.where('category = "Đương đại"').order('created_at DESC').first

  end

  def phuchung
    @can_dai=Art.all.where('category = "Cận đại"').order('created_at DESC').first
    @duong_dai=Art.all.where('category = "Đương đại"').order('created_at DESC').first

  end
  def candai
    @phuc_hung=Art.all.where('category = "Phục hưng"').order('created_at DESC').first
    @duong_dai=Art.all.where('category = "Đương đại"').order('created_at DESC').first
  end
  def duongdai
    @phuc_hung=Art.all.where('category = "Phục hưng"').order('created_at DESC').first
    @can_dai=Art.all.where('category = "Cận đại"').order('created_at DESC').first
  end

  def search

  end

  def about

  end
end
