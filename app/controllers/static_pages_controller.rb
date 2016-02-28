class StaticPagesController < ApplicationController
  def home
    @instagram = ::Instagram.user_recent_media("1974526845", {:count => 9})
  end
end
