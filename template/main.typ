#import "@preview/aurora-poster:0.1.0": poster, poster-columns, poster-section, callout

// This starter uses fictional sample content. Replace it with your own research.
// Pass image(...) values here so your replacement files resolve in this project.
#show: poster.with(
  title: [Mapping Urban Heat Across Neighborhoods],
  authors: [First Author, Second Author],
  affiliations: [Department of Environmental Studies, Example University],
  contact: [first.author\@example.org  ·  second.author\@example.org],
  event-logos: grid(
    columns: (auto, auto),
    column-gutter: 8mm,
    image("assets/event-logo.svg", height: 60mm),
    image("assets/event-logo.svg", height: 60mm),
  ),
  institution-logo: image("assets/institution-logo.svg", height: 60mm),
)

#poster-columns(
  [
    #poster-section("01", "Introduction")[
      Urban heat varies within a city. Street trees, pavement, building form,
      and traffic can produce different temperatures only a few blocks apart.
      A research poster should let a visitor understand that problem quickly.

      This example shows how to replace the text, graphics, and tables with your
      own work while retaining a consistent two-column layout.
    ]

    #poster-section("02", "Research Questions")[
      We ask where heat exposure is greatest, which neighborhood features are
      associated with cooler streets, and how those patterns could guide
      practical interventions.

      + Where are the warmest areas during the afternoon?
      + How does tree cover relate to street temperature?
      + Which sites warrant closer measurement?
    ]

    #poster-section("03", "Study Design")[
      The example workflow links observations, analysis, and action. Replace the
      diagram below with a map, process figure, or study schematic.

      #figure(
        image("assets/workflow.svg", width: 88%),
        caption: [Illustrative workflow. Replace with your own figure and caption.],
      )

      #callout(fill: rgb("#F1F8E8"))[
        Key message: use this box for the one finding that visitors should
        remember after leaving the poster.
      ]
    ]

    #poster-section("04", "Methods")[
      Describe your sampling, variables, and analysis in short blocks. Use a
      compact table when it is easier to scan than a paragraph.

      #table(
        columns: (1.2fr, 1.7fr, 1fr),
        inset: 2mm,
        stroke: (paint: rgb("#B8C8D4"), thickness: 0.35pt),
        align: center,
        table.header([*Stage*], [*Measure*], [*Example count*]),
        [Sampling], [Street observations], [24 sites],
        [Mapping], [Tree cover], [3 zones],
        [Analysis], [Temperature contrast], [2 periods],
      )

      These entries are illustrative. Replace them with real sample sizes and
      describe your method clearly enough to interpret the results.

      A useful methods section also reports when measurements were collected,
      how instruments were calibrated, and which observations were excluded.
      Point to a longer protocol or open repository if readers need details
      that cannot fit on the poster.
    ]
  ],
  [
    #poster-section("05", "Results")[
      Lead with the most useful comparison, then explain what the reader should
      notice. The values below are fictional and are included only to show the
      table style.

      #table(
        columns: (1.5fr, 1fr, 1fr),
        inset: 2mm,
        stroke: (paint: rgb("#B8C8D4"), thickness: 0.35pt),
        align: center,
        table.header([*Site type*], [*Mean °C*], [*Tree cover*]),
        [Open pavement], [34.1], [8%],
        [Mixed street], [31.7], [22%],
        [Shaded street], [29.8], [48%],
      )

      #figure(
        image("assets/results-chart.svg", width: 82%),
        caption: [Illustrative site comparison. Replace with your data visualization.],
      )

      #callout(fill: rgb("#F4F8FC"))[
        Example takeaway: shaded sites are cooler in this fictional dataset.
        State the actual effect and uncertainty from your study here.
      ]
    ]

    #poster-section("06", "Discussion")[
      Explain what your observations mean, how they compare with earlier work,
      and what might limit your conclusions. Separate evidence from inference.

      In a real poster, note measurement conditions, time of day, missing data,
      and whether the sample is representative of the wider study area.

      Consider alternative explanations. A shaded street may differ from an
      open street in traffic, surface material, or building density. State what
      your design can establish and which claims need more evidence.
    ]

    #poster-section("07", "Conclusions and Next Steps")[
      Summarize the finding in one or two sentences. Then describe a concrete
      next step, such as repeating measurements across seasons or testing an
      intervention at the warmest sites.

      Keep recommendations tied to the result. If you propose a policy or
      design change, name who could act on it and what outcome you would
      measure next.

      #callout(fill: rgb("#FFF7E5"))[
        Replace this note with your final recommendation or future-work plan.
      ]
    ]

    #poster-section("08", "References")[
      Add the sources cited in your own poster. Keep entries brief and readable.
      Replace these placeholders before sharing your research.

      [1] Author, A. (Year). Article title. Journal or publisher.\
      [2] Author, B. (Year). Dataset or report title. Repository.
    ]
  ],
)
