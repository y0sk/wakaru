class FieldsController < ApplicationController

    def index
        @subject = Subject.find(params[:subject_id]) 
        @fields = @subject.fields
        
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
