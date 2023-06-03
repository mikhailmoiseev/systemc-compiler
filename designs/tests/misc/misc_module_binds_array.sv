//==============================================================================
//
// The code is generated by Intel Compiler for SystemC, version 1.4.32
// see more information at https://github.com/intel/systemc-compiler
//
//==============================================================================

//==============================================================================
//
// Module: Top ()
//
module Top // "mod"
(
);

// Variables generated for SystemC signals
logic [3:0] opa;
logic [3:0] opb;
logic [3:0] ipa;
logic [3:0] aao0;
logic [3:0] aao1;
logic [3:0] vvi0;
logic [3:0] vvi1;
logic [3:0] vvi2;
logic [3:0] v2i[3][2];
logic [3:0] v1i0;
logic [3:0] v1i1;
logic [3:0] v1i2;


//------------------------------------------------------------------------------
// Child module instances

A a
(
  .opa(opa),
  .opb(opb),
  .ipa(ipa),
  .aao0(aao0),
  .aao1(aao1),
  .vvi0(vvi0),
  .vvi1(vvi1),
  .vvi2(vvi2),
  .v2i(v2i),
  .v1i0(v1i0),
  .v1i1(v1i1),
  .v1i2(v1i2)
);

C c
(
  .ivs_s(opa),
  .ias_s(opb),
  .ias_s0(ipa),
  .aas_s(aao0),
  .aas_s0(aao1),
  .vvs_s(vvi0),
  .vvs_s0(vvi1),
  .vvs_s1(vvi2),
  .v2s(v2i),
  .v2s__s(v1i0),
  .v2s__s0(v1i1),
  .v2s__s1(v1i2)
);

endmodule



//==============================================================================
//
// Module: A (test_module_binds_array.cpp:82:5)
//
module A // "mod.a"
(
    output logic [3:0] opa,
    output logic [3:0] opb,
    input logic [3:0] ipa,
    output logic [3:0] aao0,
    output logic [3:0] aao1,
    input logic [3:0] vvi0,
    input logic [3:0] vvi1,
    input logic [3:0] vvi2,
    input logic [3:0] v2i[3][2],
    input logic [3:0] v1i0,
    input logic [3:0] v1i1,
    input logic [3:0] v1i2
);

// Variables generated for SystemC signals
logic signed [31:0] s;
logic [3:0] aao[2];
logic [3:0] vvi[3];
logic [3:0] v1i[3];

// Assignments generated for C++ channel arrays
assign aao0 = aao[0];
assign aao1 = aao[1];
assign vvi[0] = vvi0;
assign vvi[1] = vvi1;
assign vvi[2] = vvi2;
assign v1i[0] = v1i0;
assign v1i[1] = v1i1;
assign v1i[2] = v1i2;

//------------------------------------------------------------------------------
// Method process: meth (test_module_binds_array.cpp:34:5) 

always_comb 
begin : meth     // test_module_binds_array.cpp:34:5
    opa = s + vvi[1];
    opb = s + ipa;
    aao[0] = vvi[2] + v2i[2][1];
    aao[1] = v1i[1] + v1i[2];
end

endmodule



//==============================================================================
//
// Module: C (test_module_binds_array.cpp:83:5)
//
module C // "mod.c"
(
    input logic [3:0] ivs_s,
    input logic [3:0] ias_s,
    output logic [3:0] ias_s0,
    input logic [3:0] aas_s,
    input logic [3:0] aas_s0,
    output logic [3:0] vvs_s,
    output logic [3:0] vvs_s0,
    output logic [3:0] vvs_s1,
    output logic [3:0] v2s[3][2],
    output logic [3:0] v2s__s,
    output logic [3:0] v2s__s0,
    output logic [3:0] v2s__s1
);

// Variables generated for SystemC signals
logic [3:0] ivs[2];
logic [3:0] ias[2];
logic [3:0] aas[3][2];
logic [3:0] vvs[4];
logic [3:0] v2s_[2][3];

// Assignments generated for C++ channel arrays
assign ivs[0] = ivs_s;
assign ias[1] = ias_s;
assign ias_s0 = ias[0];
assign aas[0][0] = aas_s;
assign aas[1][1] = aas_s0;
assign vvs_s = vvs[1];
assign vvs_s0 = vvs[2];
assign vvs_s1 = vvs[3];
assign v2s__s = v2s_[1][0];
assign v2s__s0 = v2s_[1][1];
assign v2s__s1 = v2s_[1][2];

//------------------------------------------------------------------------------
// Method process: meth (test_module_binds_array.cpp:65:5) 

always_comb 
begin : meth     // test_module_binds_array.cpp:65:5
    integer i;
    i = ivs[0] + ias[1];
    ias[0] = aas[1][1];
    for (integer i_1 = 0; i_1 < 4; ++i_1)
    begin
        vvs[i_1] = i_1;
    end
    for (integer i_2 = 0; i_2 < 2; ++i_2)
    begin
        v2s[i_2][i_2] = i_2;
        v2s_[1][i_2] = i_2 + 1;
    end
end

endmodule


