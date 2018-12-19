# -*- encoding : utf-8 -*-
module Receitaws
  class Cnpj

    attr_reader :status, :message, :nome, :uf, :telefone, :email, :fantasia, :cnpj, :bairro, :logradouro, :numero, :cep, :municipio, :abertura, :data_situacao, :complemento, :atividades, :cnaes

    def initialize(result=nil)

      if result.nil?
        @status = :error
        @message = "Timeout"
        return self
      end

      if result["status"] == "ERROR"
        @status = :error
        @message = result["message"]
        return self
      end

      @status = :ok
      @nome = result["nome"]
      @uf = result["uf"]
      @telefone = result["telefone"]
      @email = result["email"]
      @fantasia = result["fantasia"]
      @cnpj = result["cnpj"]
      @bairro = result["bairro"]
      @logradouro = result["logradouro"]
      @numero = result["numero"]
      @cep = result["cep"]
      @municipio = result["municipio"]
      @abertura = result["abertura"]
      @data_situacao = result["data_situacao"]
      @situacao = result["situacao"]
      @complemento = result["complemento"]
      @atividades = []
      result["atividade_principal"].each do |atividade|
        @atividades << {code: atividade["code"], text: atividade["text"]}
      end
      result["atividades_secundarias"].each do |atividade|
        @atividades << {code: atividade["code"], text: atividade["text"]}
      end
      @cnaes = @atividades.collect{|a| a[:code].to_s.gsub(/[^0-9A-Za-z]/, '')}

      return self
    end

  end
end
