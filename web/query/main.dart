// Copyright (c) 2017, SERAGUD. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular/angular.dart';

import 'package:showcase_falcor/src/query/query.dart';

@Component(
  selector: 'my-app',
  template: '<query></query>',
  directives: const [QueryComponent],
)
class AppComponent {
}

void main() {
  bootstrap(AppComponent);
}
