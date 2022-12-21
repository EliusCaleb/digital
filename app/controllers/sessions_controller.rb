class SessionsController < ApplicationController
   
    def create
        teacher = Teacher.find_by(name: params[:name])
        if teacher&.authenticate(params[:password])
          session[:teacher_id] = teacher.id
          render json: teacher, status: :created
        else
          render json: { error: "Invalid name or password" }, status: :unauthorized
        end
      end

    def destroy
        session.delete :teacher_id
        head :no_content
    end
end
