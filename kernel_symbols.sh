#!/bin/sh

aspdr --symbols kernel.spdr 2> /tmp/kernel_symbols.spdr > /dev/null

echo "once" > kernel_io_symbols.spdr
grep "getc =" /tmp/kernel_symbols.spdr >> kernel_io_symbols.spdr
grep "read_scancode =" /tmp/kernel_symbols.spdr >> kernel_io_symbols.spdr
grep "rptr =" /tmp/kernel_symbols.spdr >> kernel_io_symbols.spdr
grep "wptr =" /tmp/kernel_symbols.spdr >> kernel_io_symbols.spdr
grep "kbd_flags =" /tmp/kernel_symbols.spdr >> kernel_io_symbols.spdr

