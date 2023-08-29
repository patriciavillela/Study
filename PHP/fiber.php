<?php
$fiber = new Fiber(function (): void {
	$value = Fiber::suspend('fiber');
	echo "Value used to resume fiber: ", $value, PHP_EOL;
});

$value = $fiber->start();

echo $fiber->isRunning() ? '1' : '0';

echo "Value from fiber suspending: ", $value, PHP_EOL;

$fiber->resume('test');
