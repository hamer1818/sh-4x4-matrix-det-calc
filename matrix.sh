#!/bin/bash

# Matrisi tanımladık.
declare -a matris

# Kullanıcıdan matris elemanlarını alıyoruz.
echo "Lütfen matrisin her elemanını enter tuşu ile giriniz (4x4 matris):"
for ((i = 0; i < 16; i++)); do
  read matris[$i]
done


# matrisin determinantını fonksiyon ile hesaplıyoruz.
function determinant4x4 {
  local -n matris=$1
  local a=${matris[0]}
  local b=${matris[1]}
  local c=${matris[2]}
  local d=${matris[3]}
  local e=${matris[4]}
  local f=${matris[5]}
  local g=${matris[6]}
  local h=${matris[7]}
  local i=${matris[8]}
  local j=${matris[9]}
  local k=${matris[10]}
  local l=${matris[11]}
  local m=${matris[12]}
  local n=${matris[13]}
  local o=${matris[14]}
  local p=${matris[15]}

  echo $((a * f * k * p - a * f * l * o - a * j * g * p + a * j * h * o + a * n * g * l - a * n * h * k - e * b * k * p + e * b * l * o + e * j * c * p - e * j * d * o - e * n * c * l + e * n * d * k + i * b * g * p - i * b * h * o - i * f * c * p + i * f * d * o + i * n * c * h - i * n * d * g - m * b * g * l + m * b * h * k + m * f * c * l - m * f * d * k - m * j * c * h + m * j * d * g))
}


determinant=$(determinant4x4 matris)
echo "Determinant: $determinant"
