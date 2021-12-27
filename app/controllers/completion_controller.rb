class CompletionController < ApplicationController
  def create
    todo.complete!
    redirect_to todos_path
  end

  def destroy
    Todo.find_by(id: todo[:id]).update_column :completed_at, nil
    redirect_to todos_path
  end

  private
  def todo
    current_user.todos.find(params[:todo_id])
  end
end