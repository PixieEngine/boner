$(document).on 'click', ->
  $('.context_menu').remove()

namespace "Boner.Views", (Views) ->
  class Views.Menu extends Backbone.View
    className: 'context_menu'

    events:
      'click li': 'execute'

    initialize: (options) ->
      @el = $(@el)

      @menuItems = options.items

      @event = options.event

    execute: (e) =>
      name = $(e.currentTarget).text()

      @menuItems[name]()

    render: =>
      ul = $ "<ul></ul>"

      for name, fn of @menuItems
        li = $ "<li>"
          class: name
          text: name

        hr = $ "<hr>"

        ul.append li, hr

      @el.html ul
      @el.css
        top: @event.pageY
        left: @event.pageX

      return @
