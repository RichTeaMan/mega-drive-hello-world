DIR=$(pwd)

if [ ! -f tmp/blastem/blastem ]; then

  mkdir tmp -p
  cd tmp

  curl https://www.retrodev.com/blastem/blastem64-0.6.2.tar.gz > blastem.tar.gz
  tar -xf blastem.tar.gz
  mv blastem64* blastem

  cd "$DIR"
fi

./tmp/blastem/blastem "$@"

