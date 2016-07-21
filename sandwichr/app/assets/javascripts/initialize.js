if (window.SandwichrApp === undefined) {
  window.SandwichrApp = {};
}


SandwichrApp.kickThingsOff = function () {
  console.log("SandwichrApp ONLINE!");
};


$(document).on("turbolinks:load", function () {

  SandwichrApp.kickThingsOff();

});
