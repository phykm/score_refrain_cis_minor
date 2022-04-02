sl = {
  \override NoteHead.style = #'slash
  \hide Stem
}
nsl = {
  \revert NoteHead.style
  \undo \hide Stem
}
%  ストロークのみにする場合、これで挟む。

% 一応和音構成音は書いておく
% これだめだ。sl nslすると記号が重複する。
code_A_dummy = {
    \sl
    b1~1 1 1
    1 1 1 1
    b1~1 1 1
    1 1 1 1
    \nsl
}

code_A_with_tone = {
    <cis e gis>1~
    1
    <fis a cis>1
    <e gis cis>1
    <a cis e>1
    <e gis b>1
    <dis fis ais>1
    <gis bis dis>1

    <cis e gis>1~
    1
    <fis a cis>1
    <e gis cis>1
    <a cis e>1
    <e gis b>1
    <fis ais cis>1
    <b dis fis a>1
}

