"use strict";

var App = {
  init: function init() {
    console.log('App initialized.');
    jQuery(document).click(function(){
      console.log('click16');
    });

  }
};

module.exports = App;
