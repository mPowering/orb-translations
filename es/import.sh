#!/bin/sh

INPUT_DIR="$1"

# Category model
python manage.py import_db_translations --language=es $INPUT_DIR/es/category.po
    
# ResourceCriteria model 
python manage.py import_db_translations --language=es $INPUT_DIR/es/resource_criteria.po
	
# Resource model
python manage.py import_db_translations --language=es $INPUT_DIR/es/resource.po

# ResourceFile model
python manage.py import_db_translations --language=es $INPUT_DIR/es/resource_file.po
	
# ResourceURL model
python manage.py import_db_translations --language=es $INPUT_DIR/es/resource_url.po
		
# Tag model
python manage.py import_db_translations --language=es $INPUT_DIR/es/tag.po