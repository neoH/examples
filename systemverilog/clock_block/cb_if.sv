interface #(SETUP = 3, HOLD = 3) cb_if; // {

	logic clk;
	logic rstn;

	logic [31:0] hwdata;
	logic [31:0] hrdata;
	logic hwrite;
	logic hsel;


	clocking cb @(posedge clk); // {
		default input #SKEWstep output #HOLDstep;
	endclocking // }

endinterface // }
