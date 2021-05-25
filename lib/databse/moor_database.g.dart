// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class PersonData extends DataClass implements Insertable<PersonData> {
  final int id;
  final String name;
  final String address;
  final String mobile;
  PersonData(
      {@required this.id,
      @required this.name,
      @required this.address,
      @required this.mobile});
  factory PersonData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    return PersonData(
      id: const IntType().mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      address: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}address']),
      mobile: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mobile']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || mobile != null) {
      map['mobile'] = Variable<String>(mobile);
    }
    return map;
  }

  PersonCompanion toCompanion(bool nullToAbsent) {
    return PersonCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      mobile:
          mobile == null && nullToAbsent ? const Value.absent() : Value(mobile),
    );
  }

  factory PersonData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PersonData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      address: serializer.fromJson<String>(json['address']),
      mobile: serializer.fromJson<String>(json['mobile']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'address': serializer.toJson<String>(address),
      'mobile': serializer.toJson<String>(mobile),
    };
  }

  PersonData copyWith({int id, String name, String address, String mobile}) =>
      PersonData(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
        mobile: mobile ?? this.mobile,
      );
  @override
  String toString() {
    return (StringBuffer('PersonData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('address: $address, ')
          ..write('mobile: $mobile')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(name.hashCode, $mrjc(address.hashCode, mobile.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PersonData &&
          other.id == this.id &&
          other.name == this.name &&
          other.address == this.address &&
          other.mobile == this.mobile);
}

class PersonCompanion extends UpdateCompanion<PersonData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> address;
  final Value<String> mobile;
  const PersonCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.address = const Value.absent(),
    this.mobile = const Value.absent(),
  });
  PersonCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    @required String address,
    @required String mobile,
  })  : name = Value(name),
        address = Value(address),
        mobile = Value(mobile);
  static Insertable<PersonData> custom({
    Expression<int> id,
    Expression<String> name,
    Expression<String> address,
    Expression<String> mobile,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (address != null) 'address': address,
      if (mobile != null) 'mobile': mobile,
    });
  }

  PersonCompanion copyWith(
      {Value<int> id,
      Value<String> name,
      Value<String> address,
      Value<String> mobile}) {
    return PersonCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      mobile: mobile ?? this.mobile,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (mobile.present) {
      map['mobile'] = Variable<String>(mobile.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PersonCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('address: $address, ')
          ..write('mobile: $mobile')
          ..write(')'))
        .toString();
  }
}

class $PersonTable extends Person with TableInfo<$PersonTable, PersonData> {
  final GeneratedDatabase _db;
  final String _alias;
  $PersonTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _addressMeta = const VerificationMeta('address');
  GeneratedTextColumn _address;
  @override
  GeneratedTextColumn get address => _address ??= _constructAddress();
  GeneratedTextColumn _constructAddress() {
    return GeneratedTextColumn(
      'address',
      $tableName,
      false,
    );
  }

  final VerificationMeta _mobileMeta = const VerificationMeta('mobile');
  GeneratedTextColumn _mobile;
  @override
  GeneratedTextColumn get mobile => _mobile ??= _constructMobile();
  GeneratedTextColumn _constructMobile() {
    return GeneratedTextColumn(
      'mobile',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, address, mobile];
  @override
  $PersonTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'person';
  @override
  final String actualTableName = 'person';
  @override
  VerificationContext validateIntegrity(Insertable<PersonData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address'], _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('mobile')) {
      context.handle(_mobileMeta,
          mobile.isAcceptableOrUnknown(data['mobile'], _mobileMeta));
    } else if (isInserting) {
      context.missing(_mobileMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PersonData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PersonData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PersonTable createAlias(String alias) {
    return $PersonTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $PersonTable _person;
  $PersonTable get person => _person ??= $PersonTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [person];
}
