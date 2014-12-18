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

    @list_arts=Art.all.where('category = "Phục hưng"').paginate(:page => params[:page], :per_page => 5)
  end
  def candai
    @phuc_hung=Art.all.where('category = "Phục hưng"').order('created_at DESC').first
    @duong_dai=Art.all.where('category = "Đương đại"').order('created_at DESC').first
    @list_arts_candai=Art.all.where('category = "Cận đại"').paginate(:page => params[:page], :per_page => 5)

  end
  def duongdai
    @phuc_hung=Art.all.where('category = "Phục hưng"').order('created_at DESC').first
    @can_dai=Art.all.where('category = "Cận đại"').order('created_at DESC').first
    @list_arts_duongdai=Art.all.where('category = "Đương đại"').paginate(:page => params[:page], :per_page => 5)
  end
  def single
    @article =Art.find(params[:id])
    if(@article.category=="Phục hưng")
      @list_arts=Art.all.where('category = "Phục hưng"')
    elsif(@article.category=="Cận đại")
      @list_arts=Art.all.where('category = "Cận đại"')
    else
      @list_arts=Art.all.where('category = "Đương đại"')
      end
  end
  def search

  end

  def about

  end
end
