class AddBodyToTweets < ActiveRecord::Migration[6.0]
  def change
    add_column :tweets, :body, :text
  end
end
