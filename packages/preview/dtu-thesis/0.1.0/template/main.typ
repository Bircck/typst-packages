#import "tooling/template.typ": *
#import "tooling/preamble.typ": *
// #import "@preview/dtu-thesis:0.1.0": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.

// ---- FONT ----
// #set text(font: "Neo Sans Pro",lang: "en")
// #set text(font: "New Computer Modern")
#set text(font: "Noto Sans", lang: "en")
  

#show: dtu-project.with(
  //General details
  title: 
  "Using Typst Instead Of Latex To Write A \nThesis, DTU Template",
  description: "Master Thesis",
  authors: (
    "Name Namesen", 
  ),
  date: datetime.today().display("[day] [month repr:long] [year]"),
  
  //Department
  university: "Technical University of Denmark",
  department: "DTU Compute",
  department-full-title: "Department of Applied Mathematics and Computer Science",
  address-I: "Richard Petersens Plads, Bygning 321",
  address-II: "2800 Kgs. Lyngby Denmark",
  departmentwebsite: "www.compute.dtu.dk",  

  //preface
  before: (
    summary-english: include "sections/preface/english.typ",
    summary-danish: include "sections/preface/danish.typ",
    preface: include "sections/preface/preface.typ",
    acknowledgement: include "sections/preface/acknowledgement.typ",
    contents: include "sections/preface/contents.typ", // consider keeping this one
    readers-guide: include "sections/preface/readers-guide.typ",
  ),
)

// *Todos*
// #show-all-notes()
// #pagebreak()

#include "sections/introduction.typ"
#include "sections/conclusion.typ"


#pagebreak()
#bibliography("works.bib")


#pagebreak()
#include "sections/appendix.typ"



