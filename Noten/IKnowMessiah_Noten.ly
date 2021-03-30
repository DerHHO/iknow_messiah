\version "2.18.2"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Based on edition by Nicolas Sceaux %%%%
%%%% https://github.com/nsceaux/nenuvar %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "../Noten/dynamicparams.ly"
\include "../Noten/formatangaben.ly"
\include "../Noten/mergerests.ly"
\include "../Noten/optionaltranspose.ly"
\include "../Noten/Bezeichnungen.ly"
\include "../Noten/generaldefinitions.ly"
\include "../Noten/mydrums2.ly"
\include "../Noten/drumdefinitions.ly"

tempTranspose = #(define-music-function (parser location music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #}))

ablaufzeileIKnowMessiah = {

  \tempo "Larghetto"
  \time 3/4 s2.*149 \tempo "Adagio" s2.*15 \bar "|."
}


globalIKnowMessiah = {
  \taktstil
  \key e \major
  \accidentalStyle modern-voice
}


violineNotenIKnowMessiah = \tempTranspose {
  \globalIKnowMessiah
  r2 b'4 |
  e''2 gis'8. (-\trill fis'16 )|
  e'2 cis''4 |
  a'4. ( gis'8 ) a'4 |
  gis' r8 gis'' fis'' (-\trill e'' )|
  b'2. ~|
  b'4. r16 gis' fis'8. -\trill e'16 |
  e''2. ~|
  e''4 r8 e' dis' cis' |
  b8. ( cis'16 ) b8. ( cis'16 ) b8. ( cis'16 )|
  a8. ( b16 ) a8. ( b16 ) a8. ( b16 )|
  gis4. r16 gis' fis'8. -\trill e'16 |
  dis'4. r16 a'' gis''8. -\trill fis''16 |
  \times 2/3 { gis''8 fis'' e'' } dis''4. e''8 |
  e'4. fis'8 gis' a' |
  b'4. ( cis''16 dis'' e''8 dis''16 cis'' )|
  b' cis'' a'8 gis'4 fis'8. e'16 |
  e'2 r4 |
  R2.*3 |
  r2 b'4 \p |
  e''2 gis'8. fis'16 |
  e'2 cis''4 |
  a'4. gis'8 a'4 |
  gis'2 r4 |
  R2. |
  r4 r8 gis' fis' (-\trill e' )|
  b2 r4 |
  r r8 gis' fis' e' |
  ais'2 r4 |
  r r8 b' ais' gis' |
  fis'2. |
  R2. |
  r2 fis''4 \f |
  b''2 dis''8. ( cis''16 )|
  b'2 gis''4 |
  e''4. dis''8 e''4 |
  dis''2 r4 |
  R2.*5 |
  r4 r8 gis'' \p fis'' (-\trill e'' )|
  b'2. ~|
  b'2 cis''8. b'16 |
  cis''2 ~ cis''8 dis'' |
  e''4. e'8 fis' gis' |
  a'4. e'8 dis' cis' |
  b2 r4 |
  R2. |
  r4 r8 gis' fis' e' |
  b2 r4 |
  r r8 gis' fis' e' |
  e''2 ~ e''8 e'' |
  e''8. fis''16 gis''8 e'' dis'' cis'' |
  b'2. ~|
  b'4. cis''8 a' gis' |
  a'4. gis'8 fis' e' |
  dis'4. fis'8 b4 |
  R2.*4 |
  r4 r8 gis'' \f fis''8. e''16 |
  b'2. |
  r4 r8 gis' fis'8. e'16 |
  cis''2 ~ cis''8 dis'' |
  e''4. e'8 dis' cis' |
  b8. ( cis'16 ) b8. ( cis'16 ) b8. ( cis'16 )|
  a8. b16 a8. b16 a8. a'16 |
  gis'4. fis'8 \times 2/3 { e' fis' gis' }|
  \times 2/3 { a' gis' fis' } dis'4. e'8 |
  e'2 r4 |
  R2.*2 |
  r4 r8 e' \p dis' cis' |
  b8. ( cis'16 ) b8. ( cis'16 ) b8. ( cis'16 )|
  a8. ( b16 ) a8. ( b16 ) a8. ( b16 )|
  gis4 r2 |
  R2.*2 |
  r8 cis'' \p b'8. ( cis''16 ) b'8. ( cis''16 ) |
  b'8. ( cis''16 ) b'8. ( cis''16 ) b'8. ( cis''16 ) |
  b'8. ( cis''16 ) b'8. ( cis''16 ) b'8. ( cis''16 ) |
  b'8. cis''16 b'4 ais' |
  b'2 fis''4 \f |
  b''2 dis''8. cis''16 |
  b'2 gis''4 |
  e''4. dis''8 e''4 |
  dis''2 r4 |
  R2.*3 |
  r4 r8 a' gis' fis' |
  e'8. ( fis'16 ) e'8. ( fis'16 ) e'8. ( fis'16 ) |
  e'8. ( fis'16 ) e'8. ( fis'16 ) e'8. ( fis'16 ) |
  e'8. ( fis'16 ) e'8. ( fis'16 ) e'8. ( fis'16 ) |
  e'8. fis'16 e'8. fis'16 e'8. fis'16 |
  e'8. fis'16 e'8. fis'16 e'8. fis'16 |
  e'4. d'8 cis'4 |
  d' b e' |
  cis' r8 cis'' \f b' a' |
  e'2 r4 |
  R2. |
  r4 r8 d'' \p cis'' b' |
  a' gis' fis' e' d' cis' |
  b4 e' r |
  R2.*5 |
  r2 e''4 \f |
  a''2 cis''8. b'16 |
  a'2 fis''4 |
  d''4. cis''8 d''4 |
  cis''2. |
  R2.*3 |
  r4 r8 e' \p dis' cis' |
  b8. ( cis'16 ) b8. ( cis'16 ) b8. ( cis'16 )|
  a8. ( b16 ) a8. ( b16 ) a8. ( b16 )|
  gis8. a16 gis8. a16 gis8. gis'16 |
  fis'8. gis'16 fis'8. gis'16 fis'8. gis'16 |
  e'8. fis'16 e'8. fis'16 e'8. fis'16 |
  dis'4-.( dis'-. dis'-.) |
  fis'-.( fis'-. fis'-.) |
  b-.( b-. b-.) |
  cis' cis' dis' |
  e'2 r4 |
  R2.*3 |
  r2 b''4 \p |
  ais''8. b''16 ais''8. b''16 ais''8. b''16 |
  e''2 a''4 |
  \times 2/3 { gis''8 fis'' e'' } gis''4 fis''8. e''16 |
  e''2 r4 |
  R2.*5 |
  r2 b'4 |
  ais'8. ( b'16 ) ais'8. ( b'16 ) ais'8. ( b'16 ) |
  b2 r4 |
  R2.*3 |
  r2 b'4 \f |
  e''2 gis'8. fis'16 |
  e'2 cis''4 |
  a'4. gis'8 a'4 |
  gis' r8 gis'' fis'' e'' |
  b'4 r8 e' dis' cis' |
  b4. r16 a'' gis''8. fis''16 |
  \times 2/3 { gis''8 fis'' e'' } dis''4. e''8 |
  e'4. fis'8 gis' a' |
  b'4. cis''16 dis'' e''8 dis''16 cis'' |
  b' cis'' a'8 gis'4 fis'8. e'16 |
  e'2. \fermata |
  \bar "|."
}

sopranNotenIKnowMessiah = \tempTranspose {
  \globalIKnowMessiah
  \autoBeamOff
  \time 3/4
  R2.*17 |
  r2 b'4 |
  e''2 gis'8. [ fis'16 ]|
  e'2 cis''4 |
  a'4. ( gis'8 ) a'4 |
  gis' gis' r |
  R2.*3 |
  r4 b' b' |
  e''2 fis''4 |
  b'2. ~|
  b'4. gis'8 [ fis' ] e' |
  cis''2. ~|
  cis''4. ais'8 [ gis' fis' ]|
  e''2.~\melisma |
  e''4. fis''8 [ dis'' cis'' ]|
  dis''16 [ cis'' ]\melismaEnd b'8 ais'4. b'8 |
  b'2 r4 |
  R2.*3 |
  r2 b'4 |
  e''2 gis'8. [ fis'16 ]|
  e'2 cis''4 |
  a'2 -\trill gis'4 |
  fis' fis' fis' |
  gis'4. gis'8 [ fis' ] e' |
  b'2. ~|
  b' ~|
  b'2 cis''8. b'16 |
  cis''2 ~ cis''8 dis'' |
  e''4. e'8 fis' gis' |
  a'2. ~\melisma |
  a'4. b'8 [ gis' fis' ]|
  gis' \melismaEnd a' fis'4. e'8 |
  e'2 b'4 |
  b'2. ~|
  b'4. gis'8 fis' e' |
  e''2 ~ e''8 e'' |
  e''8. [ fis''16 ] gis''8 e'' dis'' cis'' |
  b'2. ~|
  b'4. cis''8 a' gis' |
  a'2. ~|
  a'4. b'8 gis' [ fis' ]|
  gis' [ a' ] fis'4. e'8 |
  e'4. \melisma fis'8 [ gis' a' ]|
  b'4. cis''16 [ dis'' ] e''8 [ dis''16 cis'' | b'8 ]\melismaEnd
  a' gis'4 ( fis'8. ) e'16 |
  e'2 r4 |
  R2.*8 |
  r4 e' gis' |
  b'2 b'4 |
  cis'' dis''2 |
  e''4 e' r |
  R2.*2 |
  e'4 gis' a' |
  b'2 cis''4 |
  a' gis'2 |
  fis' fis''4 |
  cis''2 dis''4 |
  e'' ( dis'' ) cis'' |
  dis''8[ e''] cis''2 |
  b' r4 |
  R2.*3 |
  r2 fis'4 |
  b'2 dis''8.[ cis''16] |
  b'2 gis''4 |
  e''4. ( dis''8 ) e''4 |
  dis'' dis'' r |
  r b' e'' |
  fis'2 a'4 |
  gis'2 b'4 |
  a' a' e'' |
  b'2 d''4 |
  cis''4. ( b'8 ) a'4 |
  b' gis'2 |
  a' r4 |
  r r8 cis'' b' a' |
  e''2. ~|
  e''2 e''4 |
  fis'' fis'2 |
  gis' a'4 |
  d'' b'2 |
  a' e'4 |
  a'2 cis''8. [ b'16 ]|
  a'2 fis''4 |
  d''4. ( cis''8 ) d''4 |
  cis'' cis'' r |
  R2.*3 |
  r2 a'4 |
  cis'' b' a' |
  e'' e'' r |
  a' gis'2 |
  fis'2. |
  R2. |
  r2 b'4 |
  b'2.(|
  a'2 ) a'4 |
  gis' gis' ais' |
  b'2. ~|
  b' ~|
  b'2 e'4 |
  a'2 a'4 |
  gis'2 b'4 |
  ais'4. \melisma b'8[ ais' b'] |
  e'2 \melismaEnd a'4 |
  gis'8 [ a' ] fis'4. -\trill e'8 |
  e'2 r4 |
  R2.*3 |
  r2 fis'4 |
  gis' gis' a' |
  b' b' cis'' |
  dis'' dis'' e'' |
  fis'' gis''2 |
  cis''4 ( dis'' ) e'' |
  gis' ( fis'2 )|
  R2. |
  r2 a'4 |
  gis' ( fis' e' )|
  dis''2 ( e''4 )|
  gis' fis'4. e'8 |
  e'2 r4 |
  R2.*11 |
  \bar "|."

}

sopranTextIKnowMessiah = \lyricmode {
  I know that my Re -- deem -- er liv -- eth,
  and that he shall stand __ at the lat -- ter __
  day __ up -- on the earth.
  I know that my Re -- deem -- er liv -- eth,
  and that he shall stand __ at the lat -- ter day up -- on the earth, __
  up -- on the earth;
  I know __ that my Re -- deem -- er liv -- eth,
  and that he shall __ stand at the lat -- ter day up -- on the earth, __
  up -- on the earth.
  And though worms de -- stroy this bo -- dy,
  yet in my flesh shall I see God,
  yet in my flesh shall I see God.
  I know that my Re -- deem -- er liv -- eth,
  and though worms de -- stroy this bo -- dy,
  yet in my flesh shall I see God,
  yet in my flesh __ shall I see God,
  shall I see God.
  I know that my Re -- deem -- er liv -- eth.
  For now is Christ ri -- sen from the dead,
  the first __ fruits of them that sleep, __
  of them that sleep,
  the first __ fruits of them that sleep;
  for now is Christ ri -- sen,
  for now is Christ ri -- sen from the dead,
  the first __ fruits __ of them that sleep.

}

continuoNotenIKnowMessiah = \tempTranspose {
  \globalIKnowMessiah
  e2 r4 |
  r2 b4 |
  cis'2 a4 |
  fis2 b,4 |
  e2 r4 |
  r r8 gis fis ( e )|
  b,2 r4 |
  r r8 cis b, a, |
  gis,4 r8 gis fis e |
  dis2 e4 |
  fis2 b,4 |
  e a,2 |
  b,4 dis e |
  a b b, |
  cis b, a, |
  gis,2. |
  r8 a b4 b, |
  e,2 r4 |
  r2 b4 \p |
  cis'2 a4 |
  fis2 b,4 |
  e2 r4 |
  r2 b,4 |
  cis2 a,4 |
  fis,2 dis4 |
  e2 e4 |
  cis2 dis4 |
  e2 r4 |
  dis e gis |
  r r8 e dis cis |
  fis2 r4 |
  r r8 gis cis' b |
  ais2 b4 |
  e fis fis, |
  b,2 r4 |
  r2 fis4 |
  gis2 e4 |
  cis2 ais4 |
  b2 a4 |
  gis2 b4 |
  cis'2 a4 |
  fis2 e4 |
  b,2 r4 |
  R2.*2 |
  r4 r8 gis fis e |
  b,2 r4 |
  r r8 cis' b a |
  gis4 r2 |
  r4 r8 gis fis e |
  dis2 e4 |
  a, b, b, |
  e2 r4 |
  r r8 gis fis e |
  b,2 r4 |
  r r8 cis' b a |
  gis2 r4 |
  r r8 gis fis e |
  dis2 r4 |
  r r8 e dis cis |
  b,4. dis8 e4 |
  a b b, |
  cis b, a, |
  gis, r2 |
  r8 a, b,4 b, |
  e,2 r4 |
  r r8 gis fis e |
  b,2 r4 |
  r r8 cis' b a |
  gis4. gis8 fis e |
  dis4 r e |
  fis dis b, |
  e b, cis |
  a, b, b, |
  e,2 r4 |
  r e gis |
  a fis2 |
  e b,4 |
  gis,2 e4 |
  fis,2 dis4 |
  e2 fis4 |
  gis2 a4 |
  fis e2 |
  b, dis4 |
  e2 fis4 |
  gis2. |
  fis2 fis,4 |
  b,2 r4 |
  r2 fis4 \f |
  gis2 e4 |
  cis2 ais4 |
  b2 r4 |
  r2 fis4 \p |
  gis2 e4 |
  cis2 fis4 |
  b,4. cis8 b, a, |
  gis,4 r2 |
  a,4 r2 |
  b,4 r2 |
  cis4 r2 |
  gis4 r2 |
  a4 e fis |
  d e e, |
  a,2 r4 |
  R2. |
  r4 r8 cis' b a |
  e2. ~|
  e4 d2 ~|
  d cis4 |
  fis d e |
  a,2 r4 |
  r2 e4 |
  fis2 d4 |
  b,2 e4 |
  a,2 r4 |
  r2 e4^\f |
  fis2 d4 |
  b,2 e4 |
  a,2. |
  a |
  gis |
  fis4 e2 |
  b,2. ~|
  b, ~|
  b, ~|
  b, ~|
  b, ~|
  b, ~|
  b,8. cis16 b,8. cis16 b,8. cis16 |
  a,8. b,16 a,8. b,16 a,8. b,16 |
  gis,8. a,16 gis,8. a,16 gis,8. a,16 |
  fis,8. gis,16 fis,8. gis,16 fis,8. gis,16 |
  e,4 e dis |
  cis2. ~|
  cis |
  b,2 b,4 |
  e e' dis' |
  cis'2. |
  cis2 cis'4 |
  b2 b,4 |
  e2 b,4 |
  e2 fis4 |
  gis2 a4 |
  fis2 gis4 |
  dis e2 |
  a e4 |
  b2 b,4 |
  cis2. |
  dis |
  e4 a2 |
  a gis4 |
  b2 b,4 |
  e2. |
  r2 b4 \f |
  cis'2 a4 |
  fis2 b,4 |
  e2 r4 |
  r r8 gis fis e |
  dis4. r16 b, e4 |
  a b b, |
  cis b, a, |
  gis,2 r4 |
  gis8 a b4 b, |
  e,2. \fermata |
  \bar "|."

}

bezifferungIKnowMessiah = \figuremode {
  %% 278
  <_>2. <_>2 <6>4 <_>2. <7> <_>2.*4
  <_>2.*15
  %% 279
  <_>2.*8
  <_>2.*7 <_>2 <2 4>4
  <_>2.*7
  <_>
  %% 280
  <_>2.*29
  %% 281
  <_>2.*7
  <_>2.*5 <7>2 <_+ 7>4 <_>2.*2
  <_>2.*14
  %% 282
  <_>2.*4 <_>2 <6>4 <_>2.*2
  <_>2.*19
  %% 283
  <6/>2. <6!> <_>2.*5
}

orgelRHNotenIKnowMessiah = \tempTranspose \relative c' {
  \globalIKnowMessiah

}

orgelLHNotenIKnowMessiah = \tempTranspose \relative c {
  \globalIKnowMessiah
  \continuoNotenIKnowMessiah
}

metronomZeileIKnowMessiah = \drummode {
}
\include "defIKnowMessiah.ly"

%***Arbeitspartitur
#(set-global-staff-size 14)
\book {
  \bookOutputName "IKnowMessiah-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreIKnowMessiah
  }
}

\book {
  \bookOutputName "IKnowMessiah-midi"
  \score {

    \midi {
      \tempo 4 = 120
      \context {
        \Score
        midiChannelMapping = #'instrument
      }
    }

    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'chorpartitur
    \removeWithTag #'partitur
    \removeWithTag #'einzelstimme

    \unfoldRepeats
    \scoreIKnowMessiah
  }
}
%Arbeitspartitur***
