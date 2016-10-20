ActiveAdmin.register Catalog do
  actions :index, :show, :edit, :update

  form do |f|
    f.inputs do
      f.input :name

      f.has_many :images do |imgf|
        imgf.input :file, as: :file
        imgf.input :position, as: :number, input_html: { value: imgf.index }
      end
    end

    f.actions
  end

  show do
    attributes_table do
      row :name
      row :images do
        resource.images.each_slice(4).map do |images|
          images.map do |img|
            image_tag(img.file_url,
              style: 'float: left; display: inline-block; width: 25%')
          end.join.html_safe
        end.join.html_safe
      end
    end
  end

  permit_params images_attributes: [:id, :file, :_destroy, :position]
end
