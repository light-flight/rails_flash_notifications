module ApplicationHelper
  def icon(name, options = {})
    options[:aria] = true
    options[:nocomment] = true
    options[:variant] ||= :outline
    options[:size] = options.fetch(:size, nil).to_s.presence
    options[:class] = options.fetch(:classes, nil)
    options[:style] << "stroke-width: #{options[:stroke]}" if options[:stroke].present?
    path = options.fetch(:path, "icons/#{options[:variant]}/#{name}.svg")
    icon = path
    inline_svg_tag(icon, options)
  end
end
