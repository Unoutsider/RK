# frozen_string_literal: true

class CalcController < ApplicationController
  def input; end

  def output
    v = params[:v].scan(/\d+/).map(&:to_i)
    @start = params[:v]
    if v.length < 7
      @result = 'Количество целых чисел в последовательности должно быть как минимум 7!'
      [@result, @start]
    else
      @result1 = processor(v)
      [@result1, @start]
    end
  end

  def processor(arr_1)
    edge = arr_1.minmax
    relation = (Float(edge[0]) / Float(edge[1])).round(5)
    place = arr_1.length % 7
    arr_1[-1 - place] = relation
    arr_1.join(' ')
  end
end
