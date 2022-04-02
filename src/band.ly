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
    \melody_A
  >>
}

\include "guitar1.ly" 
guitar_melo = {
  \global
  \clef "treble_8"
  <<
    \counter_A
  >>
}

\include "guitar2.ly"
guitar_code = {
  \global
  \clef "treble_8"
  <<
    \code_A_dummy
  >>
}

\include "lead.ly"
lead = {
  \global
  \clef "treble"
  <<
    \lead_A_tachet
  >> 
}

\include "bass.ly"
bass = {
  \global
  \clef "bass_8"
  <<
    \bass_A_tachet
  >> 
}

\include "chordnames.ly"
chordnames = {
  <<
    \chordnames_A
  >>
}


% ------ Drums ------
up = \drummode {
  \voiceOne
  hh4 <hh sn> hh <hh sn>
  hh4 <hh sn> hh <hh sn>
  hh4 <hh sn> hh <hh sn>
}
down = \drummode {
  \voiceTwo
  bd4 s bd s
  bd4 s bd s
  bd4 s bd s
}

drumContents = {
  \global
  <<
    \new DrumVoice \up
    \new DrumVoice \down
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
      \drumContents
    >>
  >>
  \layout {
  }
}