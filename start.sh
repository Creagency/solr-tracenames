#! /bin/sh
#java -X8192msm -Xmx12288m -Dsolr.solr.home=/SOLR -DSTOP.PORT=8079 -DSTOP.KEY=mysecret -jar /SOLR/SolrServer/current/start.jar
java -Djetty.home=/SOLR/SolrServer/current -Dsolr.solr.home=/SOLR/SolrServer/current/solr -Dsolr.data.dir=/SOLR/data -Djava.util.logging.config.file=/SOLR/SolrServer/current/solr/pfparty/conf/logging.properties -DSTOP.PORT=8079 -DSTOP.KEY=mysecret -jar /SOLR/SolrServer/current/start.jar
#java -DSTOP.PORT=8079 -DSTOP.KEY=mysecret -jar start.jar
#java -DSTOP.PORT=8079 -DSTOP.KEY=mysecret -Dsolr.data.dir=/Users/xinghao/Documents/rails4/solr-tracenames/data -jar start.jar
