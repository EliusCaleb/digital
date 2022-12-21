class TeachersController < ApplicationController
    def create
        teacher = Teacher.create(teacher_params)
        if teacher.valid?
          render json: teacher, status: :created
        else
          render json: { errors: teacher.errors.full_messages }, status: :unprocessable_entity
        end
      end
    
      private
    
    def teacher_params
        params.permit(:name, :email, :password, :password_confirmation)
    end
end
