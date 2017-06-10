# ElbertV2Calculator
This Xilinx ISE project can program a Numato Elbert V2 FPGA development board to function as a simple addition and subtraction calculator.

The dip switches on the board function like the num pad on a calculator, and allow for the entry of an 8 bit (little endian) binary number for addition or subtraction. The number on the dip switches will be displayed on the strip of green LEDs in binary, and on the 7 segment display in decimal. The push buttons can be used to select the operation: SW1 for addition, SW2 for subtraction, and SW5 to complete the operation.

Description of code:

The top-level "Calculator" is synchronous state machine that reacts to the values on dipswitches and the buttons.

It connects to the DisplayValue module which has submodules that perform the operations necessary to update the displays on the board:
1) UpdateDisplay: Splits the 8 bit number into 3 decimal digits to be mapped onto the three 7 segment display blocks.
2) DisplayDriver: Encodes the digits received from UpdateDisplay for display on the 7 segments displays. Cycles through the display blocks to give the illusion of persistence.

To use the calculator: 
1) Configure the dip switches to a number of your choice which will be the left side of the operator.
2) Select your operation, which copies the value of the dipswitches into a buffer.
3) Reconfigure the dipswitches to define the right side of the operator.
4) Press SW5 to calculate the value and display it on the 7 segment display and on the LED strip.
