class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    if params[:query].present?
      @movies = @movies.where('title iLIKE ?', "%#{params[:query]}%")
    end

    respond_to do |format|
      format.html
      format.text { render partial: 'movies/list', locals: {movies: @movies}, formats: [:html]}
    end
  end
end
