/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.todos;

mixin(ImportPhobos!());

// Dub
public import vibe.d;

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import uim.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.todos.controllers;
  import apps.todos.helpers;
  import apps.todos.routers;
  import apps.todos.tests;
  import apps.todos.views;
}

DApp todosApp;
static this() {
  todosApp = App
    .name("todosApp")
    .rootPath("/apps/todos")
    .addRoute(Route("", HTTPMethod.GET, MYNAMEIndexPageController))
    .addRoute(Route("/", HTTPMethod.GET, MYNAMEIndexPageController));
}
