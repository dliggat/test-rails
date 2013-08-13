class AddInspirationalQuotes < ActiveRecord::Migration
  def up
    create_table :inspirational_quotes do |t|
      t.string  :quote
    end

    InspirationalQuote.reset_column_information

    InspirationalQuote.create! quote: "The sun's on the horizon!"
    InspirationalQuote.create! quote: "Buck up, buckaroo!"
    InspirationalQuote.create! quote: "You look fantastic!"
    InspirationalQuote.create! quote: "Cheers!"
  end
end
