class MygamesController < ApplicationController
  def game
    @grid = Array.new(9) { ('A'..'Z').to_a[rand(26)] }
  end

  def score
    @result = 0
    if time > 60.0
      @result = 0
    else
      @result = size * (1.0 - time / 60.0)
    end
  end

  private

  def time
    end_time = Time.now
    start_time = Time.at(params[:start_time].to_i)
    return end_time - start_time

  end

  def size
    return params[:word].size
  end

end
