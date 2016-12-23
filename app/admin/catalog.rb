ActiveAdmin.register Catalog do
  actions :index, :show, :edit, :update

  form do |f|
    f.inputs do
      f.has_many :items do |itf|
        itf.input :position, as: :number, input_html: { value: itf.index }
        itf.input :type, as: :select,
          collection: {
            'Imágen': 'Catalog::Item::Image',
            'Video': 'Catalog::Item::YoutubeVideo'
          }
        itf.input :file, as: :file, hint: 'Requerido para ítem de tipo "Imágen"'
        itf.input :youtube_video_id, hint: 'Requerido para ítem de tipo "Video"'
      end
    end

    f.actions
  end

  show do
    attributes_table do
      row :name
      row :items do
        resource.items.each_slice(4).map do |items|
          items.map do |item|
            style = 'float: left; display: inline-block; width: 25%'

            case item
            when Catalog::Item::Image
              image_tag(item.file_url, style: style)
            when Catalog::Item::YoutubeVideo
              preview_src = "https://img.youtube.com/vi/#{item.youtube_video_id}/0.jpg"
              image_tag(preview_src, style: style)
            end
          end.join.html_safe
        end.join.html_safe
      end
    end
  end

  permit_params items_attributes: [:id, :type, :file, :youtube_video_id, :_destroy, :position]
end
