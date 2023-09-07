# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


County.create!(name: "Mun 1")
School.create!(name: "Escola 1", county_id: 1)
SchoolClass.create!(name: "Turma 1", school_id: 1)
VirtualClassroom.create!(name: "Sala PORT", school_class_id: 1)
VirtualClassroom.create!(name: "Sala MAT", school_class_id: 1)

Exam.create!(name: "Atividade 1")
Exam.create!(name: "Atividade 2")
Exam.create!(name: "Atividade 3")

ScheduledExam.create!(date: Time.zone.now, exam_id: 1, virtual_classroom_id: 1)
