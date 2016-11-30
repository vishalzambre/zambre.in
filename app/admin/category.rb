ActiveAdmin.register Category do
  permit_params :name

  form do |f|
    f.inputs 'Category Details' do
      f.input :name
      f.actions
    end
  end

end
