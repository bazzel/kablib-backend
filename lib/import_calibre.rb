require 'nokogiri'
require 'action_view'

include ActionView::Helpers::SanitizeHelper

source_path = '<path/to/calibre/folder>'

path = Pathname.new(source_path)

path.each_child.each do |author_dir|
  next unless author_dir.directory?

  author = author_dir.basename.to_s

  author_dir.each_child.each do |title_dir|
    next unless title_dir.directory?

    m = title_dir.basename.to_s.match(/(?<title>.*)(\(\d+\))/)
    title = m['title']

    if (cover = title_dir.join('cover.jpg')).exist?
      cover_image = 'data:image/jpeg;base64,' + Base64.encode64(open(cover) { |io| io.read })
    end

    if (metadata = title_dir.join('metadata.opf')).exist?
      doc = Nokogiri::XML(metadata)

      description = strip_tags doc.at('//dc:description', dc: 'http://purl.org/dc/elements/1.1/').try(:text)

      if (subject = doc.at('//dc:subject', dc: 'http://purl.org/dc/elements/1.1/').try(:text))
        tag_list = subject.split('/').join(',')
      end
    end

    Book.create({
      title: title,
      author: author,
      cover_image: cover_image,
      description: description,
      tag_list: tag_list
    })
  end
end
