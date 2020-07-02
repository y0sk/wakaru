class FieldsController < ApplicationController

    def index
        @fields = Subject.find(params[:subject_id]).fields
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

    def destroy
    end
    
end
