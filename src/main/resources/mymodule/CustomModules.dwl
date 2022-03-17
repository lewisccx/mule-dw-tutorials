fun getOfferPrice(price: Number, discount: Number) = 
	price * (100 - discount) / 100

var vGetOfferPrice = (price: Number, discount: Number) -> price * (100 - discount) / 100