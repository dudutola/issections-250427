class RemoveIssueFromKeywords < ActiveRecord::Migration[7.0]
  def change
    remove_reference :keywords, :issue, null: false, foreign_key: true
  end
end
