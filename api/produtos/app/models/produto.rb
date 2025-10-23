class Produto < ApplicationRecord
    validates :nome, presence: { message: "nome não pode ser vazio" }
    validates :preco, presence: { message: "preço não pode ser vazio" },
                    numericality: { greater_than_or_equal_to: 0, message: "preço deve ser um número positivo" }
    validates :descricao, presence: { message: "descrição não pode ser vazia" }

    validate :validar_tamanho_imagem

     private

    def validar_tamanho_imagem
        return if imagem.blank?

        tamanho_bytes = imagem.bytesize

        if tamanho_bytes > 2.megabytes
            errors.add(:imagem, "deve ter no máximo 2MB")
        end
    end
end
