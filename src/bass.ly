bass_A_tachet = {
    R1 R1 R1 R1 R1 R1 R1 R1
    R1 R1 R1 R1 R1 R1 R1 R1
}

bass_AA  = \relative c, {
    cis4 8 8 4 8 8 
    4 8 8 4 8 8
    fis4 8 8 4 8 8
    e4 e8 dis8 cis4 cis8 b8
    a4 8 8 4 8 8 
    e'4 8 8 4 8 8
    dis4 8 8 cis4 8 8 bis4 8 8 gis4 8 8 

    cis4 8 8 4 8 8 
    4 8 8 4 8 8
    fis4 8 8 4 8 8
    e4 e8 dis8 cis4 cis8 b8
    a4 8 8 4 8 8 
    e'4 8 8 4 8 8
    fis4 8 8 e4 8 8 dis4 8 8 b8 8 4  
}

bass_B = \relative c, {
    cis8 cis8~4 r4 cis8 ais8~
    ais4 ais4 cis8 ais8~4
    b8 b8~4 r4 b8 gis8~
    gis4 gis4 b8 gis8~4

    a8 a8~4 r4 a8 b8~
    b4 b4 b8 dis8~4
    e8 e8~4 r4 e8 dis8~
    dis4 dis4 dis8 dis8~4

    d8 d8~4 r4 d8 cis8~
    cis4 cis4 cis8 gis8~4
    fis8 fis8~4 r4 fis8 gis8~
    gis4 gis4 gis8 gis8~4

    a8 a8~4 r4 a8 ais8~
    ais4 ais4 ais8 cis8~4
    dis8 dis8~4 r4 dis8 gis,8~
    gis4 gis4 gis8 gis8 gis4
}

bass_hook = \relative c, {
    a4. a8 cis4. a8
    a8 fis8 fis4 a8 fis8 fis8 a8
    b4. b8 dis4. b8
    cis8 e,8 e4 cis'8 e,8 e8 cis'8
    fis,4 8 8 gis4 8 8 cis4 8 8 b8 e,8 e4
    fis8 8 4 4 8 8
    gis4. fis8 fis8 gis8 gis4 

    a4. a8 cis4. a8
    a8 fis8 fis4 a8 fis8 fis8 a8
    b4. b8 dis4. b8
    cis8 e,8 e4 cis'8 e,8 e8 cis'8
    fis,4 8 8 gis4 8 8 cis4 8 8 b8 e,8 e4
    fis8 8 4 4 8 8
    gis4 4 8 8 4

    cis4. cis8 cis2~
    cis4 cis4 b8 b8~4
    cis4. cis8 cis2~
    cis4 cis4 8 8~4
}

bass_inter = \relative c, {
    a8 a8~4 r4 a8 a8~
    a4 r4 a8 a8~4
    b8 b8~4 r4 b8 gis8~
    gis4 r4 gis8 gis8~4

    a8 a8~4 r4 a8 a8~
    a4 r4 a8 a8~4
    b8 b8~4 r4 b8 gis8~
    gis4 fis'8 dis8 bis8 gis8 fis8 gis8
}

bass_developOne = \relative c, {
    a4. a8 cis4. a8 b4. b8 dis4. b8
    cis4. cis8 e4. cis8 cis8 e,8 e4 cis'8 e,8 e8 cis'8

    a8 a8~4 r4 a8 a8~
    a4 a4 a8 a8~4
    e'8 e8~4 r4 e8 dis8~
    dis4 bis4 fis8 fis8~4

    g4. g8 b4. g8 g8 e8 e4 g8 e8 e8 g8
    a4. a8 cis4. a8 b8 d8 d4 b8 d8 d8 b8

    ais4 8 8 4 8 8 4 8 8 4 8 8
    cis4 8 8 4 8 8 4 8 8 4 8 8
}

bass_developTwo = \relative c, {
    d4 8 8~4 8 8 fis4 d8 8~4 cis8 d8
    e4 e8 gis8~8 b8 a8 gis8~4. e8 e2
    fis4 8 8~4 8 8 a4 cis8 fis,8~4 fis8 a8
    gis4 e8 e8~8 8 b'8 a8 a4. gis8 gis8 e4.

    f4. 8 a4. f8 f8 d8 d4 f8 d8 d8 f8
    g4. 8 b4. g8 a8 c,8 c4 a'8 c,8 c8 a'8
    gis4. gis,8 gis2~1~1 r2 gis8 8 4 
}

bass_hook_last = \relative c, {
    a4. a8 cis4. a8
    a8 fis8 fis4 a8 fis8 fis8 a8
    b4. b8 dis4. b8
    cis8 e,8 e4 cis'8 e,8 e8 cis'8
    fis,4 8 8 gis4 8 8 cis4 8 8 b8 e,8 e4
    fis8 8 4 4 8 8
    gis4. fis8 fis8 gis8 gis4 

    a4. a8 cis4. a8
    a8 fis8 fis4 a8 fis8 fis8 a8
    b4. b8 dis4. b8
    cis8 e,8 e4 cis'8 e,8 e8 cis'8
    fis,4 8 8 gis4 8 8 cis4 8 8 b8 e,8 e4
    fis8 8 4 4 8 8
    gis4 4 8 8 4

    % シンプルな繰り返し
    a4. a8 cis4. a8
    a8 fis8 fis4 a8 fis8 fis8 a8
    b4. b8 dis4. b8
    cis8 e,8 e4 cis'8 e,8 e8 cis'8
    fis,4 8 8 gis4 8 8 cis4 8 8 b8 e,8 e4
    fis8 8 4 4 8 8
    gis4. fis8 fis8 gis8 gis4 

    a4. a8 cis4. a8
    a8 fis8 fis4 a8 fis8 fis8 a8
    b4. b8 dis4. b8
    cis8 e,8 e4 cis'8 e,8 e8 cis'8
    fis,4 8 8 gis4 8 8 cis4 8 8 b8 e,8 e4
    fis8 8 4 4 8 8
    gis4 4 8 8 4

    cis4. cis8 cis2~
    cis4 cis4 b8 b8~4
    cis4. cis8 cis2~
    cis4 cis4 8 8~4
}

bass_inter_last = \relative c, {
    a8 a8~4 r4 a8 a8~
    a4 r4 a8 a8~4
    b8 b8~4 r4 b8 gis8~
    gis4 r4 gis8 gis8~4

    a8 a8~4 r4 a8 a8~
    a4 r4 a8 a8~4
    b8 b8~4 r4 b8 gis8~
    gis4 r4 gis8 gis8~4

    cis1 R1 R1 R1 R1
}