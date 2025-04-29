class CreateKeywords < ActiveRecord::Migration[8.0]
  def change
    create_table :keywords do |t|
      t.text :word
      t.references :issue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
