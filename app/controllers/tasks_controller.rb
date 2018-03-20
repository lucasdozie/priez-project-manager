class TasksController < ApplicationController

  	 def index
	    @title = "Tasks"
	    #@Tasks = Task.order("created_at DESC")
	    @Tasks = Task.where(:status => nil, :project_id => params[:project_id]).order("created_at DESC")
	    @Tasks_sip = Task.where(:status => false, :project_id => params[:project_id])
	    @Tasks_completed = Task.where(status: true, :project_id => params[:project_id])

	    @new_task = Task.new
	  end

	  def create
	  	@task = Task.new(task_params)
	  	if @task.save
	  		# Tell the UserMailer to send a welcome email after save
        	UserMailer.old_welcome_email(@task).deliver_later
	  		redirect_to :action => 'index', :notice => "The task has been successfully updated."
	  		#respond_to do |f|
			#   f.html { #redirect_to projects_index_url }
			#   f.js
		  	#end
	  	else
	  		render action: "index", :notice => "Failed please check your input."
	  	end
	  end

	  def edit
	     @title = "Edit task"
	     @task = Task.find(params[:id])
	  end

	  def update
	    @task = Task.find(params[:id])
	    if @task.update_attributes(task_params)
	      redirect_to :action => 'index', :id => @task
	    else
	      render :action => 'edit'
	    end
	  end

	  def delete
	  	Task.find(params[:id]).destroy
    	redirect_to :action => 'index'
	  end

	  private
	  def task_params
	  	params.require(:task).permit(:title, :description, :duration, :member_id, :status, :project_id)	  	
	  end
end
