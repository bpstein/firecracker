ActiveAdmin.register Party do
  permit_params :name, :description, :content, :category, :location, :date, :price, :image

  show do |t| 
    attributes_table do 
      row :name
      row :description
      row :content
      row :category
      row :location
      row :date
      row :price
      # row :image do 
      #   party.image? ? image_tag(party.image.url, height: '100') : content_tag(:span, "No photo yet")
      # end
    end
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do 
      f.input :name
      f.input :description
      f.input :content
      f.input :category
      f.input :location
      f.input :date
      f.input :price
      # f.input :image, hint: f.party.image? ? image_tag(party.image.url, height: '100') : content_tag(:span, "Upload JPG, PNG or GIF image")
    end
    f.actions
  end
end