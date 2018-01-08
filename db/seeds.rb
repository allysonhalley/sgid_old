# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Insert hierarchy default elements
Hierarchy.destroy_all

Hierarchy.create!([
    {name: "CORONEL", acronym: "CEL", rank: 1}, 
    {name: "TENENTE-CORONEL", acronym: "TC", rank: 2}, 
    {name: "MAJOR", acronym: "MAJ", rank: 3}, 
    {name: "CAPITÃO", acronym: "CAP", rank: 4}, 
    {name: "1º TENENTE", acronym: "1TEN", rank: 5}, 
    {name: "2º TENENTE", acronym: "2TEN", rank: 6}, 
    {name: "ASPIRANTE", acronym: "ASP", rank: 7}, 
    {name: "ALUNO CFOA", acronym: "AL CFOA", rank: 8}, 
    {name: "ALUNO CFO", acronym: "AL CFO", rank: 9}, 
    {name: "SUB-TENENTE", acronym: "SUB TEN", rank: 10}, 
    {name: "1º SARGENTO", acronym: "1º SGT", rank: 11}, 
    {name: "2º SARGENTO", acronym: "2 SGT", rank: 12}, 
    {name: "3º SARGENTO", acronym: "3 SGT", rank: 13}, 
    {name: "ALUNO CFS", acronym: "AL CFS", rank: 14}, 
    {name: "CABO", acronym: "CB", rank: 15}, 
    {name: "ALUNO CFC", acronym: "AL CFC", rank: 16}, 
    {name: "SOLDADO", acronym: "SD", rank: 17}, 
    {name: "ALUNO CFSD", acronym: "AL CFSD", rank: 18}
  ])

p "Created #{Hierarchy.count} hierarchies"

# Insert card_staus default elements 
CardStatus.destroy_all

CardStatus.create!([
    {describe: "PRINTED"}, 
    {describe: "USING"}
  ])

p "Created #{CardStatus.count} card_statuses"

# Insert militaries test elements
Military.destroy_all

Military.create!([
    {name: "EVERSON PEREIRA DE LIMA", identification: "62334455", hierarchy: 1, father_name: "JOSÉ", mother_name: "MARIA", born_date: 2000/01/01, registration: "5555555", naturalness: "RECIFE-PE", vote_number: "4444545633", vote_zone: "4423", vote_section: "454", cpf: "22345355555", digital_factor: "E5555F5555", blood_type: 2, blood_factor: 2, firearm: 1},
    {name: "PEREIRA DE LIMA", identification: "12345678", hierarchy: 1, father_name: "JOSÉ", mother_name: "MARIA", born_date: 2000/01/01, registration: "4444444", naturalness: "RECIFE-PE", vote_number: "5444545633", vote_zone: "4423", vote_section: "454", cpf: "04488877787", digital_factor: "E5555F5555", blood_type: 2, blood_factor: 2, firearm: 1},
    {name: "DE LIMA", identification: "87654321", hierarchy: 1, father_name: "JOSÉ", mother_name: "MARIA", born_date: 2000/01/01, registration: "3333333", naturalness: "RECIFE-PE", vote_number: "5444545622", vote_zone: "4423", vote_section: "454", cpf: "05588877787", digital_factor: "E5555F5555", blood_type: 2, blood_factor: 2, firearm: 1}
  ])

p "Created #{Military.count} militaries"