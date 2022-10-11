class CreateCustomshippingrates < ActiveRecord::Migration[7.0]
  def change
    create_table :customshippingrates do |t|
      t.string :nombre_tarifa
      t.string :comuna
      t.string :etiqueta
      t.float :precio

      t.timestamps
    end
  end
end
