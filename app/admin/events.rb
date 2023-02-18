ActiveAdmin.register Event do

permit_params :title,:overview,:body, :image


  index do
    selectable_column
    column :title do |t|
      truncate(t.title, line_width: 9)
    end
    column :overview do |t|
      truncate(t.overview , line_width: 12)
    end    
    column 'Created At' do |c|
      c.created_at.strftime('%b %d, %Y')
    end
    column 'Updated At' do |c|
      c.updated_at.strftime('%b %d, %Y')
    end
    actions
  end

  filter :title
  filter :overview
  filter :created_at
  filter :updated_at
  
  form do |f|
      f.semantic_errors
      f.inputs "Events", :multipart => true do
        f.input :title 
        f.input :overview
        f.input :body
        f.input :image, as: :file
      end
      f.actions
  end

  show title: :title do
    panel 'Events' do
      attributes_table_for event do
        row :title 
        row :overview
        row :body 
        row :created_at
        row :updated_at
        row "photo" do |pt|
          span image_tag(pt.image, size: '300x300', class: "img-corner")
        end
      end  
      
    end
  end
  
end
