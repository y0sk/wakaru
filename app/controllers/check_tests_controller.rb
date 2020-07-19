class CheckTestsController < ApplicationController
    def index
        @check_test_sentences = Field.find(params[:field_id]).check_tests.first.check_test_sentences.all
        @id_of_check_test_sentences = @check_test_sentences.pluck(:id) 
        @check_tests = Field.find(params[:field_id]).check_tests
    end

    def show
        @student = current_student
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
