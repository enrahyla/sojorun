atom_feed do |feed|
  feed.title("The Bloggr Super-Duper News Feed")
  feed.updated(@articles.first.created_at)
  @articles.each do |article|
    feed.entry(article) do |entry|
      entry.author do |author|
        author.name "Adam Hyland"
      end
      entry.title(article.title)
      entry.content(article.body, :type => 'html')
    end
  end
end

