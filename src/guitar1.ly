counter_A = \relative c' {
    e1~
    8 r8 b4 cis4 e4
    dis4. e8 b2~
    b1
    cis1~
    8 r8 e,4 gis4 b4
    ais4. ais8 dis2~
    dis1

    e1~
    8 r8 b4 cis4 e4
    dis4. e8 b2~
    b1
    cis1~
    8 r8 e,4 gis4 b4
    cis4. dis8 e2
    fis4. dis8 b8 a4.  
}

counter_AA = \relative c' {
    e2. e,4
    cis'4 e4 dis4. e8
    cis4. gis8 a2~
    a4. e8 gis2

    cis2. e,4
    gis4 cis4 b4. b8
    ais4. ais8 dis2
    fis4. bis,8 cis8 dis4.

    e2. e,4
    cis'4 e4 dis4. e8
    cis4. gis8 a2~
    a4. e8 gis2

    cis2. e,4
    gis4 cis4 dis4. b8
    e4. dis8 cis4. a8
    fis'4. dis8 e8 fis8 a4
}

% Bメロ対旋律ギターは1,2verseで冒頭しか違わないので2小節目から：
counter_B_common = \relative c'{
    fis4 e8 e8~4 ais,8 ais8
    b1
    a4. gis8 e2
    r4 e4 a4 cis4
    dis4 b8 b8~4 a8 a8
    gis1
    g4. dis8 dis2
    r4 d4 fis4 a4
    cis4 b8 b8~4 gis8 gis8
    a1
    a4. gis8 fis4. e8
    r4 e4 gis4 cis4
    b4 ais4 cis4 e4
    dis8 cis8 bis4~8 dis8 e8 fis8
    gis4. dis8 bis4. gis8
}
% 1verse
counter_B = {\relative c' {
    r4 gis4 cis4 e4
} \counter_B_common } 
% 2verse
counter_BB = {\relative c' {
    gis'4 gis,4 cis4 e4 
} \counter_B_common }

counter_hook_common = \relative c' {
    a4. cis8 fis4. e8
    dis4. e8 cis2
    b4. dis8 fis8 gis8 a4
    gis4. fis8 e2~
    e8 r8 bis8 cis8 dis4 a'4
    a4 gis4 e8 fis8 e8 dis8
    dis8 bis8 cis4~8 cis8 dis8 e8
    fis4. dis8 bis4. gis8

    a4. cis8 fis4. e8
    dis4. e8 cis2
    b4. dis8 fis8 gis8 a4
    gis4. fis8 e2~
    e8 r8 bis8 cis8 dis4 a'4
    a4 gis4 e8 fis8 e8 dis8
    dis8 bis8 cis4~8 cis8 dis8 e8
    fis4 dis4 bis4 gis4~

    gis8 cis8 cis2 b4~
    b4 a4 gis4 a4~
    a8 gis8 e2.~
}

counter_hook = {
    \counter_hook_common 
    \relative c' {
        e,2. r4
    }
}

counter_hook_secondverse = {
    \counter_hook_common 
    \relative c' {
        e,2 e''4. dis8
    }
}

counter_inter_One = \relative c' {
    e,2. e'8 dis8~
    dis4 e8 cis8~4 gis8 a8
    a4. b8 fis2~
    fis4 r8 e8 dis8 e8 fis4
    gis2. fis'8 e8~
    e4 fis8 dis4 e4 gis,8
    a4. b8 cis2
    bis4. cis8 dis4. gis,8
}

counter_developOne = \relative c'' {
    \ottava #1
    cis4. a8 fis'4. e8 dis4. b8 a'4. gis8
    gis4 fis8 fis8~4 e8 dis8 e4. cis8 cis'4. bis8
    bis4 gis8 a8~2~4 fis8 gis8 a8 dis,8 dis4 
    g4. fis8 \tuplet 3/2 {e8 d8 b8 bes8 a8 g8} fis4
    \tuplet 3/2 {b8 c8 dis8 cisis8 dis8 fis8 eis16 fis g gis a ais}

    b2. \tuplet 3/2 {ais8 b8 fis8} g4 
    \tuplet 3/2 {fis8 g8 e8 dis8 e8 fis8 g16 gis a ais b bis} cis2.
    \tuplet 3/2 {bis8 cis ais b fis cis d b fis} b8 d4.
    
    cis8 ais cis e8~
    e8 cis e g8~
    g8 e g ais~4

    \ottava #0

    % コード弾きダミーノート
    \fixed c{
        \override NoteHead.style = #'slash
        b8 8
        4 8 8 4 8 8 4 8 8 4 8 8
        \revert NoteHead.style 
    }
}