#!/bin/sh

LANG="$1"
OUTPUT_DIR="$2"

# Category model
python manage.py export_db_translations orb.Category.name --language=$LANG > $OUTPUT_DIR/category.po
        
# ResourceCriteria model 
python manage.py export_db_translations orb.ResourceCriteria.description --language=$LANG > $OUTPUT_DIR/resource_criteria.po
	
# Resource model
python manage.py export_db_translations orb.Resource.title orb.Resource.description orb.Resource.attribution --language=$LANG > $OUTPUT_DIR/resource.po

# ResourceFile model
python manage.py export_db_translations orb.ResourceFile.title --language=$LANG > $OUTPUT_DIR/resource_file.po
	
# ResourceURL model
python manage.py export_db_translations orb.ResourceURL.title --language=$LANG > $OUTPUT_DIR/resource_url.po
	
# Tag model
python manage.py export_db_translations orb.Tag.name --language=$LANG > $OUTPUT_DIR/tag.po
