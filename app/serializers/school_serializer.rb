class SchoolSerializer < ActiveModel::Serializer
  attributes :id,
             :diretoria_regional,
             :municipio,
             :codigo_censo,
             :unidade_escolar,
             :merenda_estadual_federal_saldo_anterior,
             :manuntencao_saldo_anterior,
             :merenda_estadual_federal_receita,
             :manuntencao_receita,
             :merenda_estadual_federal_despesa,
             :manuntencao_despesa,
             :merenda_estadual_federal_saldo_atual,
             :manuntencao_saldo_atual,
             :latitude,
             :longitude
end
