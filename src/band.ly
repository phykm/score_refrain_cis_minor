\version "2.23.6"
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
  { 
    \cismKey
    \melody_A
    \melody_B
    \melody_hook
    \melody_inter_tachet
  }
}

\include "guitar1.ly" 
guitar_melo = {
  \global
  \clef "treble_8"
  { 
    \cismKey
    \counter_A
    \counter_B
    \counter_hook
    \counter_inter_One
  }
}

\include "guitar2.ly"
guitar_code = {
  \global
  \clef "treble_8"
  { 
    \cismKey
    \chord_A_dummy
    \chord_B_dummy
    \chord_hook_dummy
    \counter_inter_Two
  }
}

\include "lead.ly"
lead = {
  \global
  \clef "treble"
  { 
    \cismKey
    \lead_A_tachet
    \lead_B_tachet
    \lead_hook_tachet
    \lead_inter_One
  }
}

\include "bass.ly"
bass = {
  \global
  \clef "bass_8"
  { 
    \cismKey
    \bass_A_tachet
    \bass_B
    \bass_hook
    \bass_inter
  }
}

\include "chordnames.ly"
chordnames = {
  { 
    \cismKey
    \chordnames_A
    \chordnames_B
    \chordnames_hook
    \chordnames_inter
  } 
}

% よくある日本のバンドスコアの形式に再定義
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
  {
    \drums_A
    \drums_B
    \drums_hook
    \drums_inter
  }
}




\score {
  \new StaffGroup = "band" <<
    \new Staff = "main" \with { instrumentName = "Vocal" }
    % tempoの位置がキモいけど、なぜかStaffGroupで同じ値をセットすると最初の段以外のtempo表記は無視される。
    % tempoの許容配置位置と挙動がよくわからない。
    { \tempo 4 =160 \voc_melo }
    \new Staff = "guitar1" \with { instrumentName = "Guitar 1" }
    { \tempo 4 =160 \guitar_melo }
    \new ChordNames = "guitarchords"
    { \chordnames }
    \new Staff = "guitar2" \with { instrumentName = "Guitar 2" }
    { \tempo 4 =160 \guitar_code } 
    \new Staff = "lead" \with { instrumentName = "Lead" }
    { \tempo 4 =160 \lead }
    \new Staff = "bass" \with { instrumentName = "Bass" }
    { \tempo 4 =160 \bass }
    \new DrumStaff \with { instrumentName = "Drums" }
    {
      \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
      \drumContents 
    }
  >>
  \layout {
  }
}