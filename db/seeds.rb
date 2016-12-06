# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

CSV.foreach('seeducWithLocations.csv', {:headers => true}) do |row|
  school = School.new
  school.diretoria_regional = row[0]
  school.municipio = row[1]
  school.codigo_censo = row[2]
  school.unidade_escolar = row[3]
  school.merenda_estadual_federal_saldo_anterior = row[4]
  school.manuntencao_saldo_anterior = row[5]
  school.merenda_estadual_federal_receita = row[6]
  school.manuntencao_receita = row[7]
  school.merenda_estadual_federal_despesa = row[8]
  school.manuntencao_despesa = row[9]
  school.merenda_estadual_federal_saldo_atual = row[10]
  school.manuntencao_saldo_atual = row[11]
  school.latitude = BigDecimal.new(row[12])
  school.longitude = BigDecimal.new(row[13])
  school.save!
end