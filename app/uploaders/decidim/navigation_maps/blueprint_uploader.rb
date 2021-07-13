# frozen_string_literal: true

module Decidim
  module NavigationMaps
    # This class deals with uploading images to a Blueprints.
    class BlueprintUploader < Decidim::RecordImageUploader
      set_variants do
        { thumbnail: { resize_to_fit: [nil, 237] } }
      end

      def extension_allowlist
        %w(jpeg jpg png svg)
      end

      def max_image_height_or_width
        8000
      end
    end
  end
end
