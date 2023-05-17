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
  import apps.todos.tests;
  import apps.todos.views;
}

DApp todosApp;
static this() {
  todosApp = App
    .name("todosApp")
    .rootPath("/apps/todos")
    .addRoute(Route("", HTTPMethod.GET, TDOIndexPageController))
    .addRoute(Route("/", HTTPMethod.GET, TDOIndexPageController));
}