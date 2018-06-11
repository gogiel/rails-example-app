class WorkersController < ApplicationController
  def create
    LazyWorker.perform_async

    redirect_to(request.referer.presence || root_path)
  end
end