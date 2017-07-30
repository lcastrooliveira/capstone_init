(function() {
  'use strict';

  angular.module('spa.states')
  .directive('states', StatesDirective);

  StatesDirective.$inject = ["spa.APP_CONFIG"];

  function StatesDirective(APP_CONFIG) {
    var directive = {
      templateUrl: APP_CONFIG.state_html,
      replace: true,
      bindToController: true,
      controller: 'spa.states.StatesController',
      controllerAs: 'statesVM',
      restrict: 'E',
      scope: {},
      link: link
    };
    return directive;

    function link(scope, element, attrs) {
      console.log("StatesDirective", scope);
    }
  }
})();
