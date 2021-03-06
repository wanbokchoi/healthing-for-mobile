module ApplicationHelper
	
	def link_to_add_fields(name, element, association)
    new_object = element.object.class.reflect_on_association(association).klass.new
    fields = element.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s + "/" + association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
	end
	
  def link_to_remove_fields(name, element)
    element.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end
end