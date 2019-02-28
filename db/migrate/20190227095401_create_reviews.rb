class CreateOpenReviewsTables < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_reviews do |t|
      t.integer :product_id
      t.integer :user_id, null: true
      t.string :ip_address
      t.string  :name
      t.string  :location
      t.string :locale, default: 'en'
      t.integer :rating
      t.text    :title
      t.text    :review
      t.boolean :approved, default: false
      t.boolean :show_identifier, default: true
      t.timestamps null: false
    end

    create_table :spree_feedback_reviews do |t|
      t.string :locale, default: 'en'
      t.integer :user_id
      t.integer :review_id, null: false
      t.integer :rating,    default: 0
      t.text    :comment
      t.timestamps null: false
    end

    add_index :spree_reviews, :show_identifier
    add_index :spree_feedback_reviews, :review_id
    add_index :spree_feedback_reviews, :user_id
  end
end