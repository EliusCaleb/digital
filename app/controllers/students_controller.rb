class StudentsController < ApplicationController

    # GET /students
    def index
        students = Student.all
        render json: students
    end
    
      # POST /students
    def create
        student = Student.create(student_params)
        render json: student, status: :created
    end
    
      # GET /students/:id
    def show
        student = find_student
        render json: students_params
    end
    
      # PATCH /students/:id
    def update
        student = find_student
        student.update(student_params)
        render json: student
    end
    
      
    
      # DELETE /birds/:id
    def destroy
        student = find_student
        student.destroy
        head :no_content
    end
    
    private
    
    def find_student
        Student.find(params[:id])
    end
    
    def student_params
        params.permit(:name, :password, :password_confirmation)
    end
    
    def render_not_found_response
        render json: { error: "student not found" }, status: :not_found
    end
   
end
