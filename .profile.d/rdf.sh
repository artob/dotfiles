# N-Triples aliases from http://blog.datagraph.org/2010/03/grepping-ntriples
alias rdf-count="awk '/^\s*[^#]/ { n += 1 } END { print n }'"
alias rdf-lengths="awk '/^\s*[^#]/ { print length }'"
alias rdf-length-avg="awk '/^\s*[^#]/ { n += 1; s += length } END { print s/n }'"
alias rdf-length-max="awk 'BEGIN { n=0 } /^\s*[^#]/ { if (length>n) n=length } END { print n }'"
alias rdf-length-min="awk 'BEGIN { n=1e9 } /^\s*[^#]/ { if (length>0 && length<n) n=length } END { print (n<1e9 ? n : 0) }'"
alias rdf-subjects="awk '/^\s*[^#]/ { print \$1 }' | uniq"
alias rdf-predicates="awk '/^\s*[^#]/ { print \$2 }' | uniq"
alias rdf-objects="awk '/^\s*[^#]/ { ORS=\"\"; for (i=3;i<=NF-1;i++) print \$i \" \"; print \"\n\" }' | uniq"
alias rdf-datatypes="awk -F'\x5E' '/\"\^\^</ { print substr(\$3, 2, length(\$3)-4) }' | uniq"

# rapper aliases from http://blog.datagraph.org/2010/04/transmuting-ntriples
alias any2nt="rapper -i guess -o ntriples"         # Anything to N-Triples
alias any2ttl="rapper -i guess -o turtle"          # Anything to Turtle
alias any2rdf="rapper -i guess -o rdfxml-abbrev"   # Anything to RDF/XML
alias any2json="rapper -i guess -o json"           # Anything to RDF/JSON
alias nt2ttl="rapper -i ntriples -o turtle"        # N-Triples to Turtle
alias nt2rdf="rapper -i ntriples -o rdfxml-abbrev" # N-Triples to RDF/XML
alias nt2json="rapper -i ntriples -o json"         # N-Triples to RDF/JSON
alias ttl2nt="rapper -i turtle -o ntriples"        # Turtle to N-Triples
alias ttl2rdf="rapper -i turtle -o rdfxml-abbrev"  # Turtle to RDF/XML
alias ttl2json="rapper -i turtle -o json"          # Turtle to RDF/JSON
alias rdf2nt="rapper -i rdfxml -o ntriples"        # RDF/XML to N-Triples
alias rdf2ttl="rapper -i rdfxml -o turtle"         # RDF/XML to Turtle
alias rdf2json="rapper -i rdfxml -o json"          # RDF/XML to RDF/JSON
alias json2nt="rapper -i json -o ntriples"         # RDF/JSON to N-Triples
alias json2ttl="rapper -i json -o ntriples"        # RDF/JSON to N-Triples
alias json2rdf="rapper -i json -o ntriples"        # RDF/JSON to N-Triples

alias nt2dot='rapper -i ntriples - -o dot "file://`pwd`/"'
