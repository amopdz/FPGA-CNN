`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2023 11:15:11 AM
// Design Name: 
// Module Name: exampleSim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns/10ps // time-unit = 1 ns, precision = 10 ps

module exampleSim;

reg [3:0] in;
wire [3:0] out;

// Unit under test (UUT)/Design under test (DUT)
example uut (
    .in (in),
    .out (out)
);

// Command to print simulation signal values
initial begin
$monitor("At time %t : input = %b - output = %b", $time, in, out);
end

// Stimulus generation: Sequent input of the simulation
initial begin
    in <= 0;
    #10 // Wait for 10 units of time
    in <= 4'b0001;
    #2 in <= 4'b0010;
    #3 in <= 4'b0011;
    #5 in <= 4'b0101;
    #2 in <= 4'b1001;
    #2 in <= 4'b1111;
    #5 $stop; // end of simulation
end

endmodule