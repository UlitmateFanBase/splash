class TeamsController < ApplicationController

  def index
    @teams = Team.where(conference_id: params[:conference_id])
  end
end
