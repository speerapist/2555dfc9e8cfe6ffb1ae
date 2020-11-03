module Api
  class RobotsController < ApplicationController
    def create
      @robot = Robot.new
      @params = params[:commands].split.first.split(',')
      @robot.position << @params[1].to_i << @params[2].to_i
      @robot.facing = @params.last
      @command = params[:commands].split.last
      if @command == "MOVE" && @robot.facing == "NORTH"
        @robot.position[1] += 1
      end
      render json: @robot.position, status: :ok
    end
  end
end
