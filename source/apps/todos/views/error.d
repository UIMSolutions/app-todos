module apps.todo.controllers.pages.error;

import apps.todo;
@safe:

class DTODOErrorPageController : DAPPPageController {
  mixin(ControllerThis!("TODOErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(TODOErrorView(this));
  }
}
mixin(ControllerCalls!("TODOErrorPageController"));
