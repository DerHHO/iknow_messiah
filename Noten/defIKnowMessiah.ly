
chorpartiturIKnowMessiah = {
  \new ChoirStaff <<
    <<

      \new Staff \with {
        instrumentName = "Sopran"
        shortInstrumentName = "S"
        midiInstrument = "acoustic grand"

      }
      <<
        \new Voice = "vsop" {
          \tag #'transponierendepartitur {
            \clef "treble"
            \transpose c c \sopranNotenIKnowMessiah
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranNotenIKnowMessiah
          }
        }
        \addlyrics {
          \sopranTextIKnowMessiah
        }
      >>
    >>
  >>
}
orgelsystemIKnowMessiah = {
  <<
    \new PianoStaff <<

      \set PianoStaff.instrumentName = "Orgel"
      \set PianoStaff.shortInstrumentName = "Org."	<<

        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

        }
        <<
          \new Voice = "vsop" {
            \tag #'transponierendepartitur {
              \clef "treble"
              \transpose c c \orgelRHNotenIKnowMessiah
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenIKnowMessiah
            }
          }

        >>


        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

          \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 9) (minimum-distance . 7) (padding . 1) (stretchability . 5))
        }
        <<
          \new Voice = "valt" {
            \tag #'transponierendepartitur {
              \clef "bass"
              \transpose c c \orgelLHNotenIKnowMessiah
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenIKnowMessiah
            }
          }
          \new FiguredBass \bezifferungIKnowMessiah
        >>


      >>
    >>
  >>

}

scoreIKnowMessiah = {
  <<

    \new Staff \with {
      instrumentName = "Violine"
      shortInstrumentName = "Vl."
      midiInstrument = "acoustic grand"

    }
    <<
      \new Voice = "vVioline" {
        \tag #'transponierendepartitur {
          \clef "treble"
          \transpose c c \violineNotenIKnowMessiah
        }
        \tag #'klingendepartitur {
          \clef "treble"
          \violineNotenIKnowMessiah
        }
      }

    >>

    \chorpartiturIKnowMessiah
    \orgelsystemIKnowMessiah


    \new Staff \with {
      instrumentName = "Basso continuo"
      shortInstrumentName = "B.c."
      midiInstrument = "acoustic grand"

    }
    <<
      \new Voice = "vContinuo" {
        \tag #'transponierendepartitur {
          \clef "bass"
          \transpose c c \continuoNotenIKnowMessiah
        }
        \tag #'klingendepartitur {
          \clef "bass"
          \continuoNotenIKnowMessiah
        }
      }

    >>
  >>
}