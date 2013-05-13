== Nokogiri / Postgres Practice

1. Fork and clone this repo as per usual
2. Change into your project directory
3. Run bundle
4. Change the database.yml.example file to database.yml and update your postgres settings
5. Uncompress the files in the data directory
6. Run rake - should say no specs defined.

= TODO

* Write a unit test for a Nokogiri parser using machinist blueprints to simulate
a data import. It needs to set the title and body given a string input collated 
from a number of Article models.
* The parser should output a file in your /tmp directory called articles.sql,
containing a SQL string that will add your dummy models data to postgres
* Refactor your parser to work with an input file, and bring in the data/small.xml file
and make sure it brings in 703 articles and saves them into your database.
* Try to get it to work with the large XML file. It should bring in 7151 results.
* Visit http://dumps.wikimedia.org/enwiki/20130503 and bring in more *-pages-meta-current*.xml files, prizes for the most articles imported.

= Tips

* After you've got your unit tests running, the sample parser with

    ruby lib/wiki_parser.rb data/small.xml
