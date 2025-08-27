// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FreezedPerson _$$_FreezedPersonFromJson(Map<String, dynamic> json) =>
    _$_FreezedPerson(
      name: json['name'] as String? ?? '',
      age: json['age'] as int? ?? 0,
      hobbies: (json['hobbies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_FreezedPersonToJson(_$_FreezedPerson instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'hobbies': instance.hobbies,
    };

FreezedPerson _$FreezedPersonFromJson(Map<String, dynamic> json) =>
    _$$_FreezedPersonFromJson(json);

JsonPerson _$JsonPersonFromJson(Map<String, dynamic> json) => JsonPerson(
      name: json['name'] as String? ?? '',
      age: json['age'] as int? ?? 0,
      hobbies: (json['hobbies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$JsonPersonToJson(JsonPerson instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'hobbies': instance.hobbies,
    };

_$_DocumentedPerson _$$_DocumentedPersonFromJson(Map<String, dynamic> json) =>
    _$_DocumentedPerson(
      name: json['name'] as String? ?? '',
      age: json['age'] as int? ?? 0,
      hobbies: (json['hobbies'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      email: json['email'] as String?,
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$_DocumentedPersonToJson(
        _$_DocumentedPerson instance) =>
    <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'hobbies': instance.hobbies,
      'email': instance.email,
      'isActive': instance.isActive,
    };

DocumentedPerson _$DocumentedPersonFromJson(Map<String, dynamic> json) =>
    _$$_DocumentedPersonFromJson(json);

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      street: json['street'] as String,
      city: json['city'] as String,
      state: json['state'] as String?,
      postalCode: json['postalCode'] as String?,
      country: json['country'] as String,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'postalCode': instance.postalCode,
      'country': instance.country,
    };

Employee _$EmployeeFromJson(Map<String, dynamic> json) => Employee(
      name: json['name'] as String,
      employeeId: json['employeeId'] as int,
      department: json['department'] as String,
      email: json['email'] as String,
      officeAddress: json['officeAddress'] == null
          ? null
          : Address.fromJson(json['officeAddress'] as Map<String, dynamic>),
      skills: (json['skills'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      yearsOfExperience:
          (json['yearsOfExperience'] as num?)?.toDouble() ?? 0.0,
      isActive: json['isActive'] as bool? ?? true,
      hireDate: DateTime.parse(json['hireDate'] as String),
    );

Map<String, dynamic> _$EmployeeToJson(Employee instance) => <String, dynamic>{
      'name': instance.name,
      'employeeId': instance.employeeId,
      'department': instance.department,
      'email': instance.email,
      'officeAddress': instance.officeAddress?.toJson(),
      'skills': instance.skills,
      'yearsOfExperience': instance.yearsOfExperience,
      'isActive': instance.isActive,
      'hireDate': instance.hireDate.toIso8601String(),
    };

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      productId: json['productId'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      price: (json['price'] as num).toDouble(),
      stockQuantity: json['stockQuantity'] as int? ?? 0,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      isAvailable: json['isAvailable'] as bool? ?? true,
      dimensions: (json['dimensions'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      weight: (json['weight'] as num?)?.toDouble(),
      manufacturer: json['manufacturer'] as String?,
      releaseDate: json['releaseDate'] == null
          ? null
          : DateTime.parse(json['releaseDate'] as String),
      warrantyMonths: json['warrantyMonths'] as int?,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'stockQuantity': instance.stockQuantity,
      'categories': instance.categories,
      'tags': instance.tags,
      'isAvailable': instance.isAvailable,
      'dimensions': instance.dimensions,
      'weight': instance.weight,
      'manufacturer': instance.manufacturer,
      'releaseDate': instance.releaseDate?.toIso8601String(),
      'warrantyMonths': instance.warrantyMonths,
    };

Product _$ProductFromJson(Map<String, dynamic> json) =>
    _$$_ProductFromJson(json);

// **************************************************************************
// SotiSchemaGenerator
// **************************************************************************

const _$FreezedPersonSchema = r'{"$schema":"https://json-schema.org/draft/2020-12/schema","type":"object","properties":{"name":{"type":"string","default":""},"age":{"type":"integer","default":0},"hobbies":{"type":"array","items":{"type":"string"},"default":[]}},"$defs":{}}';

const _$JsonPersonSchema = r'{"$schema":"https://json-schema.org/draft/2020-12/schema","type":"object","properties":{"name":{"type":"string"},"age":{"type":"integer"},"hobbies":{"type":"array","items":{"type":"string"}}},"$defs":{}}';

const _$JsonPersonSchemaMap = <String, dynamic>{
  r'$schema': r'https://json-schema.org/draft/2020-12/schema',
  r'type': r'object',
  r'properties': <String, dynamic>{
    r'name': <String, dynamic>{r'type': r'string'},
    r'age': <String, dynamic>{r'type': r'integer'},
    r'hobbies': <String, dynamic>{
      r'type': r'array',
      r'items': <String, dynamic>{r'type': r'string'}
    }
  },
  r'$defs': <String, dynamic>{}
};

const _$DocumentedPersonSchema = r'{"$schema":"https://json-schema.org/draft/2020-12/schema","type":"object","properties":{"name":{"type":"string","description":"The full name of the person.","default":""},"age":{"type":"integer","description":"The age of the person in years.","default":0},"hobbies":{"type":"array","items":{"type":"string"},"description":"A list of hobbies the person enjoys.","default":[]},"email":{"type":"string","description":"The persons email address."},"isActive":{"type":"boolean","description":"Whether the person is currently active.","default":true}},"$defs":{}}';

const _$AddressSchema = r'{"$schema":"https://json-schema.org/draft/2020-12/schema","type":"object","properties":{"street":{"type":"string","description":"Street address line"},"city":{"type":"string","description":"City name"},"state":{"type":"string","description":"State or province"},"postalCode":{"type":"string","description":"Postal/ZIP code"},"country":{"type":"string","description":"Country name"}},"required":["street","city","country"],"$defs":{}}';

const _$EmployeeSchema = r'{"$schema":"https://json-schema.org/draft/2020-12/schema","type":"object","properties":{"name":{"type":"string","description":"Employees full name"},"employeeId":{"type":"integer","description":"Employee ID number"},"department":{"type":"string","description":"Department name"},"email":{"type":"string","description":"Employees work email"},"officeAddress":{"$ref":"#/$defs/Address"},"skills":{"type":"array","items":{"type":"string"},"description":"List of skills"},"yearsOfExperience":{"type":"number","description":"Years of experience"},"isActive":{"type":"boolean","description":"Is the employee currently active"},"hireDate":{"type":"string","format":"date-time","description":"Hire date"}},"required":["name","employeeId","department","email","hireDate"],"$defs":{"Address":{"type":"object","properties":{"street":{"type":"string","description":"Street address line"},"city":{"type":"string","description":"City name"},"state":{"type":"string","description":"State or province"},"postalCode":{"type":"string","description":"Postal/ZIP code"},"country":{"type":"string","description":"Country name"}},"required":["street","city","country"]}}}';

const _$EmployeeSchemaMap = <String, dynamic>{
  r'$schema': r'https://json-schema.org/draft/2020-12/schema',
  r'type': r'object',
  r'properties': <String, dynamic>{
    r'name': <String, dynamic>{
      r'type': r'string',
      r'description': r"Employee's full name"
    },
    r'employeeId': <String, dynamic>{
      r'type': r'integer',
      r'description': r'Employee ID number'
    },
    r'department': <String, dynamic>{
      r'type': r'string',
      r'description': r'Department name'
    },
    r'email': <String, dynamic>{
      r'type': r'string',
      r'description': r"Employee's work email"
    },
    r'officeAddress': <String, dynamic>{r'$ref': r'#/$defs/Address'},
    r'skills': <String, dynamic>{
      r'type': r'array',
      r'items': <String, dynamic>{r'type': r'string'},
      r'description': r'List of skills'
    },
    r'yearsOfExperience': <String, dynamic>{
      r'type': r'number',
      r'description': r'Years of experience'
    },
    r'isActive': <String, dynamic>{
      r'type': r'boolean',
      r'description': r'Is the employee currently active'
    },
    r'hireDate': <String, dynamic>{
      r'type': r'string',
      r'format': r'date-time',
      r'description': r'Hire date'
    }
  },
  r'required': [r'name', r'employeeId', r'department', r'email', r'hireDate'],
  r'$defs': <String, dynamic>{
    r'Address': <String, dynamic>{
      r'type': r'object',
      r'properties': <String, dynamic>{
        r'street': <String, dynamic>{
          r'type': r'string',
          r'description': r'Street address line'
        },
        r'city': <String, dynamic>{
          r'type': r'string',
          r'description': r'City name'
        },
        r'state': <String, dynamic>{
          r'type': r'string',
          r'description': r'State or province'
        },
        r'postalCode': <String, dynamic>{
          r'type': r'string',
          r'description': r'Postal/ZIP code'
        },
        r'country': <String, dynamic>{
          r'type': r'string',
          r'description': r'Country name'
        }
      },
      r'required': [r'street', r'city', r'country']
    }
  }
};

const _$ProductSchema = r'{"$schema":"https://json-schema.org/draft/2020-12/schema","type":"object","properties":{"productId":{"type":"string","description":"Unique product identifier"},"name":{"type":"string","description":"Product name"},"description":{"type":"string","description":"Product description"},"price":{"type":"number","description":"Price in USD"},"stockQuantity":{"type":"integer","description":"Number of items in stock","default":0},"categories":{"type":"array","items":{"type":"string"},"description":"Product categories","default":[]},"tags":{"type":"array","items":{"type":"string"},"description":"Product tags for search","default":[]},"isAvailable":{"type":"boolean","description":"Is the product available for sale","default":true},"dimensions":{"type":"object","additionalProperties":{"type":"number"},"description":"Product dimensions in centimeters"},"weight":{"type":"number","description":"Product weight in kilograms"},"manufacturer":{"type":"string","description":"Product manufacturer"},"releaseDate":{"type":"string","format":"date-time","description":"Product release date"},"warrantyMonths":{"type":"integer","description":"Product warranty period in months"}},"required":["productId","name","price"],"$defs":{}}';

const _$ProductSchemaMap = <String, dynamic>{
  r'$schema': r'https://json-schema.org/draft/2020-12/schema',
  r'type': r'object',
  r'properties': <String, dynamic>{
    r'productId': <String, dynamic>{
      r'type': r'string',
      r'description': r'Unique product identifier'
    },
    r'name': <String, dynamic>{
      r'type': r'string',
      r'description': r'Product name'
    },
    r'description': <String, dynamic>{
      r'type': r'string',
      r'description': r'Product description'
    },
    r'price': <String, dynamic>{
      r'type': r'number',
      r'description': r'Price in USD'
    },
    r'stockQuantity': <String, dynamic>{
      r'type': r'integer',
      r'description': r'Number of items in stock',
      r'default': 0
    },
    r'categories': <String, dynamic>{
      r'type': r'array',
      r'items': <String, dynamic>{r'type': r'string'},
      r'description': r'Product categories',
      r'default': []
    },
    r'tags': <String, dynamic>{
      r'type': r'array',
      r'items': <String, dynamic>{r'type': r'string'},
      r'description': r'Product tags for search',
      r'default': []
    },
    r'isAvailable': <String, dynamic>{
      r'type': r'boolean',
      r'description': r'Is the product available for sale',
      r'default': true
    },
    r'dimensions': <String, dynamic>{
      r'type': r'object',
      r'additionalProperties': <String, dynamic>{r'type': r'number'},
      r'description': r'Product dimensions in centimeters'
    },
    r'weight': <String, dynamic>{
      r'type': r'number',
      r'description': r'Product weight in kilograms'
    },
    r'manufacturer': <String, dynamic>{
      r'type': r'string',
      r'description': r'Product manufacturer'
    },
    r'releaseDate': <String, dynamic>{
      r'type': r'string',
      r'format': r'date-time',
      r'description': r'Product release date'
    },
    r'warrantyMonths': <String, dynamic>{
      r'type': r'integer',
      r'description': r'Product warranty period in months'
    }
  },
  r'required': [r'productId', r'name', r'price'],
  r'$defs': <String, dynamic>{}
};
