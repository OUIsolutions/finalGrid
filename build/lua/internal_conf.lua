RELEASE = "0.003"
IDENT = true
---@type Measure[]
VALID_MEASURES = {
   {
       content ="%",
       name="percent",
       start=1,
       end_num=20,
       multiplier=5,
       specials={33}
   },
   {
       content="vh",
       name="view-height",
       start=1,
       end_num=20,
       multiplier=5,
       specials={33}
   },
   {
        content="vw",name="view-width",
        start=1,
        end_num=20,
        multiplier=5,
        specials={33}
   },

   {
       content="rem",
       name="rem",
       start=1,
       end_num=20,
       multiplier=5,
       specials={33}
   }
}

---@type Media[]
MEDIAS = {
    {text="if-portrait",content="(orientation: portrait)"},
    {text="if-landscape",content="(orientation: landscape)"}
}

PERCENT_TEXT = "percent"

SUCTRACT = "minus"
WIDTH_NAME = "width"
HEIGHT_NAME = "height"
SET_NAME ="set"
FOR_NAME ="for"
LIB_SEPARATOR = "-"
FINAL_GRID_ROOT = "finalGridRoot"
WEB_SITE= "https://ouisolutions.github.io/finalGrid/"
UNFROMATTED_EXAMPLES = "unformatted_examples"
FORMATTED_EXAMPLES = "examples"
INTERNAL_EXAMPLES = "internal_examples"
EXTERNAL_EXAMPLES = "examples"
LIB_SHORTCUT = "#lib#"
CODEOF = "#codeof:"
REFERENCE_OF = "#ref:"
LINK_TO_EXAMPLE_TEXT = "link to example"
REPO_LINK = "https://cdn.jsdelivr.net/gh/OUIsolutions/finalGrid"
BRNCH="main"
