class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new
    @school_class.title = params[:school_class][:title]
    @school_class.room_number = params[:school_class][:room_number]
    @school_class.save
    redirect_to @school_class
  end

  def show
    @school_class = SchoolClass.find_by(id: params[:id])
  end

  def edit
    @school_class = SchoolClass.find_by(id: params[:id])
  end

  def update
    @school_class = SchoolClass.find_by(id: params[:id])
    @school_class.update(params[:school_class])
    redirect_to @school_class
  end

end
