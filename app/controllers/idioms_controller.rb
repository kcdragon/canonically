class IdiomsController < ApplicationController

  def index
    @idioms = Idiom.all
  end

  def show
    @idiom = Idiom.
      includes(implementations: :language).
      find(params[:id])
  end

  def new
  end

  def create
  end
end
