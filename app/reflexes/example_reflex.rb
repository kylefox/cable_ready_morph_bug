# frozen_string_literal: true

class ExampleReflex < ApplicationReflex
  include CableReady::Broadcaster

  def update
    morph :nothing

    cable_ready["example-stream"].morph(
      selector: "#hello",
      permanent_attribute_name: 'data-permanent',
      html: HomeController.render(partial: 'hello')
    )
  end
end
