class TasksController < ApplicationController
  def complete
    task = Task.find params[:task_id]
    task.toggle_complete!
    render json: { status: :ok }
  end

  def create
    list = current_user.lists.find params[:list_id]
    task = list.tasks.create! content: params[:task_name]
    render json: task
  end

  def destroy
    list = current_user.lists.find params[:list_id]
    task = list.tasks.find(params[:id]).delete
    render json: { status: :ok }
  end
end