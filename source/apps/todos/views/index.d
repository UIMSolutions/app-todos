module apps.todo.controllers.pages.index;

import apps.todo;
@safe:

class DTODOIndexPageController : DAPPPageController {
  mixin(ControllerThis!("TODOIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(TODOIndexView(this));
  }

  override void beforeResponse(STRINGAA options = null) {
    debugMethodCall(moduleName!DTODOIndexPageController~":DTODOIndexPageController::beforeResponse");
    super.beforeResponse(options);
    if (hasError || "redirect" in options) { return; }

    this.view(
      TODOIndexView(this));
  }
}
mixin(ControllerCalls!("TODOIndexPageController"));


