class CreateReservas < ActiveRecord::Migration[5.1]
  def change
    create_table :reservas do |t|
      t.integer :servico_id
      t.datetime :dataHora
      t.double :precoTotal

      t.references :cliente
      t.timestamps
    end
  end
end
