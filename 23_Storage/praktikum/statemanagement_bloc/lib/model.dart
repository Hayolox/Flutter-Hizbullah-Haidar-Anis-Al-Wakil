import 'dart:convert';

class GetContact {
  String name, phoneNumber;

  GetContact({required this.name, required this.phoneNumber});

  factory GetContact.fromJson(Map<String, dynamic> jsonData) {
    return GetContact(
      name: jsonData['name'],
      phoneNumber: jsonData['rating'],
    );
  }

  static Map<String, dynamic> toMap(GetContact contact) => {
        'name': contact.name,
        'rating': contact.phoneNumber,
      };

  static String encode(List<GetContact> contact) => json.encode(
        contact
            .map<Map<String, dynamic>>((contact) => GetContact.toMap(contact))
            .toList(),
      );

  static List<GetContact> decode(String contacts) =>
      (json.decode(contacts) as List<dynamic>)
          .map<GetContact>((item) => GetContact.fromJson(item))
          .toList();
}
