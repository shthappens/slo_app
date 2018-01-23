class SloAppController < ApplicationController

  def index
  end

  def new
    @teacher = user.current
  end

end
