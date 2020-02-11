class PublishersController < ApplicationController
  def shops


    @publisher = Publisher.find(params[:id])

  end
end
