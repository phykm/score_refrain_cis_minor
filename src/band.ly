\version "2.22.6"
\header {
  title = "Cis minor Refrain"
  composer = "Katsuhiko Matsuhisa"
  tagline = \markup {
    \column {
      "2017-2022"
    }
  }
}
% \include "english.ly"
% これがドイツ音名入力を妨害していた。

global = { \time 4/4 }
cismKey = { \key cis \minor }
fismKey = { \key fis \minor }
amKey = {\key a \minor }

\include "vocal.ly"
voc_melo = {
  \global
  \clef "treble_8"
  <<
    { \melody_A }
  >>
}

\include "guitar1.ly" 
guitar_melo = {
  \global
  \clef "treble_8"
  <<
    { \counter_A }
  >>
}

\include "guitar2.ly"
guitar_code = {
  \global
  \clef "treble_8"
  <<
    { \code_A_dummy }
  >>
}

\include "lead.ly"
lead = {
  \global
  \clef "treble"
  <<
    { \lead_A_tachet }
  >> 
}

\include "bass.ly"
bass = {
  \global
  \clef "bass_8"
  <<
    { \bass_A_tachet }
  >> 
}

\include "chordnames.ly"
chordnames = {
  <<
    { \chordnames_A } 
  >>
}


#(define mydrums '(
    (crashcymbal xcircle #f 7)
    (ridecymbal cross #f 6)
    (hihat cross #f 5)
    (closedhihat cross stopped 5)
    (openhihat cross open 5)
    (halfopenhihat cross halfopen 5)
    (snare default #f 1)
    (hightom default #f 3)
    (himidtom default #f 2)
    (lowmidtom default #f 0)
    (lowtom default #f -1)
    (bassdrum default #f -3)
  )
)

\include "drums.ly" 

drumContents = {
  \global
  <<
    { \drums_A }
  >> 
}




\score {
  <<
    \new StaffGroup = "band" <<
      \new Staff = "main" \with { instrumentName = "Vocal" }
      % \tempo 4 = 160 % この位置にテンポいれなきゃいけないのスゲーーーーーーーキモチワルイ。なんとかならないの？
      % なんで各パートに寄生させなきゃいけないわけ？？？音楽のデータ構造をなんだと思ってるの？？？？
      { \cismKey \tempo 4 =160 \voc_melo }
      \new Staff = "guitar1" \with { instrumentName = "Guitar 1" }
      { \cismKey \tempo 4 =160 \guitar_melo }
      \new ChordNames = "barichords"
      { \chordnames }
      \new Staff = "guitar2" \with { instrumentName = "Guitar 2" \consists "Pitch_squash_engraver" }
      { \cismKey  \tempo 4 =160 \guitar_code } 
      \new Staff = "lead" \with { instrumentName = "Lead" }
      { \cismKey \tempo 4 =160 \lead }
      \new Staff = "bass" \with { instrumentName = "Bass" }
      { \cismKey \tempo 4 =160 \bass }
      \new DrumStaff \with { instrumentName = "Drums" }
      {
        \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
        \drumContents 
      }
    >>
  >>
  \layout {
  }
}