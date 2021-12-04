<?php

require_once ("System/NumericString.php");

class NumericStringTests extends \TDD\TestClass {

    public function getLengthShouldReturnOneForOneDigit() {
        $sut = new NumericString("0");

        $expected = 1;
        $actual = $sut->getLength();

        \TDD\Assert::assertEquals($actual, $expected);
    }

    public function getLengthShouldReturnZeroForEmptyStrings() {
        $sut = new NumericString("");

        $expected = 0;
        $actual = $sut->getLength();

        \TDD\Assert::assertEquals($actual, $expected);
    }

    public function getLengthShouldReturnNumberAtPosZero() {
        $sut = new NumericString("9");

        $expected = 9;
        $actual = $sut->getAt(0);
p
        \TDD\Assert::assertEquals($actual, $expected);
    }

    public function getLengthShouldReturnNumberAtPosOne() {
        $sut = new NumericString("98");

        $expected = 8;
        $actual = $sut->getAt(1);

        \TDD\Assert::assertEquals($actual, $expected);
    }
}