class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
    
  def show
    @movie = Movie.find params[:id]
  end

  def new 
    @movie = Movie.new 
  end
  
  def create 
    @movie = Movie.new(movie_params) 
    if @movie.save 
      redirect_to @movie 
    else 
      render 'new' 
    end 
  end 

   private 
  def movie_params 
    params.permit(:movie) 
  end 

  def show
    @movie = Movie.find params[:id]
  end

end
