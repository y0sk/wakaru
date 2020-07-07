class CheckTestsController < ApplicationController
    def index
        @check_test_sentences = Field.find(params[:field_id]).check_tests.first.check_test_sentences.all
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
