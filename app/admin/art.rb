ActiveAdmin.register Art do

  permit_params :name,:author,:category,:image,:content, :description

  form(:html =>{:multipart => true}) do |f|
    f.inputs "Art " do
      f.input :name
      f.input :author
      f.input :category , :as => :select , :collection => ["Phục hưng","Cận đại","Đương đại"]
      f.input :description
      f.input :content
      f.input :image, :as => :file
    end
    actions
  end

end
   