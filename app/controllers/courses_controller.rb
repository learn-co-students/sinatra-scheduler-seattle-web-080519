class CoursesController < ApplicationController

  get '/courses' do
    @courses = Course.all
    @courses_on_schedule = Course.where(on_schedule: true).pluck(:id)
    erb :'/courses/index'
  end

  get '/courses/new' do
    erb :'/courses/new'
  end

  get '/courses/:id' do
    @course = Course.find(params[:id])
    erb :'/courses/show'
  end

  get '/courses/:id/edit' do
    @course = Course.find(params[:id])
    erb :'/courses/edit'
  end

  post '/courses' do
    @course = Course.find(params[:id])
    @courses.save
    redirect to "/course/#{@course.id}"
  end

  patch '/courses/:id' do
    @course = Course.find(params[:id])
    binding.pry
    @course.update(params[:course])
    redirect to "/course/#{@course.id}"
  end

  delete '/courses/:id/delete' do
    @course = Course.find(params[:id])
    @course.destroy
    erb :'/courses/index'
  end

end