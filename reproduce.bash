#!bin/bash

echo "------------------------------"
echo "PA/incdec.pa"
echo "------------------------------"
foada -e Artifact/examples/PA/incdec.pa

echo "------------------------------"
echo "PA/localdec.pa"
echo "------------------------------"
foada -e Artifact/examples/PA/localdec.pa -o

echo "------------------------------"
echo "PA/local0.pa"
echo "------------------------------"
foada -e Artifact/examples/PA/local0.pa -o

echo "------------------------------"
echo "ADA/array_rotation.ada"
echo "------------------------------"
foada -e Artifact/examples/ADA/array_rotation.ada

echo "------------------------------"
echo "ADA/array_simple.ada"
echo "------------------------------"
foada -e Artifact/examples/ADA/array_simple.ada

echo "------------------------------"
echo "ADA/abp.ada"
echo "------------------------------"
foada -e Artifact/examples/ADA/abp.ada

echo "------------------------------"
echo "ADA/hw1.ada"
echo "------------------------------"
foada -e Artifact/examples/ADA/hw1.ada

echo "------------------------------"
echo "ADA/hw2.ada"
echo "------------------------------"
foada -e Artifact/examples/ADA/hw2.ada

echo "------------------------------"
echo "FOADA/fischer-mutex2.foada"
echo "------------------------------"
foada -e Artifact/examples/FOADA/fischer-mutex2.foada

echo "------------------------------"
echo "FOADA/fischer-mutex3.foada"
echo "------------------------------"
foada -e Artifact/examples/FOADA/fischer-mutex3.foada
