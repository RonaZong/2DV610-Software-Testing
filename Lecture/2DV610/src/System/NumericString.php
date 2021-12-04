<?php

class NumericString {

    private $numString;

    public function _construct(String $input) {
        $this->numString = $input;
    }

    public function getLength() : int {
        return mb_strlen($this->numString);
    }

    public function getAt(int $index) : int {
        return $this->numString[$index];
    }
}