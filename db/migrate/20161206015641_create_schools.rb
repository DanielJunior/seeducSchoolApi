class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.timestamps
      t.string :diretoria_regional
      t.string :municipio
      t.integer :codigo_censo
      t.string :unidade_escolar
      t.float :merenda_estadual_federal_saldo_anterior
      t.float :manuntencao_saldo_anterior
      t.float :merenda_estadual_federal_receita
      t.float :manuntencao_receita
      t.float :merenda_estadual_federal_despesa
      t.float :manuntencao_despesa
      t.float :merenda_estadual_federal_saldo_atual
      t.float :manuntencao_saldo_atual
      t.decimal :latitude
      t.decimal :longitude
    end
  end
end
