
.PHONY : includes js css models db tables views functions procedures triggers

#
# BUILD 
#

update:
	@php -f lib/ConstellationFramework/bin/update.php all

# include build also does js/css/models.
includes:
	@php -f lib/ConstellationFramework/bin/build/includes.php

js:
	@php -f lib/ConstellationFramework/bin/build/includes-js.php
css:
	@php -f lib/ConstellationFramework/bin/build/includes-css.php
models:
	@php -f lib/ConstellationFramework/bin/build/includes-models.php


# db build also does tables/views/functions/procedures/triggers
db:
	@php -f lib/ConstellationFramework/bin/build/db.php
	
tables:
	@php -f lib/ConstellationFramework/bin/build/db-tables.php
	
views:
	@php -f lib/ConstellationFramework/bin/build/db-views.php
	
functions:
	@php -f lib/ConstellationFramework/bin/build/db-functions.php
	
procedures:
	@php -f lib/ConstellationFramework/bin/build/db-procedures.php
	
triggers:
	@php -f lib/ConstellationFramework/bin/build/db-triggers.php
	

test:
	echo "not implemented yet"

#
# CLEANS THE ROOT DIRECTORY OF PRIOR BUILDS


clean:
	@rm www/media/combined.css
	@rm www/media/combined.min.css
	@rm www/media/combined.js
	@rm www/media/combined.min.js
	echo "done"