class CreateIssueKeywords < ActiveRecord::Migration[7.0]
  def change
    create_table :issue_keywords do |t|
      t.references :issue, null: false, foreign_key: true
      t.references :keyword, null: false, foreign_key: true

      t.timestamps
    end
  end
end
