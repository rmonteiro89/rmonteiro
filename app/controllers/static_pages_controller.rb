class StaticPagesController < ApplicationController

  def home
    @instagram = instagram_recente_media
  end

  private
  def instagram_recente_media
    ::Instagram.user_recent_media("1974526845", {:count => 9})
  rescue
    []
  end
end
