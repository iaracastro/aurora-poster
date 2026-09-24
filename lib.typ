// Aurora Poster: an A0 portrait research poster with a two-column body.
// Pass image(...) content from the caller so images resolve in the user's project.

#let navy = rgb("#003B70")
#let teal = rgb("#0D669E")
#let ink = rgb("#151E26")
#let muted = rgb("#2C3E4F")
#let sky = rgb("#EAF4F6")
#let pale-green = rgb("#F1F8E8")
#let pale-blue = rgb("#F4F8FC")
#let pale-orange = rgb("#FFF7E5")

#let poster(
  title: [Poster title],
  authors: [],
  affiliations: [],
  contact: [],
  event-logos: none,
  institution-logo: none,
  paper-width: 841mm,
  paper-height: 1189mm,
  font: "Libertinus Serif",
  title-color: navy,
  text-color: ink,
  title-size: 75pt,
  body-size: 27pt,
  author-size: 45pt,
  meta-size: 35pt,
  contact-size: 27.5pt,
  caption-size: 24pt,
  body,
) = {
  set page(
    width: paper-width,
    height: paper-height,
    margin: (top: 16mm, bottom: 16mm, left: 24mm, right: 24mm),
    fill: white,
  )
  set text(font: font, size: body-size, fill: text-color)
  set par(justify: true, leading: 0.52em)
  set figure(numbering: none)
  show figure.caption: set text(size: caption-size, fill: muted)

  if event-logos != none or institution-logo != none {
    grid(
      columns: (3fr, 1fr),
      column-gutter: 12mm,
      align: center,
      align(left, event-logos),
      align(right, institution-logo),
    )
    v(15mm)
  }

  align(center, [
    #text(size: title-size, weight: "bold", fill: title-color)[#title]
    #v(6mm)
    #text(size: author-size, weight: "bold")[#authors]
    #v(2mm)
    #text(size: meta-size)[#affiliations]
    #v(2mm)
    #text(size: contact-size, fill: title-color)[#contact]
  ])

  v(13mm)
  body
}

#let poster-columns(left, right, gutter: 20mm) = grid(
  columns: (1fr, 1fr),
  column-gutter: gutter,
  align: top,
  left,
  right,
)

#let poster-section(number, title, body, title-color: navy, rule-color: teal) = block(width: 100%)[
  #v(9mm)
  #text(size: 40pt, weight: "bold", fill: title-color)[
    #text(size: 35pt, weight: "regular", fill: rule-color)[#number] #title
  ]
  #v(2mm)
  #line(length: 100%, stroke: (paint: rule-color, thickness: 1.75pt))
  #v(4mm)
  #body
]

#let callout(body, fill: sky) = block(
  width: 100%,
  fill: fill,
  radius: 3mm,
  inset: (x: 4mm, y: 3.5mm),
)[#text(size: 25pt, fill: muted)[#body]]
