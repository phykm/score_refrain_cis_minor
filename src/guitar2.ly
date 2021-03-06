sl = {
  \override NoteHead.style = #'slash
}
nsl = {
  \revert NoteHead.style
}
%  ストロークのみにする場合、これで挟む。

% 一応和音構成音は書いておく
% これだめだ。sl nslすると記号が重複する。
chord_A_dummy = {
    \sl
    b1~1 1 1
    1 1 1 1
    b1~1 1 1
    1 1 1 2 8 8~4
    \nsl
} 

chord_AA_dummy = {
    \sl
    b4 8 8 4 8 8 4 8 8 4 8 8
    4 8 8 4 8 8 4 8 8 4 8 8
    4 8 8 4 8 8 4 8 8 4 8 8
    4 8 8 4 8 8 4 8 8 4 8 8
    4 8 8 4 8 8 4 8 8 4 8 8
    4 8 8 4 8 8 4 8 8 4 8 8
    4 8 8 4 8 8 4 8 8 4 8 8
    4 8 8 4 8 8 4 8 8 8 8 4
    \nsl
}

chord_B_dummy = {
    \sl
    b2. 8 8
    2 8 8~4
    b2. 8 8
    2 8 8~4
    b2. 8 8
    2 8 8~4
    b2. 8 8
    2 8 8~4
    b2. 8 8
    2 8 8~4
    b2. 8 8
    2 8 8~4
    b2. 8 8
    2 8 8~4
    b2. 8 8
    4 4 8 8 4
    \nsl
}

chord_hook_dummy = {
    \sl
    b8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    4 4 8 8 4

    b8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    4 4 8 8 4

    2. 4~
    4 4 8 8~4
    1~
    1
    \nsl
}

chord_developOne_dummy = {
    \sl
    b8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8

    b8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    4 8 8 4 8 8
    4 8 8 4 8 8
    4 8 8 4 8 8
    4 8 8 4 8 8
    \nsl
}

chord_developTwo = \relative c'{
    r4 fis, a d
    d fis, a d
    e gis, b e
    e gis, b e
    a, cis, fis a
    a  cis, fis a
    b gis b e 
    e gis, b d

    c f, a c
    d f, a d
    f g, b f'
    e a, c e

    \sl
    \fixed c{
        \override NoteHead.style = #'slash
        b4. 8 2~1~1
        r4 b4 8 8 4
        \revert NoteHead.style 
    }
    \nsl
}

chord_hook_last_dummy = {
    \sl
    b8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    4 4 8 8 4

    b8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    4 4 8 8 4

    b8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    4 4 8 8 4

    b8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    8 8 4 4 8 8
    4 4 8 8 4

    2. 4~
    4 4 8 8~4
    1~
    1
    \nsl
}

counter_inter_Two = \relative c' {
    cis4. gis8 a2~1
    fis2 fis'2 dis2 gis,2
    cis4. gis8 a2~1
    fis2 fis'2 dis2 gis,2
}

counter_inter_last_Two = \relative c'' {
    \ottava #1
    cis4. gis8 a2~1
    fis2 fis'2 dis2 gis,2
    cis4. gis8 a2~1
    fis2 fis'2 dis2 gis,2

    cis1
    R1 R1 R1
    <cis, gis' cis e>1^\fermata
    \ottava #0
}
