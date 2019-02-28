class AddRatingToProducts < ActiveRecord::Migration[5.2]
  def up
    if table_exists?('spree_products')
      add_column :spree_products, :avg_rating, :decimal, default: 0.0, null: false, precision: 7, scale: 5
      add_column :spree_products, :reviews_count, :integer, default: 0, null: false
    end

    Spree::Product.reset_column_information
    Spree::Product.update_all reviews_count: 0
    Spree::Product.joins(:reviews).where('spree_reviews.id IS NOT NULL').find_each do |p|
      Spree::Product.update_counters p.id, reviews_count: p.reviews.approved.length
      # recalculate_product_rating exists on the review, not the product
      if p.reviews.approved.count > 0
        p.reviews.approved.first.recalculate_product_rating
      end
    end
  end

  def down
    if table_exists?('spree_products')
      remove_column :spree_products, :reviews_count
      remove_column :spree_products, :avg_rating
    end
  end
end