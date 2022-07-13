class CreateUnidadeSaudes < ActiveRecord::Migration[6.1]
  def change
    create_table :unidade_saudes do |t|
      t.string :tipo
      t.string :setorAtentimento

      t.timestamps
    end
  end
end
