// Copyright (c) 2017, SERAGUD. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:angular/core.dart';
import 'package:jaguar_falcor/jaguar_falcor.dart';

/// Mock service emulating access to a to-do list stored on a server.
@Injectable()
class TodoListService {
  final Model model = new Model(cache: <String, dynamic>{
    'todos': [
      {
        'id': 0,
        'name': 'Implement parser',
        'done': false,
        'author': [
          {
            'name': 'teja',
            'email': 'tejainece@gmail.com',
          },
          {
            'name': 'Luficer Morningstart',
            'email': 'luci@hell.com',
          },
          {
            'name': 'P1',
            'email': 'p1@hell.com',
          },
          {
            'name': 'P2',
            'email': 'p2@hell.com',
          },
          {
            'name': 'P3',
            'email': 'p3@hell.com',
          },
          {
            'name': 'P4',
            'email': 'p4@hell.com',
          }
        ],
      },
      {
        'id': 1,
        'name': 'Implement composer',
        'done': false,
        'author': [
          {
            'name': 'teja',
            'email': 'tejainece@gmail.com',
          },
          {
            'name': 'Luficer Morningstart',
            'email': 'luci@hell.com',
          }
        ],
      },
      {
        'id': 2,
        'name': 'Implement setter',
        'done': false,
        'author': [
          {
            'name': 'teja',
            'email': 'tejainece@gmail.com',
          },
          {
            'name': 'Deadpool',
            'email': 'dead@undead.com',
          }
        ],
      },
      {
        'id': 3,
        'name': 'Implement data source',
        'done': false,
        'author': [
          {
            'name': 'teja',
            'email': 'tejainece@gmail.com',
          },
          {
            'name': 'Luficer Morningstart',
            'email': 'luci@hell.com',
          }
        ],
      },
      {
        'id': 4,
        'name': 'Release!',
        'done': false,
        'author': [
          {
            'name': 'teja',
            'email': 'tejainece@gmail.com',
          },
          {
            'name': 'Luficer Morningstart',
            'email': 'luci@hell.com',
          },
          {
            'name': 'Deadpool',
            'email': 'dead@undead.com',
          },
          {
            'name': 'P1',
            'email': 'p1@hell.com',
          },
          {
            'name': 'P2',
            'email': 'p2@hell.com',
          },
          {
            'name': 'P3',
            'email': 'p3@hell.com',
          },
          {
            'name': 'P4',
            'email': 'p4@hell.com',
          }
        ],
      },
    ]
  });

  Future<List> getTodos() async => (await model.get('todos'))['todos'];
}
