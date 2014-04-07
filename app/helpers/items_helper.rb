module ItemsHelper

	def item_categories
		{ 
			"Food" => "FD", 
			"Drinks" => "DR", 
			"Rentals" => "RT", 
			"Special" => "SP",
			"Extra Labor" => "XL"
		}
	end

	def category_decoder(c)
		if item_categories.has_value? c
			item = item_categories.select{ |name, code| code == c}
			item = item.invert
			category = item[c]
			return category
    	else
    		"Not a Category"
    	end
    end

    def units_select
    	{
    		"oz." => "oz",
    		"lb." => "lb",
    		"fl. oz." => "fl. oz",
    		"gal." => "gal",
    		"each" => "each",
    		"hour" => "hour"
    	}
    end
end
