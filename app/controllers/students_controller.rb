class StudentsController < ApplicationController
    
    def index
    end

    def show
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def delete
    end

    private

    def student_params
        params.require(:student).permit(:name, :major, :age, :instructor_id)
    end
end
