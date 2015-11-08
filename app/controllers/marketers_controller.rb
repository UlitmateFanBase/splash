class MarketersController < ApplicationController
  def new
    @user = User.new(marketer: true)
  end
end
