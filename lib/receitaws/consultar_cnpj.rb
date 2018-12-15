# -*- encoding : utf-8 -*-
module Receitaws
  class ConsultarCnpj < Base

    # Metodo para consultar um CNPJ
    # cnpj: obrigatório, numérico, o CNPJ a ser pesquisado
    # Retonar um obejto do tipo Receitaws::Cnpj
    def self.executar cnpj

      response = self.build_request self.endpoint(cnpj), "get"

      begin
        result = JSON.parse(response.read_body) unless response.nil?
      rescue
        result = nil
      end

      return Receitaws::Cnpj.new(result)

    end

    private

    def self.endpoint cnpj
      return "cnpj/#{cnpj}/days/#{Receitaws.days}"
    end

  end
end
