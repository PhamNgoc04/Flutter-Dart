
class Contact {
  int? id;
  String? name;
  String? phone;
  String? email;
  String? address;
  String? description;

  Contact({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.address,
    this.description,
  });

  // From Map to Contact
  Contact.fromMap(Map<String, dynamic> map) {
    id = map["id"];
    name = map["name"];
    phone = map["phone"];
    email = map["email"];
    address = map["address"];
    description = map["description"];
  }

  // Convert Contact object to Map
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "id": id,
      "name": name,
      "phone": phone,
      "email": email,
      "address": address,
      "description": description,
    };
  }
}
