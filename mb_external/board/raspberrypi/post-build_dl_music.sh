#!/bin/bash -e

MUSIC_DIR=${TARGET_DIR}/media/music
mkdir -p "${MUSIC_DIR}"
cd "${MUSIC_DIR}"

create_script()
{
    echo "#!/bin/sh" > "$3"
    echo "sleep 0.5s" >> "$3"
    echo "amixer -c 1 set PCM ${2}%" >> "$3"
    echo "mpg123 \"/media/music/$1\"" >> "$3"
    chmod +x "$3"
}

# Debussy - Clair de lune
#FILENAME="Debussy - Clair de Lune"
#FILE="${FILENAME}.mp3"
#if [ ! -f "${FILE}" ]; then
#    URL="https://www.youtube.com/watch?v=Yaxu4qEXDJs"
#    youtube-dl -x --audio-format mp3 "${URL}" --exec "mv {} \"${FILE}\""
#    ffmpeg -i "${FILE}" -ss 00:00:00.00 -t 00:05:10.00 -c copy "tmp.mp3"
#    rm "${FILE}"
#    mv tmp.mp3 "${FILE}"
#fi

FILENAME="Moonlight Sonata"
FILE="${FILENAME}.mp3"
SCRIPT="${FILENAME}.sh"
if [ ! -f "${FILE}" ]; then
    URL="https://www.youtube.com/watch?v=sbTVZMJ9Z2I"
    youtube-dl -x --audio-format mp3 "${URL}" --exec "mv {} \"${FILE}\""
    ffmpeg -i "${FILE}" -ss 00:00:04.00 -t 00:07:00.00 -c copy "tmp.mp3"
    rm "${FILE}"
    mv tmp.mp3 "${FILE}"
fi
create_script "${FILE}" 18 "${SCRIPT}"


FILENAME="Une Libellule"
FILE="${FILENAME}.mp3"
SCRIPT="${FILENAME}.sh"
if [ ! -f "${FILE}" ]; then
    URL="https://www.youtube.com/watch?v=3tJR-JIMaMo"
    youtube-dl -x --audio-format mp3 "${URL}" --exec "mv {} \"${FILE}\""
    ffmpeg -i "${FILE}" -ss 00:00:00.00 -t 00:02:15.00 -c copy "tmp.mp3"
    rm "${FILE}"
    mv tmp.mp3 "${FILE}"
fi
create_script "${FILE}" 16 "${SCRIPT}"

# Berceuse de Brahms
FILENAME="Brahms - Berceuse"
FILE="${FILENAME}.mp3"
SCRIPT="${FILENAME}.sh"
if [ ! -f "${FILE}" ]; then
    URL="https://www.youtube.com/watch?v=PDJqRR1X1QU"
    youtube-dl -x --audio-format mp3 "${URL}" --exec "mv {} \"${FILE}\""
fi
create_script "${FILE}" 20 "${SCRIPT}"

# Flies
FILENAME="Mozart - Flies"
FILE="${FILENAME}.mp3"
SCRIPT="${FILENAME}.sh"
if [ ! -f "${FILE}" ]; then
    URL="https://www.youtube.com/watch?v=NCb8w56fYrw"
    youtube-dl -x --audio-format mp3 "${URL}" --exec "mv {} \"${FILE}\""
    ffmpeg -i "${FILE}" -ss 00:00:00.00 -t 00:02:11.00 -c copy "tmp.mp3"
    rm "${FILE}"
    mv tmp.mp3 "${FILE}"
fi
create_script "${FILE}" 18 "${SCRIPT}"
