class ApplicationController < ActionController::API
  include ActionController::Serialization

  def index
    render json: School.all
  end

  def find
    id = params[:id]
    school = School.find(id)
    render json: school
  end

  def findByName
    name = params[:name]
    schools = School.where("unidade_escolar like '%#{ActiveSupport::Inflector.transliterate(name).upcase}%'")
    render json: schools
  end

  def findByExpense
    expense = params[:expense]
    schools = School.having("manuntencao_despesa + merenda_estadual_federal_despesa <= ?", expense).group(:id)
    render json: schools
  end

  def findByIncome
    income = params[:income]
    schools = School.having("manuntencao_receita + merenda_estadual_federal_receita <= ?", income).group(:id)
    render json: schools
  end
end
