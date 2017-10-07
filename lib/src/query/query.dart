// Copyright (c) 2017, SERAGUD. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

import 'package:showcase_falcor/src/todo_list_service.dart';

String formatJSON(json, [int indent = 0]) =>
    new JsonEncoder.withIndent('  ').convert(json);

@Component(
  selector: 'query',
  styleUrls: const ['query.css'],
  templateUrl: 'query.html',
  directives: const [
    CORE_DIRECTIVES,
    materialDirectives,
  ],
  providers: const [TodoListService],
)
class QueryComponent implements OnInit {
  final TodoListService service;

  final String fieldFilter = '''
todos[:].{
  name,
  done,
}''';

  final String arrayIndex = '''
todos[1]''';

  final String nested = '''
todos[:].{
  name,
  done,
  author[1].{
    name,
  }
}''';

  String output = '';

  QueryComponent(this.service);

  @override
  Future<Null> ngOnInit() async {
    await fetch(fieldFilter);
  }

  bool status = false;

  bool showAllData = false;

  Future fetch(String query) async {
    try {
      final res = await service.model.get(query);
      output = formatJSON(res);
      status = true;
    } catch (e) {
      status = false;
    }
  }

  String get allDataStr => formatJSON(service.model.cache);
}