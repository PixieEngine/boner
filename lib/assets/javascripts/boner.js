(function() {
  var __slice = [].slice;

  window.namespace = function(target, name, block) {
    var item, top, _i, _len, _ref, _ref1;
    if (arguments.length < 3) {
      _ref = [(typeof exports !== 'undefined' ? exports : window)].concat(__slice.call(arguments)), target = _ref[0], name = _ref[1], block = _ref[2];
    }
    top = target;
    _ref1 = name.split('.');
    for (_i = 0, _len = _ref1.length; _i < _len; _i++) {
      item = _ref1[_i];
      target = target[item] || (target[item] = {});
    }
    return block(target, top);
  };

}).call(this);
(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  $(document).on('click', function() {
    return $('.context_menu').remove();
  });

  namespace("Boner.Views", function(Views) {
    return Views.Menu = (function(_super) {

      __extends(Menu, _super);

      function Menu() {
        this.render = __bind(this.render, this);

        this.execute = __bind(this.execute, this);
        return Menu.__super__.constructor.apply(this, arguments);
      }

      Menu.prototype.className = 'context_menu';

      Menu.prototype.events = {
        'click li': 'execute'
      };

      Menu.prototype.initialize = function(options) {
        this.el = $(this.el);
        this.menuItems = options.items;
        return this.event = options.event;
      };

      Menu.prototype.execute = function(e) {
        var name;
        name = $(e.currentTarget).text();
        return this.menuItems[name]();
      };

      Menu.prototype.render = function() {
        var fn, hr, li, name, ul, _ref;
        ul = $("<ul></ul>");
        _ref = this.menuItems;
        for (name in _ref) {
          fn = _ref[name];
          li = $("<li>", {
            "class": name,
            text: name
          });
          hr = $("<hr>");
          ul.append(li, hr);
        }
        this.el.html(ul);
        this.el.css({
          top: this.event.pageY,
          left: this.event.pageX
        });
        return this;
      };

      return Menu;

    })(Backbone.View);
  });

}).call(this);
(function() {



}).call(this);
