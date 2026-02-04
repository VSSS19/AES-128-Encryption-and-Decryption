module AES_Decryption_TB;

	// Inputs
	reg CLK;
	reg [0:127] ENCRYPTED_DATA;
	reg [0:127] CIPHER_KEY;

	// Outputs
	wire [0:127] ORIGINAL_DECRYPTED_DATA;

	// Instantiate the Unit Under Test (UUT)
	AES_Decryption uut (
		.CLK(CLK), 
		.ENCRYPTED_DATA(ENCRYPTED_DATA), 
		.CIPHER_KEY(CIPHER_KEY), 
		.ORIGINAL_DECRYPTED_DATA(ORIGINAL_DECRYPTED_DATA)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		ENCRYPTED_DATA = 0;
		CIPHER_KEY = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always #10 CLK = ~CLK;
	
	initial begin
	
	@(negedge CLK) ENCRYPTED_DATA = 128'h39_25_84_1D_02_DC_09_FB__DC_11_85_97_19_6A_0B_32;
		       CIPHER_KEY = 128'h2B_7E_15_16_28_AE_D2_A6_AB_F7_15_88_09_CF_4F_3C;
	#1000;
	$finish;
	
	end
      
endmodule
