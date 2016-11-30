ActiveAdmin.register Post do
  permit_params :title, :content, :category_id

  show do
    tabs do
      tab 'Post Details' do
        attributes_table do
          row :id
          row :name
          row 'content' do |post|
            # raw post.content
            markdown(post.content)
            # Redcarpet::Markdown.new(post.content).to_html
          end
          row :category_id
        end
      end

      tab 'Comments' do
        table_for post.comments do
          # row :id
          # row :content
          # row :created_at
        end
      end
    end
  end

  form do |f|
    f.inputs 'Post Details' do
      f.input :title
      f.input :content
      f.input :category_id, as: :select,
                            collection: Category.all.map { |u| [u.name.to_s, u.id] }
      f.actions
    end
  end

end
