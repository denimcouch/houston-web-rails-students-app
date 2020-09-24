class InstructorsController < ApplicationController

    def index
        @instructors = Instructor.all
    end

    def show
        @instructor = Instructor.find(params[:id])
    end

    def new
        @instructor = Instructor.new
    end

    def create
        @instructor = Instructor.new(instr_params)
        if !@instructor.valid?
            flash[:errors] = @instructor.errors.full_messages 
            redirect_to new_instructor_path
        else
            @instructor.save
            redirect_to instructor_path(@instructor)
        end
    end

    def edit
        @instructor = Instructor.find(params[:id])
    end

    def update
        @instructor = Instructor.find(params[:id])
        @instructor.update(instr_params)
        if !@instructor.valid?
            flash[:errors] = @instructor.errors.full_messages 
            redirect_to edit_instructor_path(@instructor)
        else
            @instructor.save
            redirect_to instructor_path(@instructor)
        end
    end

    def destroy
        @instructor = Instructor.find(params[:id])
        @instructor.destroy
        redirect_to instructors_path
    end

    private

    def instr_params
        params.require(:instructor).permit(:name)
    end

end
