class Api::EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    render 'index.json.jb'
  end
  def create
    @employee = Employee.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      job_title: params[:job_title],
      department_id: params[:department_id]
    )
    @employee.save
    render 'show.json.jb'
  end
end
