version 1.0

import "modules/Singer.wdl" as Singer

workflow TestSinger {

    input {
        String singer
        String songName
    }

    call Singer.Sing {
        input:
            singer = singer,
            songName = songName
    }

    output {
        File out = Sing.out
    }
}