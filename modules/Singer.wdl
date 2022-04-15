version 1.0 

task Sing {

    input {
        String singer
        String songName
    }

    command <<<
        echo "~{singer} sings ~{songName}" > music.txt
    >>>

    output {
        File out = "music.txt"
    }

    runtime {
        docker: "ubuntu:20.04"
        disks: "local-disk 2 HDD"
        cpu: 1
        memory: "1 GB"
    }

}