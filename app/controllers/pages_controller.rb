class PagesController < ApplicationController
  
  def index
    render layout: "home"
  end

  def adopting
  end

  def ourdogs
  end

  def ourcats
  end

  def foster
  end

  def aboutus
  end

  def contactus
  end

  def faq
  end

  def donate
  end

  def volunteer
  end

  def events
    @events = Event.all.order(when: :asc)
    @first_future_event = Event.where('"when" >= ?', Date.today).order(:when).first
  end

  def fundraising
  end

  def wishlist
  end

  def wagswiki
  end

  def amazonsmile
  end
end
