class StaticPagesController < ApplicationController

  def home
    @instagram = instagram_recente_media
  end

  def resume
    send_file(
      "#{Rails.root}/public/resume.pdf",
      filename: 'raphael_monteiro_resume_2016.pdf',
      type: 'application/pdf'
    )
  end

  private
  def instagram_recente_media
    ::Instagram.user_recent_media("1974526845", {:count => 9})
  rescue
    []
  end
end
