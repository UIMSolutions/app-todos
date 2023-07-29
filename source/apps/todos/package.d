/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.todos;

mixin(ImportPhobos!());

// External
public {
  import vibe.d;
}

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import web.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.todos.controllers;
  import apps.todos.helpers;
  import apps.todos.routers;
  import apps.todos.tests;
  import apps.todos.views;
}

static this() {
  auto myApp = App("todosApp", "apps/todos");

  with (myApp) {
    importTranslations;
    addControllers([
      "todo.index": IndexPageController
    ]);
    addRoutes(
      Route("", HTTPMethod.GET, IndexPageController),
      Route("/", HTTPMethod.GET, IndexPageController)
    );
  }

  AppRegistry.register("apps.todos", myApp);
}
