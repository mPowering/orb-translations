#!/bin/sh

OUTPUT_DIR="$1"

# Category model
python manage.py export_db_translations orb.Category.name > $OUTPUT_DIR/category.po
    
    
# ResourceCriteria model 
python manage.py export_db_translations orb.ResourceCriteria.description > $OUTPUT_DIR/resource_criteria.po
	
# Resource model
python manage.py export_db_translations orb.Resource.title orb.Resource.description orb.Resource.attribution > $OUTPUT_DIR/resource.po


# ResourceFile model
python manage.py export_db_translations orb.ResourceFile.title > $OUTPUT_DIR/resource_file.po
	
# ResourceURL model
python manage.py export_db_translations orb.ResourceURL.title > $OUTPUT_DIR/resource_url.po
	
	
# Tag model
python manage.py export_db_translations orb.Tag.name > $OUTPUT_DIR/tag.po