class MoviesController < ApplicationController

  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end

  def show
    id = params[:id] # retrieve movie ID from URI route
    @movie = Movie.find(id) # look up movie by unique ID
    # will render app/views/movies/show.<extension> by default
  end

  def index
    @movies = Movie.all
    @all_ratings = Movie.all_ratings
    @checked_ratings = params[:ratings].nil? ? @all_ratings : params[:ratings].keys
    @sort =   params[:sort_by]
    @sort ||= 'id'   # initialize the sorting
    if @sort == 'title'
      @title_hilite = 'hilite'
      @release_date_hilite = ''  # can be removed, but why?
    elsif @sort == 'release_date'
      @title_hilite = ''          # can be removed, but why?
      @release_date_hilite = 'hilite'
    end
#    @movies = Movie.where(:rating => @checked_ratings).order(params[:sort]) 

    @movies = Movie.where(:rating=>@checked_ratings).order(@sort + ' ASC')


#    @movies = Movie.all
#    @movies = Movie.where('title LIKE (?)', 'A%') #all that start with A
#    @movies = Movie.order('title ASC')  # order(params[:sort])
  end

  def new
    # default: render 'new' template
  end

  def create
    @movie = Movie.create!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end

end
