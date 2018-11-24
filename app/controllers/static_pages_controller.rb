class StaticPagesController < ApplicationController
  def about
  end

  def contacts
  end

  def help
  end

  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def links
  end

  def sitemap
  end

  def staff
  end
end
