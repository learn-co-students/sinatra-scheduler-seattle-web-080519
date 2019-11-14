class SchedulesController < ApplicationController

  set :method_override, true

  get '/schedule' do
    @courses = Course.where(on_schedule: true)
    @total_credits = @courses.inject(0) {|sum, course| sum + course.credits}
    erb :'/schedule/index'
  end

  patch '/schedule/:id' do
    @course = Course.find(params[:id])
    @courses = Course.where(on_schedule: true)
    @total_credits = @courses.inject(0) {|sum, course| sum + course.credits}
    if @total_credits + @course.credits <= 15
      @course.update(on_schedule: true)
    end
    redirect to '/schedule'
  end
  
  delete '/schedule/:id/delete' do
    @course = Course.find(params[:id])
    @course.update(on_schedule: false)
    redirect to '/schedule'
  end

end