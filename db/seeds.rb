# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Sex.create([{ name: 'Femenino' }, { name: 'Masculino' }])
SchoolType.create([{ name: 'Particular' }, { name: 'Oficial' }])
GradeLevel.create([{ name: 'Preescolar' }, { name: 'Primaria' }, { name: 'Pre-Media' }, { name: 'Bachiller' }])

#Preescolar
Grade.create([
  { grade_level_id: 1, name: 'Pre-Kinder', alternative_name: 'Pre-Kinder' },
  { grade_level_id: 1, name: 'Kinder', alternative_name: 'Kinder' }])

#Primaria
Grade.create([
  { grade_level_id: 2, name: '1°', alternative_name: 'I Grado' },
  { grade_level_id: 2, name: '2°', alternative_name: 'II Grado' },
  { grade_level_id: 2, name: '3°', alternative_name: 'III Grado' },
  { grade_level_id: 2, name: '4°', alternative_name: 'IV Grado' },
  { grade_level_id: 2, name: '5°', alternative_name: 'V Grado' },
  { grade_level_id: 2, name: '6°', alternative_name: 'VI Grado' }])

#Pre-Media
Grade.create([
  { grade_level_id: 3, name: '7°', alternative_name: 'I Año' },
  { grade_level_id: 3, name: '8°', alternative_name: 'II Año' },
  { grade_level_id: 3, name: '9°', alternative_name: 'III Año' }
  ])

#Bachiller
Grade.create([
  { grade_level_id: 4, name: '10°', alternative_name: 'IV Año' },
  { grade_level_id: 4, name: '11°', alternative_name: 'V Año' },
  { grade_level_id: 4, name: '12°', alternative_name: 'VI Año' }
  ])
