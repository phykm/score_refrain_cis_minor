\version "2.22.2"
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
    %
    \melody_A
    \melody_B
    \melody_hook
    %
    \melody_developOne_tachet
    \fismKey
    \melody_developTwo
    \cismKey
    %
    \melody_hook_last
    %
    \melody_inter_tachet_last
    %
    \bar "|."
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
    %
    \counter_AA
    \counter_BB
    \counter_hook_secondverse
    %
    \counter_developOne
    \fismKey
    \counter_developTwo
    \cismKey
    %
    \counter_hook_last
    %
    \counter_inter_last_One
    %
    \bar "|."
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
    %
    \chord_AA_dummy
    \chord_B_dummy
    \chord_hook_dummy
    %
    \chord_developOne_dummy
    \fismKey
    \chord_developTwo
    \cismKey
    %
    \chord_hook_last_dummy
    %
    \counter_inter_last_Two
    %
    \bar "|."
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
    %
    \lead_AA
    \lead_BB
    \lead_hook
    %
    \lead_developOne
    \fismKey
    \lead_developTwo
    \cismKey
    %
    \lead_hook_last
    %
    \lead_inter_tachet_last
    %
    \bar "|."
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
    %
    \bass_AA
    \bass_B
    \bass_hook
    %
    \bass_developOne
    \fismKey
    \bass_developTwo
    \cismKey
    %
    \bass_hook_last
    %
    \bass_inter_last
    %
    \bar "|."
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
    %
    \chordnames_A
    \chordnames_B
    \chordnames_hook
    %
    \chordnames_developOne
    \chordnames_developTwo
    %
    \chordnames_hook_last
    %
    \chordnames_inter_last
    %
    \bar "|."
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
    % 
    \drums_AA
    \drums_B
    \drums_hook
    %
    \drums_developOne
    \drums_developTwo
    %
    \drums_hook_last
    %
    \drums_inter_last
    %
    \bar "|."
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