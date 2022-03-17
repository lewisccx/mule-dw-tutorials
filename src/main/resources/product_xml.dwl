%dw 2.0
output application/xml
import getOfferPrice as gop , vGetOfferPrice as vgop from mymodule::CustomModules
var product = {
    "productId": 1,
    "name": "Hp Pavilion laptop",
    "description": "Hp Laptop ",
    "originalPrice": 1000,
    "offer": {
      "discountPercentage": 25,
      "offerValidUntil": "2019-06-29"
    },
    "brandName": "HP",
    "images": [
      "image1.jpeg",
      "image2.jpeg",
      "image3.jpeg"
    ]
  }

---

	
product @(pid: product.productId):{
	pname: product.name,
	offer:{
		offerPrice: gop(product.originalPrice, product.offer.discountPercentage),
		vOfferPrice: vgop(product.originalPrice, product.offer.discountPercentage),
		discount: product.offer.discountPercentage
	},
	price: product.originalPrice,
	img1:product.images[0]
}