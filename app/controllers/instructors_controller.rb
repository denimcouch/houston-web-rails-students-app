class InstructorsController < ApplicationController

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

    def instr_params
        params.require(:instructor).permit(:name)
    end

end
