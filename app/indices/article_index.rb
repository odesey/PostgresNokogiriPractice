ThinkingSphinx::Index.define :article, :with => :active_record do
  indexes title, :sortable => true
  indexes body
end