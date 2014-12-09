ActiveAdmin.register Art do

    permit_params :name,:author,:category,:url, :description

  form(:html =>{:multipart => true}) do |f|
    f.inputs "Art " do
      f.input :name
      f.input :author
      f.input :category
      f.input :description
      f.input :url
    end
  end

end
