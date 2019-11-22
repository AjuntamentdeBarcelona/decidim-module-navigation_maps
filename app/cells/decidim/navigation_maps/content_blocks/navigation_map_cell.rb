# frozen_string_literal: true

module Decidim
  module NavigationMaps
    module ContentBlocks
      class NavigationMapCell < Decidim::ViewModel
        include NavigationMaps::NavigationMapCellHelpers

        view_paths << "#{Decidim::NavigationMaps::Engine.root}/app/cells/decidim/navigation_maps/content_blocks/navigation_map"

        def show
          render if valid_blueprints?
        end
      end
    end
  end
end
