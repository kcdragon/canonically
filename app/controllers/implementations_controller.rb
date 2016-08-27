class ImplementationsController < ApplicationController

  def show
    @implementation = Implementation.
      joins(:idiom, :language).
      find(params[:id])
  end
end
