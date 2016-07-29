LIMIT = 20

class FortunesController < ApplicationController
  def index
    if params[:random]
      count = Fortune.count
      position = rand(count)
      fortune = Fortune.offset(position).first
      render json: fortune
    else
      limit = params[:limit] || LIMIT
      start = params[:start] || 0
      fortunes = Fortune.offset(start).limit(limit)
      render json: fortunes
    end
  end

  def show
    fortune = Fortune.find(params[:id])
    render json: fortune
  end
end
