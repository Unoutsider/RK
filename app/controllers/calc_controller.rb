class CalcController < ApplicationController
  def input
  end

  def output
    v = params[:v].scan(/\d+/).map(&:to_i)
    @result = v
  end
end
