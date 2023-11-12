class TodosController < ApplicationController
  def index
   @todos = Todo.all
   @todo = Todo.new
  end
   
  def show
    @todo = Todo.find(params[:id])
  end
  
  def edit
    @todo = Todo.find(params[:id])
  end
  
  def update
    todo = Todo.find(params[:id])
    if todo.update(todo_params)
      redirect_to :action => "show", :id => todo.id
    else
      redirect_to :action => "new"
    end
  end
   
 def create
   todo = Todo.new(todo_params)
   if todo.save
    redirect_to :action => "index"
   else
    redirect_to :action => "index"
   end
 end
   
 def destroy
   todo = Todo.find(params[:id])
   todo.destroy
   redirect_to '/todos'
 end

 private
  def todo_params
   params.permit(:text, :grade, :subject, :classroom, :number, :place, :discript, :deadline)
   # params.permit(:text)
  end
  
end
