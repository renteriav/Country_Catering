class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]

  def index
    @companies = Company.all
  end

  def show
  end

  def new
    @company = Company.new
    @company.telephones.build
    @company.addresses.build
    @selected_state = 'OR'
  end

  def edit
     @selected_state = @company.addresses.first.state unless @company.addresses.empty?
  end

  def create
    @company = Company.new(company_params)

    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, notice: 'Company successfully created.' }
      else
        @selected_state = params[:company][:addresses_attributes].values.first[:state]
        format.html { render action: 'new' }
        if @company.telephones.empty? 
          @company.telephones.build
        end
      end
    end
  end

  def update
    @selected_state = params[:company][:addresses_attributes].values.first[:state]
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: 'Company successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url }
    end
  end

  private
    def set_company
      @company = Company.find(params[:id])
    end

    def company_params
      params.require(:company).permit(:name, 
        telephones_attributes: [ :id, :_destroy, :number ], 
        addresses_attributes: [ :id, :street, :city, :state, :zip, :addressable_id, :addressable_type] )
    end
end
