/// success : true
/// message : "All data"
/// data : [{"_id":"asdf231asdfadsfsad2438rjsd","on_sale":true,"sale_percent":20,"sold":20,"slider_new":false,"slider_recent":false,"slider_sold":false,"date":"2023-01-05T07: 56: 19.219Z","title":"TMTS121-50199","categories":{"_id":"asdf231asdfadsfsad2438rjsd","type":"Women","sale_percent":20,"date":"2023-01-05T07: 56: 19.219Z","name":"clothes","image":"https: //images.pexels.com/photos/4495705/pexels-photo-4495705.jpeg?auto=compress&cs=tinysrgb&w=1200"},"subcat":{"_id":"asdf231asdfadsfsad2438rjsd","type":"Women","sale_percent":20,"date":"2023-01-05T07: 56: 19.219Z","name":"Shirts"},"shop":{"_id":"asdf231asdfadsfsad2438rjsd","is_active":false,"created_At":"2023-01-05T07: 56: 19.219Z","name":"Shirts","description":"This is enderobe brand","shopemail":"adenreobe@gmail.com","shopaddress":"Islamabad F8","shopcity":"Islamabad","userid":"23asdfasfdsfd","image":"https://images.pexels.com/photos/5531004/pexels-photo-5531004.jpeg?auto=compress&cs=tinysrgb&w=1200"},"price":"2500","sale_title":"Winter Sale","sale_price":"2300","description":"22% off all the sales ","color":"#FF6347,#CD5C5C","size":"S,M,L,XL,XXL","in_wishlist":true,"images":[{"id":"2342asdfasdf34","url":"https://images.pexels.com/photos/19090/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"},{"id":"2342asdfasdf34","url":"https://images.pexels.com/photos/4495705/pexels-photo-4495705.jpeg?auto=compress&cs=tinysrgb&w=1200"},{"id":"2342asdfasdf34","url":"https://images.pexels.com/photos/336372/pexels-photo-336372.jpeg?auto=compress&cs=tinysrgb&w=1200"}]},{"_id":"asdf231asdfadsfsad2438rjsd","on_sale":true,"sale_percent":20,"sold":20,"slider_new":false,"slider_recent":false,"slider_sold":false,"date":"2023-01-05T07: 56: 19.219Z","title":"TMTS121-50199","categories":{"_id":"asdf231asdfadsfsad2438rjsd","type":"Women","sale_percent":20,"date":"2023-01-05T07: 56: 19.219Z","name":"clothes","image":"https: //images.pexels.com/photos/4495705/pexels-photo-4495705.jpeg?auto=compress&cs=tinysrgb&w=1200"},"subcat":{"_id":"asdf231asdfadsfsad2438rjsd","type":"Women","sale_percent":20,"date":"2023-01-05T07: 56: 19.219Z","name":"Shirts"},"shop":{"_id":"asdf231asdfadsfsad2438rjsd","is_active":false,"created_At":"2023-01-05T07: 56: 19.219Z","name":"Shirts","description":"This is enderobe brand","shopemail":"adenreobe@gmail.com","shopaddress":"Islamabad F8","shopcity":"Islamabad","userid":"23asdfasfdsfd","image":"https://images.pexels.com/photos/5531004/pexels-photo-5531004.jpeg?auto=compress&cs=tinysrgb&w=1200"},"price":"2500","sale_title":"Winter Sale","sale_price":"2300","description":"22% off all the sales ","color":"#FF6347,#CD5C5C","size":"S,M,L,XL,XXL","in_wishlist":true,"images":[{"id":"2342asdfasdf34","url":"https://images.pexels.com/photos/19090/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"},{"id":"2342asdfasdf34","url":"https://images.pexels.com/photos/4495705/pexels-photo-4495705.jpeg?auto=compress&cs=tinysrgb&w=1200"},{"id":"2342asdfasdf34","url":"https://images.pexels.com/photos/336372/pexels-photo-336372.jpeg?auto=compress&cs=tinysrgb&w=1200"}]},{"_id":"asdf231asdfadsfsad2438rjsd","on_sale":true,"sale_percent":20,"sold":20,"slider_new":false,"slider_recent":false,"slider_sold":false,"date":"2023-01-05T07: 56: 19.219Z","title":"TMTS121-50199","categories":{"_id":"asdf231asdfadsfsad2438rjsd","type":"Women","sale_percent":20,"date":"2023-01-05T07: 56: 19.219Z","name":"clothes","image":"https: //images.pexels.com/photos/4495705/pexels-photo-4495705.jpeg?auto=compress&cs=tinysrgb&w=1200"},"subcat":{"_id":"asdf231asdfadsfsad2438rjsd","type":"Women","sale_percent":20,"date":"2023-01-05T07: 56: 19.219Z","name":"Shirts"},"shop":{"_id":"asdf231asdfadsfsad2438rjsd","is_active":false,"created_At":"2023-01-05T07: 56: 19.219Z","name":"Shirts","description":"This is enderobe brand","shopemail":"adenreobe@gmail.com","shopaddress":"Islamabad F8","shopcity":"Islamabad","userid":"23asdfasfdsfd","image":"https://images.pexels.com/photos/5531004/pexels-photo-5531004.jpeg?auto=compress&cs=tinysrgb&w=1200"},"price":"2500","sale_title":"Winter Sale","sale_price":"2300","description":"22% off all the sales ","color":"#FF6347,#CD5C5C","size":"S,M,L,XL,XXL","in_wishlist":true,"images":[{"id":"2342asdfasdf34","url":"https://images.pexels.com/photos/19090/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"},{"id":"2342asdfasdf34","url":"https://images.pexels.com/photos/4495705/pexels-photo-4495705.jpeg?auto=compress&cs=tinysrgb&w=1200"},{"id":"2342asdfasdf34","url":"https://images.pexels.com/photos/336372/pexels-photo-336372.jpeg?auto=compress&cs=tinysrgb&w=1200"}]}]

class ProductsModel {
  ProductsModel({
      bool? success, 
      String? message, 
      List<Data>? data,}){
    _success = success;
    _message = message;
    _data = data;
}

  ProductsModel.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  bool? _success;
  String? _message;
  List<Data>? _data;
ProductsModel copyWith({  bool? success,
  String? message,
  List<Data>? data,
}) => ProductsModel(  success: success ?? _success,
  message: message ?? _message,
  data: data ?? _data,
);
  bool? get success => _success;
  String? get message => _message;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// _id : "asdf231asdfadsfsad2438rjsd"
/// on_sale : true
/// sale_percent : 20
/// sold : 20
/// slider_new : false
/// slider_recent : false
/// slider_sold : false
/// date : "2023-01-05T07: 56: 19.219Z"
/// title : "TMTS121-50199"
/// categories : {"_id":"asdf231asdfadsfsad2438rjsd","type":"Women","sale_percent":20,"date":"2023-01-05T07: 56: 19.219Z","name":"clothes","image":"https: //images.pexels.com/photos/4495705/pexels-photo-4495705.jpeg?auto=compress&cs=tinysrgb&w=1200"}
/// subcat : {"_id":"asdf231asdfadsfsad2438rjsd","type":"Women","sale_percent":20,"date":"2023-01-05T07: 56: 19.219Z","name":"Shirts"}
/// shop : {"_id":"asdf231asdfadsfsad2438rjsd","is_active":false,"created_At":"2023-01-05T07: 56: 19.219Z","name":"Shirts","description":"This is enderobe brand","shopemail":"adenreobe@gmail.com","shopaddress":"Islamabad F8","shopcity":"Islamabad","userid":"23asdfasfdsfd","image":"https://images.pexels.com/photos/5531004/pexels-photo-5531004.jpeg?auto=compress&cs=tinysrgb&w=1200"}
/// price : "2500"
/// sale_title : "Winter Sale"
/// sale_price : "2300"
/// description : "22% off all the sales "
/// color : "#FF6347,#CD5C5C"
/// size : "S,M,L,XL,XXL"
/// in_wishlist : true
/// images : [{"id":"2342asdfasdf34","url":"https://images.pexels.com/photos/19090/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"},{"id":"2342asdfasdf34","url":"https://images.pexels.com/photos/4495705/pexels-photo-4495705.jpeg?auto=compress&cs=tinysrgb&w=1200"},{"id":"2342asdfasdf34","url":"https://images.pexels.com/photos/336372/pexels-photo-336372.jpeg?auto=compress&cs=tinysrgb&w=1200"}]

class Data {
  Data({
      String? id, 
      bool? onSale, 
      num? salePercent, 
      num? sold, 
      bool? sliderNew, 
      bool? sliderRecent, 
      bool? sliderSold, 
      String? date, 
      String? title, 
      Categories? categories, 
      Subcat? subcat, 
      Shop? shop, 
      String? price, 
      String? saleTitle, 
      String? salePrice, 
      String? description, 
      String? color, 
      String? size, 
      bool? inWishlist, 
      List<Images>? images,}){
    _id = id;
    _onSale = onSale;
    _salePercent = salePercent;
    _sold = sold;
    _sliderNew = sliderNew;
    _sliderRecent = sliderRecent;
    _sliderSold = sliderSold;
    _date = date;
    _title = title;
    _categories = categories;
    _subcat = subcat;
    _shop = shop;
    _price = price;
    _saleTitle = saleTitle;
    _salePrice = salePrice;
    _description = description;
    _color = color;
    _size = size;
    _inWishlist = inWishlist;
    _images = images;
}

  Data.fromJson(dynamic json) {
    _id = json['_id'];
    _onSale = json['on_sale'];
    _salePercent = json['sale_percent'];
    _sold = json['sold'];
    _sliderNew = json['slider_new'];
    _sliderRecent = json['slider_recent'];
    _sliderSold = json['slider_sold'];
    _date = json['date'];
    _title = json['title'];
    _categories = json['categories'] != null ? Categories.fromJson(json['categories']) : null;
    _subcat = json['subcat'] != null ? Subcat.fromJson(json['subcat']) : null;
    _shop = json['shop'] != null ? Shop.fromJson(json['shop']) : null;
    _price = json['price'];
    _saleTitle = json['sale_title'];
    _salePrice = json['sale_price'];
    _description = json['description'];
    _color = json['color'];
    _size = json['size'];
    _inWishlist = json['in_wishlist'];
    if (json['images'] != null) {
      _images = [];
      json['images'].forEach((v) {
        _images?.add(Images.fromJson(v));
      });
    }
  }
  String? _id;
  bool? _onSale;
  num? _salePercent;
  num? _sold;
  bool? _sliderNew;
  bool? _sliderRecent;
  bool? _sliderSold;
  String? _date;
  String? _title;
  Categories? _categories;
  Subcat? _subcat;
  Shop? _shop;
  String? _price;
  String? _saleTitle;
  String? _salePrice;
  String? _description;
  String? _color;
  String? _size;
  bool? _inWishlist;
  List<Images>? _images;
Data copyWith({  String? id,
  bool? onSale,
  num? salePercent,
  num? sold,
  bool? sliderNew,
  bool? sliderRecent,
  bool? sliderSold,
  String? date,
  String? title,
  Categories? categories,
  Subcat? subcat,
  Shop? shop,
  String? price,
  String? saleTitle,
  String? salePrice,
  String? description,
  String? color,
  String? size,
  bool? inWishlist,
  List<Images>? images,
}) => Data(  id: id ?? _id,
  onSale: onSale ?? _onSale,
  salePercent: salePercent ?? _salePercent,
  sold: sold ?? _sold,
  sliderNew: sliderNew ?? _sliderNew,
  sliderRecent: sliderRecent ?? _sliderRecent,
  sliderSold: sliderSold ?? _sliderSold,
  date: date ?? _date,
  title: title ?? _title,
  categories: categories ?? _categories,
  subcat: subcat ?? _subcat,
  shop: shop ?? _shop,
  price: price ?? _price,
  saleTitle: saleTitle ?? _saleTitle,
  salePrice: salePrice ?? _salePrice,
  description: description ?? _description,
  color: color ?? _color,
  size: size ?? _size,
  inWishlist: inWishlist ?? _inWishlist,
  images: images ?? _images,
);
  String? get id => _id;
  bool? get onSale => _onSale;
  num? get salePercent => _salePercent;
  num? get sold => _sold;
  bool? get sliderNew => _sliderNew;
  bool? get sliderRecent => _sliderRecent;
  bool? get sliderSold => _sliderSold;
  String? get date => _date;
  String? get title => _title;
  Categories? get categories => _categories;
  Subcat? get subcat => _subcat;
  Shop? get shop => _shop;
  String? get price => _price;
  String? get saleTitle => _saleTitle;
  String? get salePrice => _salePrice;
  String? get description => _description;
  String? get color => _color;
  String? get size => _size;
  bool? get inWishlist => _inWishlist;
  List<Images>? get images => _images;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['on_sale'] = _onSale;
    map['sale_percent'] = _salePercent;
    map['sold'] = _sold;
    map['slider_new'] = _sliderNew;
    map['slider_recent'] = _sliderRecent;
    map['slider_sold'] = _sliderSold;
    map['date'] = _date;
    map['title'] = _title;
    if (_categories != null) {
      map['categories'] = _categories?.toJson();
    }
    if (_subcat != null) {
      map['subcat'] = _subcat?.toJson();
    }
    if (_shop != null) {
      map['shop'] = _shop?.toJson();
    }
    map['price'] = _price;
    map['sale_title'] = _saleTitle;
    map['sale_price'] = _salePrice;
    map['description'] = _description;
    map['color'] = _color;
    map['size'] = _size;
    map['in_wishlist'] = _inWishlist;
    if (_images != null) {
      map['images'] = _images?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : "2342asdfasdf34"
/// url : "https://images.pexels.com/photos/19090/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"

class Images {
  Images({
      String? id, 
      String? url,}){
    _id = id;
    _url = url;
}

  Images.fromJson(dynamic json) {
    _id = json['id'];
    _url = json['url'];
  }
  String? _id;
  String? _url;
Images copyWith({  String? id,
  String? url,
}) => Images(  id: id ?? _id,
  url: url ?? _url,
);
  String? get id => _id;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['url'] = _url;
    return map;
  }

}

/// _id : "asdf231asdfadsfsad2438rjsd"
/// is_active : false
/// created_At : "2023-01-05T07: 56: 19.219Z"
/// name : "Shirts"
/// description : "This is enderobe brand"
/// shopemail : "adenreobe@gmail.com"
/// shopaddress : "Islamabad F8"
/// shopcity : "Islamabad"
/// userid : "23asdfasfdsfd"
/// image : "https://images.pexels.com/photos/5531004/pexels-photo-5531004.jpeg?auto=compress&cs=tinysrgb&w=1200"

class Shop {
  Shop({
      String? id, 
      bool? isActive, 
      String? createdAt, 
      String? name, 
      String? description, 
      String? shopemail, 
      String? shopaddress, 
      String? shopcity, 
      String? userid, 
      String? image,}){
    _id = id;
    _isActive = isActive;
    _createdAt = createdAt;
    _name = name;
    _description = description;
    _shopemail = shopemail;
    _shopaddress = shopaddress;
    _shopcity = shopcity;
    _userid = userid;
    _image = image;
}

  Shop.fromJson(dynamic json) {
    _id = json['_id'];
    _isActive = json['is_active'];
    _createdAt = json['created_At'];
    _name = json['name'];
    _description = json['description'];
    _shopemail = json['shopemail'];
    _shopaddress = json['shopaddress'];
    _shopcity = json['shopcity'];
    _userid = json['userid'];
    _image = json['image'];
  }
  String? _id;
  bool? _isActive;
  String? _createdAt;
  String? _name;
  String? _description;
  String? _shopemail;
  String? _shopaddress;
  String? _shopcity;
  String? _userid;
  String? _image;
Shop copyWith({  String? id,
  bool? isActive,
  String? createdAt,
  String? name,
  String? description,
  String? shopemail,
  String? shopaddress,
  String? shopcity,
  String? userid,
  String? image,
}) => Shop(  id: id ?? _id,
  isActive: isActive ?? _isActive,
  createdAt: createdAt ?? _createdAt,
  name: name ?? _name,
  description: description ?? _description,
  shopemail: shopemail ?? _shopemail,
  shopaddress: shopaddress ?? _shopaddress,
  shopcity: shopcity ?? _shopcity,
  userid: userid ?? _userid,
  image: image ?? _image,
);
  String? get id => _id;
  bool? get isActive => _isActive;
  String? get createdAt => _createdAt;
  String? get name => _name;
  String? get description => _description;
  String? get shopemail => _shopemail;
  String? get shopaddress => _shopaddress;
  String? get shopcity => _shopcity;
  String? get userid => _userid;
  String? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['is_active'] = _isActive;
    map['created_At'] = _createdAt;
    map['name'] = _name;
    map['description'] = _description;
    map['shopemail'] = _shopemail;
    map['shopaddress'] = _shopaddress;
    map['shopcity'] = _shopcity;
    map['userid'] = _userid;
    map['image'] = _image;
    return map;
  }

}

/// _id : "asdf231asdfadsfsad2438rjsd"
/// type : "Women"
/// sale_percent : 20
/// date : "2023-01-05T07: 56: 19.219Z"
/// name : "Shirts"

class Subcat {
  Subcat({
      String? id, 
      String? type, 
      num? salePercent, 
      String? date, 
      String? name,}){
    _id = id;
    _type = type;
    _salePercent = salePercent;
    _date = date;
    _name = name;
}

  Subcat.fromJson(dynamic json) {
    _id = json['_id'];
    _type = json['type'];
    _salePercent = json['sale_percent'];
    _date = json['date'];
    _name = json['name'];
  }
  String? _id;
  String? _type;
  num? _salePercent;
  String? _date;
  String? _name;
Subcat copyWith({  String? id,
  String? type,
  num? salePercent,
  String? date,
  String? name,
}) => Subcat(  id: id ?? _id,
  type: type ?? _type,
  salePercent: salePercent ?? _salePercent,
  date: date ?? _date,
  name: name ?? _name,
);
  String? get id => _id;
  String? get type => _type;
  num? get salePercent => _salePercent;
  String? get date => _date;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['type'] = _type;
    map['sale_percent'] = _salePercent;
    map['date'] = _date;
    map['name'] = _name;
    return map;
  }

}

/// _id : "asdf231asdfadsfsad2438rjsd"
/// type : "Women"
/// sale_percent : 20
/// date : "2023-01-05T07: 56: 19.219Z"
/// name : "clothes"
/// image : "https: //images.pexels.com/photos/4495705/pexels-photo-4495705.jpeg?auto=compress&cs=tinysrgb&w=1200"

class Categories {
  Categories({
      String? id, 
      String? type, 
      num? salePercent, 
      String? date, 
      String? name, 
      String? image,}){
    _id = id;
    _type = type;
    _salePercent = salePercent;
    _date = date;
    _name = name;
    _image = image;
}

  Categories.fromJson(dynamic json) {
    _id = json['_id'];
    _type = json['type'];
    _salePercent = json['sale_percent'];
    _date = json['date'];
    _name = json['name'];
    _image = json['image'];
  }
  String? _id;
  String? _type;
  num? _salePercent;
  String? _date;
  String? _name;
  String? _image;
Categories copyWith({  String? id,
  String? type,
  num? salePercent,
  String? date,
  String? name,
  String? image,
}) => Categories(  id: id ?? _id,
  type: type ?? _type,
  salePercent: salePercent ?? _salePercent,
  date: date ?? _date,
  name: name ?? _name,
  image: image ?? _image,
);
  String? get id => _id;
  String? get type => _type;
  num? get salePercent => _salePercent;
  String? get date => _date;
  String? get name => _name;
  String? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['type'] = _type;
    map['sale_percent'] = _salePercent;
    map['date'] = _date;
    map['name'] = _name;
    map['image'] = _image;
    return map;
  }

}