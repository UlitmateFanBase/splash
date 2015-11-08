class MarketersController < ApplicationController
  def new
    @user = User.new
  end
end
