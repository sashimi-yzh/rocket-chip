// DO NOT EDIT -- auto-generated from riscv-formal/monitor/generate.py

module RVFIMonitor (
  input clock,
  input reset,
  input [0:0] rvfi_valid,
  input [7:0] rvfi_order,
  input [31:0] rvfi_insn,
  input [0:0] rvfi_trap,
  input [0:0] rvfi_halt,
  input [0:0] rvfi_intr,
  input [4:0] rvfi_rs1_addr,
  input [4:0] rvfi_rs2_addr,
  input [31:0] rvfi_rs1_rdata,
  input [31:0] rvfi_rs2_rdata,
  input [4:0] rvfi_rd_addr,
  input [31:0] rvfi_rd_wdata,
  input [31:0] rvfi_pc_rdata,
  input [31:0] rvfi_pc_wdata,
  input [31:0] rvfi_mem_addr,
  input [3:0] rvfi_mem_rmask,
  input [3:0] rvfi_mem_wmask,
  input [31:0] rvfi_mem_rdata,
  input [31:0] rvfi_mem_wdata
);
  wire ch0_rvfi_valid = rvfi_valid[0];
  wire [7:0] ch0_rvfi_order = rvfi_order[7:0];
  wire [31:0] ch0_rvfi_insn = rvfi_insn[31:0];
  wire ch0_rvfi_trap = rvfi_trap[0];
  wire [4:0] ch0_rvfi_rs1_addr = rvfi_rs1_addr[4:0];
  wire [4:0] ch0_rvfi_rs2_addr = rvfi_rs2_addr[4:0];
  wire [31:0] ch0_rvfi_rs1_rdata = rvfi_rs1_rdata[31:0];
  wire [31:0] ch0_rvfi_rs2_rdata = rvfi_rs2_rdata[31:0];
  wire [4:0] ch0_rvfi_rd_addr = rvfi_rd_addr[4:0];
  wire [31:0] ch0_rvfi_rd_wdata = rvfi_rd_wdata[31:0];
  wire [31:0] ch0_rvfi_pc_rdata = rvfi_pc_rdata[31:0];
  wire [31:0] ch0_rvfi_pc_wdata = rvfi_pc_wdata[31:0];
  wire [31:0] ch0_rvfi_mem_addr = rvfi_mem_addr[31:0];
  wire [3:0] ch0_rvfi_mem_rmask = rvfi_mem_rmask[3:0];
  wire [3:0] ch0_rvfi_mem_wmask = rvfi_mem_wmask[3:0];
  wire [31:0] ch0_rvfi_mem_rdata = rvfi_mem_rdata[31:0];
  wire [31:0] ch0_rvfi_mem_wdata = rvfi_mem_wdata[31:0];

  wire ch0_spec_valid;
  wire ch0_spec_trap;
  wire [4:0] ch0_spec_rs1_addr;
  wire [4:0] ch0_spec_rs2_addr;
  wire [4:0] ch0_spec_rd_addr;
  wire [31:0] ch0_spec_rd_wdata;
  wire [31:0] ch0_spec_pc_wdata;
  wire [31:0] ch0_spec_mem_addr;
  wire [3:0] ch0_spec_mem_rmask;
  wire [3:0] ch0_spec_mem_wmask;
  wire [31:0] ch0_spec_mem_wdata;

  RVFIMonitor_isa_spec ch0_isa_spec (
    .rvfi_valid(ch0_rvfi_valid),
    .rvfi_insn(ch0_rvfi_insn),
    .rvfi_pc_rdata(ch0_rvfi_pc_rdata),
    .rvfi_rs1_rdata(ch0_rvfi_rs1_rdata),
    .rvfi_rs2_rdata(ch0_rvfi_rs2_rdata),
    .rvfi_mem_rdata(ch0_rvfi_mem_rdata),
    .spec_valid(ch0_spec_valid),
    .spec_trap(ch0_spec_trap),
    .spec_rs1_addr(ch0_spec_rs1_addr),
    .spec_rs2_addr(ch0_spec_rs2_addr),
    .spec_rd_addr(ch0_spec_rd_addr),
    .spec_rd_wdata(ch0_spec_rd_wdata),
    .spec_pc_wdata(ch0_spec_pc_wdata),
    .spec_mem_addr(ch0_spec_mem_addr),
    .spec_mem_rmask(ch0_spec_mem_rmask),
    .spec_mem_wmask(ch0_spec_mem_wmask),
    .spec_mem_wdata(ch0_spec_mem_wdata)
  );

  reg ch0_error;

  task ch0_print_error; begin
    $display("-------- RVFI Monitor INSN Error in Channel 0: %m --------");
    $display("rvfi_valid = %x", ch0_rvfi_valid);
    $display("rvfi_order = %x", ch0_rvfi_order);
    $display("rvfi_insn = %x", ch0_rvfi_insn);
    $display("rvfi_trap = %x", ch0_rvfi_trap);
    $display("rvfi_rs1_addr = %x", ch0_rvfi_rs1_addr);
    $display("rvfi_rs2_addr = %x", ch0_rvfi_rs2_addr);
    $display("rvfi_rs1_rdata = %x", ch0_rvfi_rs1_rdata);
    $display("rvfi_rs2_rdata = %x", ch0_rvfi_rs2_rdata);
    $display("rvfi_rd_addr = %x", ch0_rvfi_rd_addr);
    $display("rvfi_rd_wdata = %x", ch0_rvfi_rd_wdata);
    $display("rvfi_pc_rdata = %x", ch0_rvfi_pc_rdata);
    $display("rvfi_pc_wdata = %x", ch0_rvfi_pc_wdata);
    $display("rvfi_mem_addr = %x", ch0_rvfi_mem_addr);
    $display("rvfi_mem_rmask = %x", ch0_rvfi_mem_rmask);
    $display("rvfi_mem_wmask = %x", ch0_rvfi_mem_wmask);
    $display("rvfi_mem_rdata = %x", ch0_rvfi_mem_rdata);
    $display("rvfi_mem_wdata = %x", ch0_rvfi_mem_wdata);
    $display("spec_valid = %x", ch0_spec_valid);
    $display("spec_trap = %x", ch0_spec_trap);
    $display("spec_rs1_addr = %x", ch0_spec_rs1_addr);
    $display("spec_rs2_addr = %x", ch0_spec_rs2_addr);
    $display("spec_rd_addr = %x", ch0_spec_rd_addr);
    $display("spec_rd_wdata = %x", ch0_spec_rd_wdata);
    $display("spec_pc_wdata = %x", ch0_spec_pc_wdata);
    $display("spec_mem_addr = %x", ch0_spec_mem_addr);
    $display("spec_mem_rmask = %x", ch0_spec_mem_rmask);
    $display("spec_mem_wmask = %x", ch0_spec_mem_wmask);
    $display("spec_mem_wdata = %x", ch0_spec_mem_wdata);
    ch0_error <= 1;
  end endtask

  always @(posedge clock) begin
    ch0_error <= 0;
    if (!reset && ch0_spec_valid) begin
      if (ch0_rvfi_trap != ch0_spec_trap) begin
        ch0_print_error; $display("Error details: mismatch in trap.");
      end
      if (ch0_rvfi_rs1_addr != ch0_spec_rs1_addr && ch0_spec_rs1_addr != 0) begin
        ch0_print_error; $display("Error details: mismatch in rs1_addr.");
      end
      if (ch0_rvfi_rs2_addr != ch0_spec_rs2_addr && ch0_spec_rs2_addr != 0) begin
        ch0_print_error; $display("Error details: mismatch in rs2_addr.");
      end
      if (ch0_rvfi_rd_addr != ch0_spec_rd_addr) begin
        ch0_print_error; $display("Error details: mismatch in rd_addr.");
      end
      if (ch0_rvfi_rd_wdata != ch0_spec_rd_wdata) begin
        ch0_print_error; $display("Error details: mismatch in rd_wdata.");
      end
      if (ch0_rvfi_pc_wdata != ch0_spec_pc_wdata) begin
        ch0_print_error; $display("Error details: mismatch in pc_wdata.");
      end
    end
  end

  // FIXME: Add consistency checks for PC and registers.
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_isa_spec (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);
  wire                                spec_insn_add_valid;
  wire                                spec_insn_add_trap;
  wire [                       4 : 0] spec_insn_add_rs1_addr;
  wire [                       4 : 0] spec_insn_add_rs2_addr;
  wire [                       4 : 0] spec_insn_add_rd_addr;
  wire [32   - 1 : 0] spec_insn_add_rd_wdata;
  wire [32   - 1 : 0] spec_insn_add_pc_wdata;
  wire [32   - 1 : 0] spec_insn_add_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_add_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_add_mem_wmask;
  wire [32   - 1 : 0] spec_insn_add_mem_wdata;

  RVFIMonitor_insn_add insn_add (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_add_valid),
    .spec_trap(spec_insn_add_trap),
    .spec_rs1_addr(spec_insn_add_rs1_addr),
    .spec_rs2_addr(spec_insn_add_rs2_addr),
    .spec_rd_addr(spec_insn_add_rd_addr),
    .spec_rd_wdata(spec_insn_add_rd_wdata),
    .spec_pc_wdata(spec_insn_add_pc_wdata),
    .spec_mem_addr(spec_insn_add_mem_addr),
    .spec_mem_rmask(spec_insn_add_mem_rmask),
    .spec_mem_wmask(spec_insn_add_mem_wmask),
    .spec_mem_wdata(spec_insn_add_mem_wdata)
  );

  wire                                spec_insn_addi_valid;
  wire                                spec_insn_addi_trap;
  wire [                       4 : 0] spec_insn_addi_rs1_addr;
  wire [                       4 : 0] spec_insn_addi_rs2_addr;
  wire [                       4 : 0] spec_insn_addi_rd_addr;
  wire [32   - 1 : 0] spec_insn_addi_rd_wdata;
  wire [32   - 1 : 0] spec_insn_addi_pc_wdata;
  wire [32   - 1 : 0] spec_insn_addi_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_addi_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_addi_mem_wmask;
  wire [32   - 1 : 0] spec_insn_addi_mem_wdata;

  RVFIMonitor_insn_addi insn_addi (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_addi_valid),
    .spec_trap(spec_insn_addi_trap),
    .spec_rs1_addr(spec_insn_addi_rs1_addr),
    .spec_rs2_addr(spec_insn_addi_rs2_addr),
    .spec_rd_addr(spec_insn_addi_rd_addr),
    .spec_rd_wdata(spec_insn_addi_rd_wdata),
    .spec_pc_wdata(spec_insn_addi_pc_wdata),
    .spec_mem_addr(spec_insn_addi_mem_addr),
    .spec_mem_rmask(spec_insn_addi_mem_rmask),
    .spec_mem_wmask(spec_insn_addi_mem_wmask),
    .spec_mem_wdata(spec_insn_addi_mem_wdata)
  );

  wire                                spec_insn_and_valid;
  wire                                spec_insn_and_trap;
  wire [                       4 : 0] spec_insn_and_rs1_addr;
  wire [                       4 : 0] spec_insn_and_rs2_addr;
  wire [                       4 : 0] spec_insn_and_rd_addr;
  wire [32   - 1 : 0] spec_insn_and_rd_wdata;
  wire [32   - 1 : 0] spec_insn_and_pc_wdata;
  wire [32   - 1 : 0] spec_insn_and_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_and_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_and_mem_wmask;
  wire [32   - 1 : 0] spec_insn_and_mem_wdata;

  RVFIMonitor_insn_and insn_and (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_and_valid),
    .spec_trap(spec_insn_and_trap),
    .spec_rs1_addr(spec_insn_and_rs1_addr),
    .spec_rs2_addr(spec_insn_and_rs2_addr),
    .spec_rd_addr(spec_insn_and_rd_addr),
    .spec_rd_wdata(spec_insn_and_rd_wdata),
    .spec_pc_wdata(spec_insn_and_pc_wdata),
    .spec_mem_addr(spec_insn_and_mem_addr),
    .spec_mem_rmask(spec_insn_and_mem_rmask),
    .spec_mem_wmask(spec_insn_and_mem_wmask),
    .spec_mem_wdata(spec_insn_and_mem_wdata)
  );

  wire                                spec_insn_andi_valid;
  wire                                spec_insn_andi_trap;
  wire [                       4 : 0] spec_insn_andi_rs1_addr;
  wire [                       4 : 0] spec_insn_andi_rs2_addr;
  wire [                       4 : 0] spec_insn_andi_rd_addr;
  wire [32   - 1 : 0] spec_insn_andi_rd_wdata;
  wire [32   - 1 : 0] spec_insn_andi_pc_wdata;
  wire [32   - 1 : 0] spec_insn_andi_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_andi_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_andi_mem_wmask;
  wire [32   - 1 : 0] spec_insn_andi_mem_wdata;

  RVFIMonitor_insn_andi insn_andi (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_andi_valid),
    .spec_trap(spec_insn_andi_trap),
    .spec_rs1_addr(spec_insn_andi_rs1_addr),
    .spec_rs2_addr(spec_insn_andi_rs2_addr),
    .spec_rd_addr(spec_insn_andi_rd_addr),
    .spec_rd_wdata(spec_insn_andi_rd_wdata),
    .spec_pc_wdata(spec_insn_andi_pc_wdata),
    .spec_mem_addr(spec_insn_andi_mem_addr),
    .spec_mem_rmask(spec_insn_andi_mem_rmask),
    .spec_mem_wmask(spec_insn_andi_mem_wmask),
    .spec_mem_wdata(spec_insn_andi_mem_wdata)
  );

  wire                                spec_insn_auipc_valid;
  wire                                spec_insn_auipc_trap;
  wire [                       4 : 0] spec_insn_auipc_rs1_addr;
  wire [                       4 : 0] spec_insn_auipc_rs2_addr;
  wire [                       4 : 0] spec_insn_auipc_rd_addr;
  wire [32   - 1 : 0] spec_insn_auipc_rd_wdata;
  wire [32   - 1 : 0] spec_insn_auipc_pc_wdata;
  wire [32   - 1 : 0] spec_insn_auipc_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_auipc_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_auipc_mem_wmask;
  wire [32   - 1 : 0] spec_insn_auipc_mem_wdata;

  RVFIMonitor_insn_auipc insn_auipc (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_auipc_valid),
    .spec_trap(spec_insn_auipc_trap),
    .spec_rs1_addr(spec_insn_auipc_rs1_addr),
    .spec_rs2_addr(spec_insn_auipc_rs2_addr),
    .spec_rd_addr(spec_insn_auipc_rd_addr),
    .spec_rd_wdata(spec_insn_auipc_rd_wdata),
    .spec_pc_wdata(spec_insn_auipc_pc_wdata),
    .spec_mem_addr(spec_insn_auipc_mem_addr),
    .spec_mem_rmask(spec_insn_auipc_mem_rmask),
    .spec_mem_wmask(spec_insn_auipc_mem_wmask),
    .spec_mem_wdata(spec_insn_auipc_mem_wdata)
  );

  wire                                spec_insn_beq_valid;
  wire                                spec_insn_beq_trap;
  wire [                       4 : 0] spec_insn_beq_rs1_addr;
  wire [                       4 : 0] spec_insn_beq_rs2_addr;
  wire [                       4 : 0] spec_insn_beq_rd_addr;
  wire [32   - 1 : 0] spec_insn_beq_rd_wdata;
  wire [32   - 1 : 0] spec_insn_beq_pc_wdata;
  wire [32   - 1 : 0] spec_insn_beq_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_beq_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_beq_mem_wmask;
  wire [32   - 1 : 0] spec_insn_beq_mem_wdata;

  RVFIMonitor_insn_beq insn_beq (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_beq_valid),
    .spec_trap(spec_insn_beq_trap),
    .spec_rs1_addr(spec_insn_beq_rs1_addr),
    .spec_rs2_addr(spec_insn_beq_rs2_addr),
    .spec_rd_addr(spec_insn_beq_rd_addr),
    .spec_rd_wdata(spec_insn_beq_rd_wdata),
    .spec_pc_wdata(spec_insn_beq_pc_wdata),
    .spec_mem_addr(spec_insn_beq_mem_addr),
    .spec_mem_rmask(spec_insn_beq_mem_rmask),
    .spec_mem_wmask(spec_insn_beq_mem_wmask),
    .spec_mem_wdata(spec_insn_beq_mem_wdata)
  );

  wire                                spec_insn_bge_valid;
  wire                                spec_insn_bge_trap;
  wire [                       4 : 0] spec_insn_bge_rs1_addr;
  wire [                       4 : 0] spec_insn_bge_rs2_addr;
  wire [                       4 : 0] spec_insn_bge_rd_addr;
  wire [32   - 1 : 0] spec_insn_bge_rd_wdata;
  wire [32   - 1 : 0] spec_insn_bge_pc_wdata;
  wire [32   - 1 : 0] spec_insn_bge_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_bge_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_bge_mem_wmask;
  wire [32   - 1 : 0] spec_insn_bge_mem_wdata;

  RVFIMonitor_insn_bge insn_bge (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_bge_valid),
    .spec_trap(spec_insn_bge_trap),
    .spec_rs1_addr(spec_insn_bge_rs1_addr),
    .spec_rs2_addr(spec_insn_bge_rs2_addr),
    .spec_rd_addr(spec_insn_bge_rd_addr),
    .spec_rd_wdata(spec_insn_bge_rd_wdata),
    .spec_pc_wdata(spec_insn_bge_pc_wdata),
    .spec_mem_addr(spec_insn_bge_mem_addr),
    .spec_mem_rmask(spec_insn_bge_mem_rmask),
    .spec_mem_wmask(spec_insn_bge_mem_wmask),
    .spec_mem_wdata(spec_insn_bge_mem_wdata)
  );

  wire                                spec_insn_bgeu_valid;
  wire                                spec_insn_bgeu_trap;
  wire [                       4 : 0] spec_insn_bgeu_rs1_addr;
  wire [                       4 : 0] spec_insn_bgeu_rs2_addr;
  wire [                       4 : 0] spec_insn_bgeu_rd_addr;
  wire [32   - 1 : 0] spec_insn_bgeu_rd_wdata;
  wire [32   - 1 : 0] spec_insn_bgeu_pc_wdata;
  wire [32   - 1 : 0] spec_insn_bgeu_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_bgeu_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_bgeu_mem_wmask;
  wire [32   - 1 : 0] spec_insn_bgeu_mem_wdata;

  RVFIMonitor_insn_bgeu insn_bgeu (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_bgeu_valid),
    .spec_trap(spec_insn_bgeu_trap),
    .spec_rs1_addr(spec_insn_bgeu_rs1_addr),
    .spec_rs2_addr(spec_insn_bgeu_rs2_addr),
    .spec_rd_addr(spec_insn_bgeu_rd_addr),
    .spec_rd_wdata(spec_insn_bgeu_rd_wdata),
    .spec_pc_wdata(spec_insn_bgeu_pc_wdata),
    .spec_mem_addr(spec_insn_bgeu_mem_addr),
    .spec_mem_rmask(spec_insn_bgeu_mem_rmask),
    .spec_mem_wmask(spec_insn_bgeu_mem_wmask),
    .spec_mem_wdata(spec_insn_bgeu_mem_wdata)
  );

  wire                                spec_insn_blt_valid;
  wire                                spec_insn_blt_trap;
  wire [                       4 : 0] spec_insn_blt_rs1_addr;
  wire [                       4 : 0] spec_insn_blt_rs2_addr;
  wire [                       4 : 0] spec_insn_blt_rd_addr;
  wire [32   - 1 : 0] spec_insn_blt_rd_wdata;
  wire [32   - 1 : 0] spec_insn_blt_pc_wdata;
  wire [32   - 1 : 0] spec_insn_blt_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_blt_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_blt_mem_wmask;
  wire [32   - 1 : 0] spec_insn_blt_mem_wdata;

  RVFIMonitor_insn_blt insn_blt (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_blt_valid),
    .spec_trap(spec_insn_blt_trap),
    .spec_rs1_addr(spec_insn_blt_rs1_addr),
    .spec_rs2_addr(spec_insn_blt_rs2_addr),
    .spec_rd_addr(spec_insn_blt_rd_addr),
    .spec_rd_wdata(spec_insn_blt_rd_wdata),
    .spec_pc_wdata(spec_insn_blt_pc_wdata),
    .spec_mem_addr(spec_insn_blt_mem_addr),
    .spec_mem_rmask(spec_insn_blt_mem_rmask),
    .spec_mem_wmask(spec_insn_blt_mem_wmask),
    .spec_mem_wdata(spec_insn_blt_mem_wdata)
  );

  wire                                spec_insn_bltu_valid;
  wire                                spec_insn_bltu_trap;
  wire [                       4 : 0] spec_insn_bltu_rs1_addr;
  wire [                       4 : 0] spec_insn_bltu_rs2_addr;
  wire [                       4 : 0] spec_insn_bltu_rd_addr;
  wire [32   - 1 : 0] spec_insn_bltu_rd_wdata;
  wire [32   - 1 : 0] spec_insn_bltu_pc_wdata;
  wire [32   - 1 : 0] spec_insn_bltu_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_bltu_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_bltu_mem_wmask;
  wire [32   - 1 : 0] spec_insn_bltu_mem_wdata;

  RVFIMonitor_insn_bltu insn_bltu (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_bltu_valid),
    .spec_trap(spec_insn_bltu_trap),
    .spec_rs1_addr(spec_insn_bltu_rs1_addr),
    .spec_rs2_addr(spec_insn_bltu_rs2_addr),
    .spec_rd_addr(spec_insn_bltu_rd_addr),
    .spec_rd_wdata(spec_insn_bltu_rd_wdata),
    .spec_pc_wdata(spec_insn_bltu_pc_wdata),
    .spec_mem_addr(spec_insn_bltu_mem_addr),
    .spec_mem_rmask(spec_insn_bltu_mem_rmask),
    .spec_mem_wmask(spec_insn_bltu_mem_wmask),
    .spec_mem_wdata(spec_insn_bltu_mem_wdata)
  );

  wire                                spec_insn_bne_valid;
  wire                                spec_insn_bne_trap;
  wire [                       4 : 0] spec_insn_bne_rs1_addr;
  wire [                       4 : 0] spec_insn_bne_rs2_addr;
  wire [                       4 : 0] spec_insn_bne_rd_addr;
  wire [32   - 1 : 0] spec_insn_bne_rd_wdata;
  wire [32   - 1 : 0] spec_insn_bne_pc_wdata;
  wire [32   - 1 : 0] spec_insn_bne_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_bne_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_bne_mem_wmask;
  wire [32   - 1 : 0] spec_insn_bne_mem_wdata;

  RVFIMonitor_insn_bne insn_bne (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_bne_valid),
    .spec_trap(spec_insn_bne_trap),
    .spec_rs1_addr(spec_insn_bne_rs1_addr),
    .spec_rs2_addr(spec_insn_bne_rs2_addr),
    .spec_rd_addr(spec_insn_bne_rd_addr),
    .spec_rd_wdata(spec_insn_bne_rd_wdata),
    .spec_pc_wdata(spec_insn_bne_pc_wdata),
    .spec_mem_addr(spec_insn_bne_mem_addr),
    .spec_mem_rmask(spec_insn_bne_mem_rmask),
    .spec_mem_wmask(spec_insn_bne_mem_wmask),
    .spec_mem_wdata(spec_insn_bne_mem_wdata)
  );

  wire                                spec_insn_jal_valid;
  wire                                spec_insn_jal_trap;
  wire [                       4 : 0] spec_insn_jal_rs1_addr;
  wire [                       4 : 0] spec_insn_jal_rs2_addr;
  wire [                       4 : 0] spec_insn_jal_rd_addr;
  wire [32   - 1 : 0] spec_insn_jal_rd_wdata;
  wire [32   - 1 : 0] spec_insn_jal_pc_wdata;
  wire [32   - 1 : 0] spec_insn_jal_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_jal_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_jal_mem_wmask;
  wire [32   - 1 : 0] spec_insn_jal_mem_wdata;

  RVFIMonitor_insn_jal insn_jal (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_jal_valid),
    .spec_trap(spec_insn_jal_trap),
    .spec_rs1_addr(spec_insn_jal_rs1_addr),
    .spec_rs2_addr(spec_insn_jal_rs2_addr),
    .spec_rd_addr(spec_insn_jal_rd_addr),
    .spec_rd_wdata(spec_insn_jal_rd_wdata),
    .spec_pc_wdata(spec_insn_jal_pc_wdata),
    .spec_mem_addr(spec_insn_jal_mem_addr),
    .spec_mem_rmask(spec_insn_jal_mem_rmask),
    .spec_mem_wmask(spec_insn_jal_mem_wmask),
    .spec_mem_wdata(spec_insn_jal_mem_wdata)
  );

  wire                                spec_insn_jalr_valid;
  wire                                spec_insn_jalr_trap;
  wire [                       4 : 0] spec_insn_jalr_rs1_addr;
  wire [                       4 : 0] spec_insn_jalr_rs2_addr;
  wire [                       4 : 0] spec_insn_jalr_rd_addr;
  wire [32   - 1 : 0] spec_insn_jalr_rd_wdata;
  wire [32   - 1 : 0] spec_insn_jalr_pc_wdata;
  wire [32   - 1 : 0] spec_insn_jalr_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_jalr_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_jalr_mem_wmask;
  wire [32   - 1 : 0] spec_insn_jalr_mem_wdata;

  RVFIMonitor_insn_jalr insn_jalr (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_jalr_valid),
    .spec_trap(spec_insn_jalr_trap),
    .spec_rs1_addr(spec_insn_jalr_rs1_addr),
    .spec_rs2_addr(spec_insn_jalr_rs2_addr),
    .spec_rd_addr(spec_insn_jalr_rd_addr),
    .spec_rd_wdata(spec_insn_jalr_rd_wdata),
    .spec_pc_wdata(spec_insn_jalr_pc_wdata),
    .spec_mem_addr(spec_insn_jalr_mem_addr),
    .spec_mem_rmask(spec_insn_jalr_mem_rmask),
    .spec_mem_wmask(spec_insn_jalr_mem_wmask),
    .spec_mem_wdata(spec_insn_jalr_mem_wdata)
  );

  wire                                spec_insn_lb_valid;
  wire                                spec_insn_lb_trap;
  wire [                       4 : 0] spec_insn_lb_rs1_addr;
  wire [                       4 : 0] spec_insn_lb_rs2_addr;
  wire [                       4 : 0] spec_insn_lb_rd_addr;
  wire [32   - 1 : 0] spec_insn_lb_rd_wdata;
  wire [32   - 1 : 0] spec_insn_lb_pc_wdata;
  wire [32   - 1 : 0] spec_insn_lb_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_lb_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_lb_mem_wmask;
  wire [32   - 1 : 0] spec_insn_lb_mem_wdata;

  RVFIMonitor_insn_lb insn_lb (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_lb_valid),
    .spec_trap(spec_insn_lb_trap),
    .spec_rs1_addr(spec_insn_lb_rs1_addr),
    .spec_rs2_addr(spec_insn_lb_rs2_addr),
    .spec_rd_addr(spec_insn_lb_rd_addr),
    .spec_rd_wdata(spec_insn_lb_rd_wdata),
    .spec_pc_wdata(spec_insn_lb_pc_wdata),
    .spec_mem_addr(spec_insn_lb_mem_addr),
    .spec_mem_rmask(spec_insn_lb_mem_rmask),
    .spec_mem_wmask(spec_insn_lb_mem_wmask),
    .spec_mem_wdata(spec_insn_lb_mem_wdata)
  );

  wire                                spec_insn_lbu_valid;
  wire                                spec_insn_lbu_trap;
  wire [                       4 : 0] spec_insn_lbu_rs1_addr;
  wire [                       4 : 0] spec_insn_lbu_rs2_addr;
  wire [                       4 : 0] spec_insn_lbu_rd_addr;
  wire [32   - 1 : 0] spec_insn_lbu_rd_wdata;
  wire [32   - 1 : 0] spec_insn_lbu_pc_wdata;
  wire [32   - 1 : 0] spec_insn_lbu_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_lbu_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_lbu_mem_wmask;
  wire [32   - 1 : 0] spec_insn_lbu_mem_wdata;

  RVFIMonitor_insn_lbu insn_lbu (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_lbu_valid),
    .spec_trap(spec_insn_lbu_trap),
    .spec_rs1_addr(spec_insn_lbu_rs1_addr),
    .spec_rs2_addr(spec_insn_lbu_rs2_addr),
    .spec_rd_addr(spec_insn_lbu_rd_addr),
    .spec_rd_wdata(spec_insn_lbu_rd_wdata),
    .spec_pc_wdata(spec_insn_lbu_pc_wdata),
    .spec_mem_addr(spec_insn_lbu_mem_addr),
    .spec_mem_rmask(spec_insn_lbu_mem_rmask),
    .spec_mem_wmask(spec_insn_lbu_mem_wmask),
    .spec_mem_wdata(spec_insn_lbu_mem_wdata)
  );

  wire                                spec_insn_lh_valid;
  wire                                spec_insn_lh_trap;
  wire [                       4 : 0] spec_insn_lh_rs1_addr;
  wire [                       4 : 0] spec_insn_lh_rs2_addr;
  wire [                       4 : 0] spec_insn_lh_rd_addr;
  wire [32   - 1 : 0] spec_insn_lh_rd_wdata;
  wire [32   - 1 : 0] spec_insn_lh_pc_wdata;
  wire [32   - 1 : 0] spec_insn_lh_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_lh_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_lh_mem_wmask;
  wire [32   - 1 : 0] spec_insn_lh_mem_wdata;

  RVFIMonitor_insn_lh insn_lh (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_lh_valid),
    .spec_trap(spec_insn_lh_trap),
    .spec_rs1_addr(spec_insn_lh_rs1_addr),
    .spec_rs2_addr(spec_insn_lh_rs2_addr),
    .spec_rd_addr(spec_insn_lh_rd_addr),
    .spec_rd_wdata(spec_insn_lh_rd_wdata),
    .spec_pc_wdata(spec_insn_lh_pc_wdata),
    .spec_mem_addr(spec_insn_lh_mem_addr),
    .spec_mem_rmask(spec_insn_lh_mem_rmask),
    .spec_mem_wmask(spec_insn_lh_mem_wmask),
    .spec_mem_wdata(spec_insn_lh_mem_wdata)
  );

  wire                                spec_insn_lhu_valid;
  wire                                spec_insn_lhu_trap;
  wire [                       4 : 0] spec_insn_lhu_rs1_addr;
  wire [                       4 : 0] spec_insn_lhu_rs2_addr;
  wire [                       4 : 0] spec_insn_lhu_rd_addr;
  wire [32   - 1 : 0] spec_insn_lhu_rd_wdata;
  wire [32   - 1 : 0] spec_insn_lhu_pc_wdata;
  wire [32   - 1 : 0] spec_insn_lhu_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_lhu_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_lhu_mem_wmask;
  wire [32   - 1 : 0] spec_insn_lhu_mem_wdata;

  RVFIMonitor_insn_lhu insn_lhu (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_lhu_valid),
    .spec_trap(spec_insn_lhu_trap),
    .spec_rs1_addr(spec_insn_lhu_rs1_addr),
    .spec_rs2_addr(spec_insn_lhu_rs2_addr),
    .spec_rd_addr(spec_insn_lhu_rd_addr),
    .spec_rd_wdata(spec_insn_lhu_rd_wdata),
    .spec_pc_wdata(spec_insn_lhu_pc_wdata),
    .spec_mem_addr(spec_insn_lhu_mem_addr),
    .spec_mem_rmask(spec_insn_lhu_mem_rmask),
    .spec_mem_wmask(spec_insn_lhu_mem_wmask),
    .spec_mem_wdata(spec_insn_lhu_mem_wdata)
  );

  wire                                spec_insn_lui_valid;
  wire                                spec_insn_lui_trap;
  wire [                       4 : 0] spec_insn_lui_rs1_addr;
  wire [                       4 : 0] spec_insn_lui_rs2_addr;
  wire [                       4 : 0] spec_insn_lui_rd_addr;
  wire [32   - 1 : 0] spec_insn_lui_rd_wdata;
  wire [32   - 1 : 0] spec_insn_lui_pc_wdata;
  wire [32   - 1 : 0] spec_insn_lui_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_lui_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_lui_mem_wmask;
  wire [32   - 1 : 0] spec_insn_lui_mem_wdata;

  RVFIMonitor_insn_lui insn_lui (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_lui_valid),
    .spec_trap(spec_insn_lui_trap),
    .spec_rs1_addr(spec_insn_lui_rs1_addr),
    .spec_rs2_addr(spec_insn_lui_rs2_addr),
    .spec_rd_addr(spec_insn_lui_rd_addr),
    .spec_rd_wdata(spec_insn_lui_rd_wdata),
    .spec_pc_wdata(spec_insn_lui_pc_wdata),
    .spec_mem_addr(spec_insn_lui_mem_addr),
    .spec_mem_rmask(spec_insn_lui_mem_rmask),
    .spec_mem_wmask(spec_insn_lui_mem_wmask),
    .spec_mem_wdata(spec_insn_lui_mem_wdata)
  );

  wire                                spec_insn_lw_valid;
  wire                                spec_insn_lw_trap;
  wire [                       4 : 0] spec_insn_lw_rs1_addr;
  wire [                       4 : 0] spec_insn_lw_rs2_addr;
  wire [                       4 : 0] spec_insn_lw_rd_addr;
  wire [32   - 1 : 0] spec_insn_lw_rd_wdata;
  wire [32   - 1 : 0] spec_insn_lw_pc_wdata;
  wire [32   - 1 : 0] spec_insn_lw_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_lw_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_lw_mem_wmask;
  wire [32   - 1 : 0] spec_insn_lw_mem_wdata;

  RVFIMonitor_insn_lw insn_lw (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_lw_valid),
    .spec_trap(spec_insn_lw_trap),
    .spec_rs1_addr(spec_insn_lw_rs1_addr),
    .spec_rs2_addr(spec_insn_lw_rs2_addr),
    .spec_rd_addr(spec_insn_lw_rd_addr),
    .spec_rd_wdata(spec_insn_lw_rd_wdata),
    .spec_pc_wdata(spec_insn_lw_pc_wdata),
    .spec_mem_addr(spec_insn_lw_mem_addr),
    .spec_mem_rmask(spec_insn_lw_mem_rmask),
    .spec_mem_wmask(spec_insn_lw_mem_wmask),
    .spec_mem_wdata(spec_insn_lw_mem_wdata)
  );

  wire                                spec_insn_or_valid;
  wire                                spec_insn_or_trap;
  wire [                       4 : 0] spec_insn_or_rs1_addr;
  wire [                       4 : 0] spec_insn_or_rs2_addr;
  wire [                       4 : 0] spec_insn_or_rd_addr;
  wire [32   - 1 : 0] spec_insn_or_rd_wdata;
  wire [32   - 1 : 0] spec_insn_or_pc_wdata;
  wire [32   - 1 : 0] spec_insn_or_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_or_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_or_mem_wmask;
  wire [32   - 1 : 0] spec_insn_or_mem_wdata;

  RVFIMonitor_insn_or insn_or (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_or_valid),
    .spec_trap(spec_insn_or_trap),
    .spec_rs1_addr(spec_insn_or_rs1_addr),
    .spec_rs2_addr(spec_insn_or_rs2_addr),
    .spec_rd_addr(spec_insn_or_rd_addr),
    .spec_rd_wdata(spec_insn_or_rd_wdata),
    .spec_pc_wdata(spec_insn_or_pc_wdata),
    .spec_mem_addr(spec_insn_or_mem_addr),
    .spec_mem_rmask(spec_insn_or_mem_rmask),
    .spec_mem_wmask(spec_insn_or_mem_wmask),
    .spec_mem_wdata(spec_insn_or_mem_wdata)
  );

  wire                                spec_insn_ori_valid;
  wire                                spec_insn_ori_trap;
  wire [                       4 : 0] spec_insn_ori_rs1_addr;
  wire [                       4 : 0] spec_insn_ori_rs2_addr;
  wire [                       4 : 0] spec_insn_ori_rd_addr;
  wire [32   - 1 : 0] spec_insn_ori_rd_wdata;
  wire [32   - 1 : 0] spec_insn_ori_pc_wdata;
  wire [32   - 1 : 0] spec_insn_ori_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_ori_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_ori_mem_wmask;
  wire [32   - 1 : 0] spec_insn_ori_mem_wdata;

  RVFIMonitor_insn_ori insn_ori (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_ori_valid),
    .spec_trap(spec_insn_ori_trap),
    .spec_rs1_addr(spec_insn_ori_rs1_addr),
    .spec_rs2_addr(spec_insn_ori_rs2_addr),
    .spec_rd_addr(spec_insn_ori_rd_addr),
    .spec_rd_wdata(spec_insn_ori_rd_wdata),
    .spec_pc_wdata(spec_insn_ori_pc_wdata),
    .spec_mem_addr(spec_insn_ori_mem_addr),
    .spec_mem_rmask(spec_insn_ori_mem_rmask),
    .spec_mem_wmask(spec_insn_ori_mem_wmask),
    .spec_mem_wdata(spec_insn_ori_mem_wdata)
  );

  wire                                spec_insn_sb_valid;
  wire                                spec_insn_sb_trap;
  wire [                       4 : 0] spec_insn_sb_rs1_addr;
  wire [                       4 : 0] spec_insn_sb_rs2_addr;
  wire [                       4 : 0] spec_insn_sb_rd_addr;
  wire [32   - 1 : 0] spec_insn_sb_rd_wdata;
  wire [32   - 1 : 0] spec_insn_sb_pc_wdata;
  wire [32   - 1 : 0] spec_insn_sb_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_sb_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_sb_mem_wmask;
  wire [32   - 1 : 0] spec_insn_sb_mem_wdata;

  RVFIMonitor_insn_sb insn_sb (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_sb_valid),
    .spec_trap(spec_insn_sb_trap),
    .spec_rs1_addr(spec_insn_sb_rs1_addr),
    .spec_rs2_addr(spec_insn_sb_rs2_addr),
    .spec_rd_addr(spec_insn_sb_rd_addr),
    .spec_rd_wdata(spec_insn_sb_rd_wdata),
    .spec_pc_wdata(spec_insn_sb_pc_wdata),
    .spec_mem_addr(spec_insn_sb_mem_addr),
    .spec_mem_rmask(spec_insn_sb_mem_rmask),
    .spec_mem_wmask(spec_insn_sb_mem_wmask),
    .spec_mem_wdata(spec_insn_sb_mem_wdata)
  );

  wire                                spec_insn_sh_valid;
  wire                                spec_insn_sh_trap;
  wire [                       4 : 0] spec_insn_sh_rs1_addr;
  wire [                       4 : 0] spec_insn_sh_rs2_addr;
  wire [                       4 : 0] spec_insn_sh_rd_addr;
  wire [32   - 1 : 0] spec_insn_sh_rd_wdata;
  wire [32   - 1 : 0] spec_insn_sh_pc_wdata;
  wire [32   - 1 : 0] spec_insn_sh_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_sh_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_sh_mem_wmask;
  wire [32   - 1 : 0] spec_insn_sh_mem_wdata;

  RVFIMonitor_insn_sh insn_sh (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_sh_valid),
    .spec_trap(spec_insn_sh_trap),
    .spec_rs1_addr(spec_insn_sh_rs1_addr),
    .spec_rs2_addr(spec_insn_sh_rs2_addr),
    .spec_rd_addr(spec_insn_sh_rd_addr),
    .spec_rd_wdata(spec_insn_sh_rd_wdata),
    .spec_pc_wdata(spec_insn_sh_pc_wdata),
    .spec_mem_addr(spec_insn_sh_mem_addr),
    .spec_mem_rmask(spec_insn_sh_mem_rmask),
    .spec_mem_wmask(spec_insn_sh_mem_wmask),
    .spec_mem_wdata(spec_insn_sh_mem_wdata)
  );

  wire                                spec_insn_sll_valid;
  wire                                spec_insn_sll_trap;
  wire [                       4 : 0] spec_insn_sll_rs1_addr;
  wire [                       4 : 0] spec_insn_sll_rs2_addr;
  wire [                       4 : 0] spec_insn_sll_rd_addr;
  wire [32   - 1 : 0] spec_insn_sll_rd_wdata;
  wire [32   - 1 : 0] spec_insn_sll_pc_wdata;
  wire [32   - 1 : 0] spec_insn_sll_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_sll_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_sll_mem_wmask;
  wire [32   - 1 : 0] spec_insn_sll_mem_wdata;

  RVFIMonitor_insn_sll insn_sll (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_sll_valid),
    .spec_trap(spec_insn_sll_trap),
    .spec_rs1_addr(spec_insn_sll_rs1_addr),
    .spec_rs2_addr(spec_insn_sll_rs2_addr),
    .spec_rd_addr(spec_insn_sll_rd_addr),
    .spec_rd_wdata(spec_insn_sll_rd_wdata),
    .spec_pc_wdata(spec_insn_sll_pc_wdata),
    .spec_mem_addr(spec_insn_sll_mem_addr),
    .spec_mem_rmask(spec_insn_sll_mem_rmask),
    .spec_mem_wmask(spec_insn_sll_mem_wmask),
    .spec_mem_wdata(spec_insn_sll_mem_wdata)
  );

  wire                                spec_insn_slli_valid;
  wire                                spec_insn_slli_trap;
  wire [                       4 : 0] spec_insn_slli_rs1_addr;
  wire [                       4 : 0] spec_insn_slli_rs2_addr;
  wire [                       4 : 0] spec_insn_slli_rd_addr;
  wire [32   - 1 : 0] spec_insn_slli_rd_wdata;
  wire [32   - 1 : 0] spec_insn_slli_pc_wdata;
  wire [32   - 1 : 0] spec_insn_slli_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_slli_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_slli_mem_wmask;
  wire [32   - 1 : 0] spec_insn_slli_mem_wdata;

  RVFIMonitor_insn_slli insn_slli (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_slli_valid),
    .spec_trap(spec_insn_slli_trap),
    .spec_rs1_addr(spec_insn_slli_rs1_addr),
    .spec_rs2_addr(spec_insn_slli_rs2_addr),
    .spec_rd_addr(spec_insn_slli_rd_addr),
    .spec_rd_wdata(spec_insn_slli_rd_wdata),
    .spec_pc_wdata(spec_insn_slli_pc_wdata),
    .spec_mem_addr(spec_insn_slli_mem_addr),
    .spec_mem_rmask(spec_insn_slli_mem_rmask),
    .spec_mem_wmask(spec_insn_slli_mem_wmask),
    .spec_mem_wdata(spec_insn_slli_mem_wdata)
  );

  wire                                spec_insn_slt_valid;
  wire                                spec_insn_slt_trap;
  wire [                       4 : 0] spec_insn_slt_rs1_addr;
  wire [                       4 : 0] spec_insn_slt_rs2_addr;
  wire [                       4 : 0] spec_insn_slt_rd_addr;
  wire [32   - 1 : 0] spec_insn_slt_rd_wdata;
  wire [32   - 1 : 0] spec_insn_slt_pc_wdata;
  wire [32   - 1 : 0] spec_insn_slt_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_slt_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_slt_mem_wmask;
  wire [32   - 1 : 0] spec_insn_slt_mem_wdata;

  RVFIMonitor_insn_slt insn_slt (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_slt_valid),
    .spec_trap(spec_insn_slt_trap),
    .spec_rs1_addr(spec_insn_slt_rs1_addr),
    .spec_rs2_addr(spec_insn_slt_rs2_addr),
    .spec_rd_addr(spec_insn_slt_rd_addr),
    .spec_rd_wdata(spec_insn_slt_rd_wdata),
    .spec_pc_wdata(spec_insn_slt_pc_wdata),
    .spec_mem_addr(spec_insn_slt_mem_addr),
    .spec_mem_rmask(spec_insn_slt_mem_rmask),
    .spec_mem_wmask(spec_insn_slt_mem_wmask),
    .spec_mem_wdata(spec_insn_slt_mem_wdata)
  );

  wire                                spec_insn_slti_valid;
  wire                                spec_insn_slti_trap;
  wire [                       4 : 0] spec_insn_slti_rs1_addr;
  wire [                       4 : 0] spec_insn_slti_rs2_addr;
  wire [                       4 : 0] spec_insn_slti_rd_addr;
  wire [32   - 1 : 0] spec_insn_slti_rd_wdata;
  wire [32   - 1 : 0] spec_insn_slti_pc_wdata;
  wire [32   - 1 : 0] spec_insn_slti_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_slti_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_slti_mem_wmask;
  wire [32   - 1 : 0] spec_insn_slti_mem_wdata;

  RVFIMonitor_insn_slti insn_slti (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_slti_valid),
    .spec_trap(spec_insn_slti_trap),
    .spec_rs1_addr(spec_insn_slti_rs1_addr),
    .spec_rs2_addr(spec_insn_slti_rs2_addr),
    .spec_rd_addr(spec_insn_slti_rd_addr),
    .spec_rd_wdata(spec_insn_slti_rd_wdata),
    .spec_pc_wdata(spec_insn_slti_pc_wdata),
    .spec_mem_addr(spec_insn_slti_mem_addr),
    .spec_mem_rmask(spec_insn_slti_mem_rmask),
    .spec_mem_wmask(spec_insn_slti_mem_wmask),
    .spec_mem_wdata(spec_insn_slti_mem_wdata)
  );

  wire                                spec_insn_sltiu_valid;
  wire                                spec_insn_sltiu_trap;
  wire [                       4 : 0] spec_insn_sltiu_rs1_addr;
  wire [                       4 : 0] spec_insn_sltiu_rs2_addr;
  wire [                       4 : 0] spec_insn_sltiu_rd_addr;
  wire [32   - 1 : 0] spec_insn_sltiu_rd_wdata;
  wire [32   - 1 : 0] spec_insn_sltiu_pc_wdata;
  wire [32   - 1 : 0] spec_insn_sltiu_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_sltiu_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_sltiu_mem_wmask;
  wire [32   - 1 : 0] spec_insn_sltiu_mem_wdata;

  RVFIMonitor_insn_sltiu insn_sltiu (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_sltiu_valid),
    .spec_trap(spec_insn_sltiu_trap),
    .spec_rs1_addr(spec_insn_sltiu_rs1_addr),
    .spec_rs2_addr(spec_insn_sltiu_rs2_addr),
    .spec_rd_addr(spec_insn_sltiu_rd_addr),
    .spec_rd_wdata(spec_insn_sltiu_rd_wdata),
    .spec_pc_wdata(spec_insn_sltiu_pc_wdata),
    .spec_mem_addr(spec_insn_sltiu_mem_addr),
    .spec_mem_rmask(spec_insn_sltiu_mem_rmask),
    .spec_mem_wmask(spec_insn_sltiu_mem_wmask),
    .spec_mem_wdata(spec_insn_sltiu_mem_wdata)
  );

  wire                                spec_insn_sltu_valid;
  wire                                spec_insn_sltu_trap;
  wire [                       4 : 0] spec_insn_sltu_rs1_addr;
  wire [                       4 : 0] spec_insn_sltu_rs2_addr;
  wire [                       4 : 0] spec_insn_sltu_rd_addr;
  wire [32   - 1 : 0] spec_insn_sltu_rd_wdata;
  wire [32   - 1 : 0] spec_insn_sltu_pc_wdata;
  wire [32   - 1 : 0] spec_insn_sltu_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_sltu_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_sltu_mem_wmask;
  wire [32   - 1 : 0] spec_insn_sltu_mem_wdata;

  RVFIMonitor_insn_sltu insn_sltu (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_sltu_valid),
    .spec_trap(spec_insn_sltu_trap),
    .spec_rs1_addr(spec_insn_sltu_rs1_addr),
    .spec_rs2_addr(spec_insn_sltu_rs2_addr),
    .spec_rd_addr(spec_insn_sltu_rd_addr),
    .spec_rd_wdata(spec_insn_sltu_rd_wdata),
    .spec_pc_wdata(spec_insn_sltu_pc_wdata),
    .spec_mem_addr(spec_insn_sltu_mem_addr),
    .spec_mem_rmask(spec_insn_sltu_mem_rmask),
    .spec_mem_wmask(spec_insn_sltu_mem_wmask),
    .spec_mem_wdata(spec_insn_sltu_mem_wdata)
  );

  wire                                spec_insn_sra_valid;
  wire                                spec_insn_sra_trap;
  wire [                       4 : 0] spec_insn_sra_rs1_addr;
  wire [                       4 : 0] spec_insn_sra_rs2_addr;
  wire [                       4 : 0] spec_insn_sra_rd_addr;
  wire [32   - 1 : 0] spec_insn_sra_rd_wdata;
  wire [32   - 1 : 0] spec_insn_sra_pc_wdata;
  wire [32   - 1 : 0] spec_insn_sra_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_sra_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_sra_mem_wmask;
  wire [32   - 1 : 0] spec_insn_sra_mem_wdata;

  RVFIMonitor_insn_sra insn_sra (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_sra_valid),
    .spec_trap(spec_insn_sra_trap),
    .spec_rs1_addr(spec_insn_sra_rs1_addr),
    .spec_rs2_addr(spec_insn_sra_rs2_addr),
    .spec_rd_addr(spec_insn_sra_rd_addr),
    .spec_rd_wdata(spec_insn_sra_rd_wdata),
    .spec_pc_wdata(spec_insn_sra_pc_wdata),
    .spec_mem_addr(spec_insn_sra_mem_addr),
    .spec_mem_rmask(spec_insn_sra_mem_rmask),
    .spec_mem_wmask(spec_insn_sra_mem_wmask),
    .spec_mem_wdata(spec_insn_sra_mem_wdata)
  );

  wire                                spec_insn_srai_valid;
  wire                                spec_insn_srai_trap;
  wire [                       4 : 0] spec_insn_srai_rs1_addr;
  wire [                       4 : 0] spec_insn_srai_rs2_addr;
  wire [                       4 : 0] spec_insn_srai_rd_addr;
  wire [32   - 1 : 0] spec_insn_srai_rd_wdata;
  wire [32   - 1 : 0] spec_insn_srai_pc_wdata;
  wire [32   - 1 : 0] spec_insn_srai_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_srai_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_srai_mem_wmask;
  wire [32   - 1 : 0] spec_insn_srai_mem_wdata;

  RVFIMonitor_insn_srai insn_srai (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_srai_valid),
    .spec_trap(spec_insn_srai_trap),
    .spec_rs1_addr(spec_insn_srai_rs1_addr),
    .spec_rs2_addr(spec_insn_srai_rs2_addr),
    .spec_rd_addr(spec_insn_srai_rd_addr),
    .spec_rd_wdata(spec_insn_srai_rd_wdata),
    .spec_pc_wdata(spec_insn_srai_pc_wdata),
    .spec_mem_addr(spec_insn_srai_mem_addr),
    .spec_mem_rmask(spec_insn_srai_mem_rmask),
    .spec_mem_wmask(spec_insn_srai_mem_wmask),
    .spec_mem_wdata(spec_insn_srai_mem_wdata)
  );

  wire                                spec_insn_srl_valid;
  wire                                spec_insn_srl_trap;
  wire [                       4 : 0] spec_insn_srl_rs1_addr;
  wire [                       4 : 0] spec_insn_srl_rs2_addr;
  wire [                       4 : 0] spec_insn_srl_rd_addr;
  wire [32   - 1 : 0] spec_insn_srl_rd_wdata;
  wire [32   - 1 : 0] spec_insn_srl_pc_wdata;
  wire [32   - 1 : 0] spec_insn_srl_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_srl_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_srl_mem_wmask;
  wire [32   - 1 : 0] spec_insn_srl_mem_wdata;

  RVFIMonitor_insn_srl insn_srl (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_srl_valid),
    .spec_trap(spec_insn_srl_trap),
    .spec_rs1_addr(spec_insn_srl_rs1_addr),
    .spec_rs2_addr(spec_insn_srl_rs2_addr),
    .spec_rd_addr(spec_insn_srl_rd_addr),
    .spec_rd_wdata(spec_insn_srl_rd_wdata),
    .spec_pc_wdata(spec_insn_srl_pc_wdata),
    .spec_mem_addr(spec_insn_srl_mem_addr),
    .spec_mem_rmask(spec_insn_srl_mem_rmask),
    .spec_mem_wmask(spec_insn_srl_mem_wmask),
    .spec_mem_wdata(spec_insn_srl_mem_wdata)
  );

  wire                                spec_insn_srli_valid;
  wire                                spec_insn_srli_trap;
  wire [                       4 : 0] spec_insn_srli_rs1_addr;
  wire [                       4 : 0] spec_insn_srli_rs2_addr;
  wire [                       4 : 0] spec_insn_srli_rd_addr;
  wire [32   - 1 : 0] spec_insn_srli_rd_wdata;
  wire [32   - 1 : 0] spec_insn_srli_pc_wdata;
  wire [32   - 1 : 0] spec_insn_srli_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_srli_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_srli_mem_wmask;
  wire [32   - 1 : 0] spec_insn_srli_mem_wdata;

  RVFIMonitor_insn_srli insn_srli (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_srli_valid),
    .spec_trap(spec_insn_srli_trap),
    .spec_rs1_addr(spec_insn_srli_rs1_addr),
    .spec_rs2_addr(spec_insn_srli_rs2_addr),
    .spec_rd_addr(spec_insn_srli_rd_addr),
    .spec_rd_wdata(spec_insn_srli_rd_wdata),
    .spec_pc_wdata(spec_insn_srli_pc_wdata),
    .spec_mem_addr(spec_insn_srli_mem_addr),
    .spec_mem_rmask(spec_insn_srli_mem_rmask),
    .spec_mem_wmask(spec_insn_srli_mem_wmask),
    .spec_mem_wdata(spec_insn_srli_mem_wdata)
  );

  wire                                spec_insn_sub_valid;
  wire                                spec_insn_sub_trap;
  wire [                       4 : 0] spec_insn_sub_rs1_addr;
  wire [                       4 : 0] spec_insn_sub_rs2_addr;
  wire [                       4 : 0] spec_insn_sub_rd_addr;
  wire [32   - 1 : 0] spec_insn_sub_rd_wdata;
  wire [32   - 1 : 0] spec_insn_sub_pc_wdata;
  wire [32   - 1 : 0] spec_insn_sub_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_sub_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_sub_mem_wmask;
  wire [32   - 1 : 0] spec_insn_sub_mem_wdata;

  RVFIMonitor_insn_sub insn_sub (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_sub_valid),
    .spec_trap(spec_insn_sub_trap),
    .spec_rs1_addr(spec_insn_sub_rs1_addr),
    .spec_rs2_addr(spec_insn_sub_rs2_addr),
    .spec_rd_addr(spec_insn_sub_rd_addr),
    .spec_rd_wdata(spec_insn_sub_rd_wdata),
    .spec_pc_wdata(spec_insn_sub_pc_wdata),
    .spec_mem_addr(spec_insn_sub_mem_addr),
    .spec_mem_rmask(spec_insn_sub_mem_rmask),
    .spec_mem_wmask(spec_insn_sub_mem_wmask),
    .spec_mem_wdata(spec_insn_sub_mem_wdata)
  );

  wire                                spec_insn_sw_valid;
  wire                                spec_insn_sw_trap;
  wire [                       4 : 0] spec_insn_sw_rs1_addr;
  wire [                       4 : 0] spec_insn_sw_rs2_addr;
  wire [                       4 : 0] spec_insn_sw_rd_addr;
  wire [32   - 1 : 0] spec_insn_sw_rd_wdata;
  wire [32   - 1 : 0] spec_insn_sw_pc_wdata;
  wire [32   - 1 : 0] spec_insn_sw_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_sw_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_sw_mem_wmask;
  wire [32   - 1 : 0] spec_insn_sw_mem_wdata;

  RVFIMonitor_insn_sw insn_sw (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_sw_valid),
    .spec_trap(spec_insn_sw_trap),
    .spec_rs1_addr(spec_insn_sw_rs1_addr),
    .spec_rs2_addr(spec_insn_sw_rs2_addr),
    .spec_rd_addr(spec_insn_sw_rd_addr),
    .spec_rd_wdata(spec_insn_sw_rd_wdata),
    .spec_pc_wdata(spec_insn_sw_pc_wdata),
    .spec_mem_addr(spec_insn_sw_mem_addr),
    .spec_mem_rmask(spec_insn_sw_mem_rmask),
    .spec_mem_wmask(spec_insn_sw_mem_wmask),
    .spec_mem_wdata(spec_insn_sw_mem_wdata)
  );

  wire                                spec_insn_xor_valid;
  wire                                spec_insn_xor_trap;
  wire [                       4 : 0] spec_insn_xor_rs1_addr;
  wire [                       4 : 0] spec_insn_xor_rs2_addr;
  wire [                       4 : 0] spec_insn_xor_rd_addr;
  wire [32   - 1 : 0] spec_insn_xor_rd_wdata;
  wire [32   - 1 : 0] spec_insn_xor_pc_wdata;
  wire [32   - 1 : 0] spec_insn_xor_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_xor_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_xor_mem_wmask;
  wire [32   - 1 : 0] spec_insn_xor_mem_wdata;

  RVFIMonitor_insn_xor insn_xor (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_xor_valid),
    .spec_trap(spec_insn_xor_trap),
    .spec_rs1_addr(spec_insn_xor_rs1_addr),
    .spec_rs2_addr(spec_insn_xor_rs2_addr),
    .spec_rd_addr(spec_insn_xor_rd_addr),
    .spec_rd_wdata(spec_insn_xor_rd_wdata),
    .spec_pc_wdata(spec_insn_xor_pc_wdata),
    .spec_mem_addr(spec_insn_xor_mem_addr),
    .spec_mem_rmask(spec_insn_xor_mem_rmask),
    .spec_mem_wmask(spec_insn_xor_mem_wmask),
    .spec_mem_wdata(spec_insn_xor_mem_wdata)
  );

  wire                                spec_insn_xori_valid;
  wire                                spec_insn_xori_trap;
  wire [                       4 : 0] spec_insn_xori_rs1_addr;
  wire [                       4 : 0] spec_insn_xori_rs2_addr;
  wire [                       4 : 0] spec_insn_xori_rd_addr;
  wire [32   - 1 : 0] spec_insn_xori_rd_wdata;
  wire [32   - 1 : 0] spec_insn_xori_pc_wdata;
  wire [32   - 1 : 0] spec_insn_xori_mem_addr;
  wire [32/8 - 1 : 0] spec_insn_xori_mem_rmask;
  wire [32/8 - 1 : 0] spec_insn_xori_mem_wmask;
  wire [32   - 1 : 0] spec_insn_xori_mem_wdata;

  RVFIMonitor_insn_xori insn_xori (
    .rvfi_valid(rvfi_valid),
    .rvfi_insn(rvfi_insn),
    .rvfi_pc_rdata(rvfi_pc_rdata),
    .rvfi_rs1_rdata(rvfi_rs1_rdata),
    .rvfi_rs2_rdata(rvfi_rs2_rdata),
    .rvfi_mem_rdata(rvfi_mem_rdata),
    .spec_valid(spec_insn_xori_valid),
    .spec_trap(spec_insn_xori_trap),
    .spec_rs1_addr(spec_insn_xori_rs1_addr),
    .spec_rs2_addr(spec_insn_xori_rs2_addr),
    .spec_rd_addr(spec_insn_xori_rd_addr),
    .spec_rd_wdata(spec_insn_xori_rd_wdata),
    .spec_pc_wdata(spec_insn_xori_pc_wdata),
    .spec_mem_addr(spec_insn_xori_mem_addr),
    .spec_mem_rmask(spec_insn_xori_mem_rmask),
    .spec_mem_wmask(spec_insn_xori_mem_wmask),
    .spec_mem_wdata(spec_insn_xori_mem_wdata)
  );

  assign spec_valid =
		spec_insn_add_valid ? spec_insn_add_valid :
		spec_insn_addi_valid ? spec_insn_addi_valid :
		spec_insn_and_valid ? spec_insn_and_valid :
		spec_insn_andi_valid ? spec_insn_andi_valid :
		spec_insn_auipc_valid ? spec_insn_auipc_valid :
		spec_insn_beq_valid ? spec_insn_beq_valid :
		spec_insn_bge_valid ? spec_insn_bge_valid :
		spec_insn_bgeu_valid ? spec_insn_bgeu_valid :
		spec_insn_blt_valid ? spec_insn_blt_valid :
		spec_insn_bltu_valid ? spec_insn_bltu_valid :
		spec_insn_bne_valid ? spec_insn_bne_valid :
		spec_insn_jal_valid ? spec_insn_jal_valid :
		spec_insn_jalr_valid ? spec_insn_jalr_valid :
		spec_insn_lb_valid ? spec_insn_lb_valid :
		spec_insn_lbu_valid ? spec_insn_lbu_valid :
		spec_insn_lh_valid ? spec_insn_lh_valid :
		spec_insn_lhu_valid ? spec_insn_lhu_valid :
		spec_insn_lui_valid ? spec_insn_lui_valid :
		spec_insn_lw_valid ? spec_insn_lw_valid :
		spec_insn_or_valid ? spec_insn_or_valid :
		spec_insn_ori_valid ? spec_insn_ori_valid :
		spec_insn_sb_valid ? spec_insn_sb_valid :
		spec_insn_sh_valid ? spec_insn_sh_valid :
		spec_insn_sll_valid ? spec_insn_sll_valid :
		spec_insn_slli_valid ? spec_insn_slli_valid :
		spec_insn_slt_valid ? spec_insn_slt_valid :
		spec_insn_slti_valid ? spec_insn_slti_valid :
		spec_insn_sltiu_valid ? spec_insn_sltiu_valid :
		spec_insn_sltu_valid ? spec_insn_sltu_valid :
		spec_insn_sra_valid ? spec_insn_sra_valid :
		spec_insn_srai_valid ? spec_insn_srai_valid :
		spec_insn_srl_valid ? spec_insn_srl_valid :
		spec_insn_srli_valid ? spec_insn_srli_valid :
		spec_insn_sub_valid ? spec_insn_sub_valid :
		spec_insn_sw_valid ? spec_insn_sw_valid :
		spec_insn_xor_valid ? spec_insn_xor_valid :
		spec_insn_xori_valid ? spec_insn_xori_valid : 0;
  assign spec_trap =
		spec_insn_add_valid ? spec_insn_add_trap :
		spec_insn_addi_valid ? spec_insn_addi_trap :
		spec_insn_and_valid ? spec_insn_and_trap :
		spec_insn_andi_valid ? spec_insn_andi_trap :
		spec_insn_auipc_valid ? spec_insn_auipc_trap :
		spec_insn_beq_valid ? spec_insn_beq_trap :
		spec_insn_bge_valid ? spec_insn_bge_trap :
		spec_insn_bgeu_valid ? spec_insn_bgeu_trap :
		spec_insn_blt_valid ? spec_insn_blt_trap :
		spec_insn_bltu_valid ? spec_insn_bltu_trap :
		spec_insn_bne_valid ? spec_insn_bne_trap :
		spec_insn_jal_valid ? spec_insn_jal_trap :
		spec_insn_jalr_valid ? spec_insn_jalr_trap :
		spec_insn_lb_valid ? spec_insn_lb_trap :
		spec_insn_lbu_valid ? spec_insn_lbu_trap :
		spec_insn_lh_valid ? spec_insn_lh_trap :
		spec_insn_lhu_valid ? spec_insn_lhu_trap :
		spec_insn_lui_valid ? spec_insn_lui_trap :
		spec_insn_lw_valid ? spec_insn_lw_trap :
		spec_insn_or_valid ? spec_insn_or_trap :
		spec_insn_ori_valid ? spec_insn_ori_trap :
		spec_insn_sb_valid ? spec_insn_sb_trap :
		spec_insn_sh_valid ? spec_insn_sh_trap :
		spec_insn_sll_valid ? spec_insn_sll_trap :
		spec_insn_slli_valid ? spec_insn_slli_trap :
		spec_insn_slt_valid ? spec_insn_slt_trap :
		spec_insn_slti_valid ? spec_insn_slti_trap :
		spec_insn_sltiu_valid ? spec_insn_sltiu_trap :
		spec_insn_sltu_valid ? spec_insn_sltu_trap :
		spec_insn_sra_valid ? spec_insn_sra_trap :
		spec_insn_srai_valid ? spec_insn_srai_trap :
		spec_insn_srl_valid ? spec_insn_srl_trap :
		spec_insn_srli_valid ? spec_insn_srli_trap :
		spec_insn_sub_valid ? spec_insn_sub_trap :
		spec_insn_sw_valid ? spec_insn_sw_trap :
		spec_insn_xor_valid ? spec_insn_xor_trap :
		spec_insn_xori_valid ? spec_insn_xori_trap : 0;
  assign spec_rs1_addr =
		spec_insn_add_valid ? spec_insn_add_rs1_addr :
		spec_insn_addi_valid ? spec_insn_addi_rs1_addr :
		spec_insn_and_valid ? spec_insn_and_rs1_addr :
		spec_insn_andi_valid ? spec_insn_andi_rs1_addr :
		spec_insn_auipc_valid ? spec_insn_auipc_rs1_addr :
		spec_insn_beq_valid ? spec_insn_beq_rs1_addr :
		spec_insn_bge_valid ? spec_insn_bge_rs1_addr :
		spec_insn_bgeu_valid ? spec_insn_bgeu_rs1_addr :
		spec_insn_blt_valid ? spec_insn_blt_rs1_addr :
		spec_insn_bltu_valid ? spec_insn_bltu_rs1_addr :
		spec_insn_bne_valid ? spec_insn_bne_rs1_addr :
		spec_insn_jal_valid ? spec_insn_jal_rs1_addr :
		spec_insn_jalr_valid ? spec_insn_jalr_rs1_addr :
		spec_insn_lb_valid ? spec_insn_lb_rs1_addr :
		spec_insn_lbu_valid ? spec_insn_lbu_rs1_addr :
		spec_insn_lh_valid ? spec_insn_lh_rs1_addr :
		spec_insn_lhu_valid ? spec_insn_lhu_rs1_addr :
		spec_insn_lui_valid ? spec_insn_lui_rs1_addr :
		spec_insn_lw_valid ? spec_insn_lw_rs1_addr :
		spec_insn_or_valid ? spec_insn_or_rs1_addr :
		spec_insn_ori_valid ? spec_insn_ori_rs1_addr :
		spec_insn_sb_valid ? spec_insn_sb_rs1_addr :
		spec_insn_sh_valid ? spec_insn_sh_rs1_addr :
		spec_insn_sll_valid ? spec_insn_sll_rs1_addr :
		spec_insn_slli_valid ? spec_insn_slli_rs1_addr :
		spec_insn_slt_valid ? spec_insn_slt_rs1_addr :
		spec_insn_slti_valid ? spec_insn_slti_rs1_addr :
		spec_insn_sltiu_valid ? spec_insn_sltiu_rs1_addr :
		spec_insn_sltu_valid ? spec_insn_sltu_rs1_addr :
		spec_insn_sra_valid ? spec_insn_sra_rs1_addr :
		spec_insn_srai_valid ? spec_insn_srai_rs1_addr :
		spec_insn_srl_valid ? spec_insn_srl_rs1_addr :
		spec_insn_srli_valid ? spec_insn_srli_rs1_addr :
		spec_insn_sub_valid ? spec_insn_sub_rs1_addr :
		spec_insn_sw_valid ? spec_insn_sw_rs1_addr :
		spec_insn_xor_valid ? spec_insn_xor_rs1_addr :
		spec_insn_xori_valid ? spec_insn_xori_rs1_addr : 0;
  assign spec_rs2_addr =
		spec_insn_add_valid ? spec_insn_add_rs2_addr :
		spec_insn_addi_valid ? spec_insn_addi_rs2_addr :
		spec_insn_and_valid ? spec_insn_and_rs2_addr :
		spec_insn_andi_valid ? spec_insn_andi_rs2_addr :
		spec_insn_auipc_valid ? spec_insn_auipc_rs2_addr :
		spec_insn_beq_valid ? spec_insn_beq_rs2_addr :
		spec_insn_bge_valid ? spec_insn_bge_rs2_addr :
		spec_insn_bgeu_valid ? spec_insn_bgeu_rs2_addr :
		spec_insn_blt_valid ? spec_insn_blt_rs2_addr :
		spec_insn_bltu_valid ? spec_insn_bltu_rs2_addr :
		spec_insn_bne_valid ? spec_insn_bne_rs2_addr :
		spec_insn_jal_valid ? spec_insn_jal_rs2_addr :
		spec_insn_jalr_valid ? spec_insn_jalr_rs2_addr :
		spec_insn_lb_valid ? spec_insn_lb_rs2_addr :
		spec_insn_lbu_valid ? spec_insn_lbu_rs2_addr :
		spec_insn_lh_valid ? spec_insn_lh_rs2_addr :
		spec_insn_lhu_valid ? spec_insn_lhu_rs2_addr :
		spec_insn_lui_valid ? spec_insn_lui_rs2_addr :
		spec_insn_lw_valid ? spec_insn_lw_rs2_addr :
		spec_insn_or_valid ? spec_insn_or_rs2_addr :
		spec_insn_ori_valid ? spec_insn_ori_rs2_addr :
		spec_insn_sb_valid ? spec_insn_sb_rs2_addr :
		spec_insn_sh_valid ? spec_insn_sh_rs2_addr :
		spec_insn_sll_valid ? spec_insn_sll_rs2_addr :
		spec_insn_slli_valid ? spec_insn_slli_rs2_addr :
		spec_insn_slt_valid ? spec_insn_slt_rs2_addr :
		spec_insn_slti_valid ? spec_insn_slti_rs2_addr :
		spec_insn_sltiu_valid ? spec_insn_sltiu_rs2_addr :
		spec_insn_sltu_valid ? spec_insn_sltu_rs2_addr :
		spec_insn_sra_valid ? spec_insn_sra_rs2_addr :
		spec_insn_srai_valid ? spec_insn_srai_rs2_addr :
		spec_insn_srl_valid ? spec_insn_srl_rs2_addr :
		spec_insn_srli_valid ? spec_insn_srli_rs2_addr :
		spec_insn_sub_valid ? spec_insn_sub_rs2_addr :
		spec_insn_sw_valid ? spec_insn_sw_rs2_addr :
		spec_insn_xor_valid ? spec_insn_xor_rs2_addr :
		spec_insn_xori_valid ? spec_insn_xori_rs2_addr : 0;
  assign spec_rd_addr =
		spec_insn_add_valid ? spec_insn_add_rd_addr :
		spec_insn_addi_valid ? spec_insn_addi_rd_addr :
		spec_insn_and_valid ? spec_insn_and_rd_addr :
		spec_insn_andi_valid ? spec_insn_andi_rd_addr :
		spec_insn_auipc_valid ? spec_insn_auipc_rd_addr :
		spec_insn_beq_valid ? spec_insn_beq_rd_addr :
		spec_insn_bge_valid ? spec_insn_bge_rd_addr :
		spec_insn_bgeu_valid ? spec_insn_bgeu_rd_addr :
		spec_insn_blt_valid ? spec_insn_blt_rd_addr :
		spec_insn_bltu_valid ? spec_insn_bltu_rd_addr :
		spec_insn_bne_valid ? spec_insn_bne_rd_addr :
		spec_insn_jal_valid ? spec_insn_jal_rd_addr :
		spec_insn_jalr_valid ? spec_insn_jalr_rd_addr :
		spec_insn_lb_valid ? spec_insn_lb_rd_addr :
		spec_insn_lbu_valid ? spec_insn_lbu_rd_addr :
		spec_insn_lh_valid ? spec_insn_lh_rd_addr :
		spec_insn_lhu_valid ? spec_insn_lhu_rd_addr :
		spec_insn_lui_valid ? spec_insn_lui_rd_addr :
		spec_insn_lw_valid ? spec_insn_lw_rd_addr :
		spec_insn_or_valid ? spec_insn_or_rd_addr :
		spec_insn_ori_valid ? spec_insn_ori_rd_addr :
		spec_insn_sb_valid ? spec_insn_sb_rd_addr :
		spec_insn_sh_valid ? spec_insn_sh_rd_addr :
		spec_insn_sll_valid ? spec_insn_sll_rd_addr :
		spec_insn_slli_valid ? spec_insn_slli_rd_addr :
		spec_insn_slt_valid ? spec_insn_slt_rd_addr :
		spec_insn_slti_valid ? spec_insn_slti_rd_addr :
		spec_insn_sltiu_valid ? spec_insn_sltiu_rd_addr :
		spec_insn_sltu_valid ? spec_insn_sltu_rd_addr :
		spec_insn_sra_valid ? spec_insn_sra_rd_addr :
		spec_insn_srai_valid ? spec_insn_srai_rd_addr :
		spec_insn_srl_valid ? spec_insn_srl_rd_addr :
		spec_insn_srli_valid ? spec_insn_srli_rd_addr :
		spec_insn_sub_valid ? spec_insn_sub_rd_addr :
		spec_insn_sw_valid ? spec_insn_sw_rd_addr :
		spec_insn_xor_valid ? spec_insn_xor_rd_addr :
		spec_insn_xori_valid ? spec_insn_xori_rd_addr : 0;
  assign spec_rd_wdata =
		spec_insn_add_valid ? spec_insn_add_rd_wdata :
		spec_insn_addi_valid ? spec_insn_addi_rd_wdata :
		spec_insn_and_valid ? spec_insn_and_rd_wdata :
		spec_insn_andi_valid ? spec_insn_andi_rd_wdata :
		spec_insn_auipc_valid ? spec_insn_auipc_rd_wdata :
		spec_insn_beq_valid ? spec_insn_beq_rd_wdata :
		spec_insn_bge_valid ? spec_insn_bge_rd_wdata :
		spec_insn_bgeu_valid ? spec_insn_bgeu_rd_wdata :
		spec_insn_blt_valid ? spec_insn_blt_rd_wdata :
		spec_insn_bltu_valid ? spec_insn_bltu_rd_wdata :
		spec_insn_bne_valid ? spec_insn_bne_rd_wdata :
		spec_insn_jal_valid ? spec_insn_jal_rd_wdata :
		spec_insn_jalr_valid ? spec_insn_jalr_rd_wdata :
		spec_insn_lb_valid ? spec_insn_lb_rd_wdata :
		spec_insn_lbu_valid ? spec_insn_lbu_rd_wdata :
		spec_insn_lh_valid ? spec_insn_lh_rd_wdata :
		spec_insn_lhu_valid ? spec_insn_lhu_rd_wdata :
		spec_insn_lui_valid ? spec_insn_lui_rd_wdata :
		spec_insn_lw_valid ? spec_insn_lw_rd_wdata :
		spec_insn_or_valid ? spec_insn_or_rd_wdata :
		spec_insn_ori_valid ? spec_insn_ori_rd_wdata :
		spec_insn_sb_valid ? spec_insn_sb_rd_wdata :
		spec_insn_sh_valid ? spec_insn_sh_rd_wdata :
		spec_insn_sll_valid ? spec_insn_sll_rd_wdata :
		spec_insn_slli_valid ? spec_insn_slli_rd_wdata :
		spec_insn_slt_valid ? spec_insn_slt_rd_wdata :
		spec_insn_slti_valid ? spec_insn_slti_rd_wdata :
		spec_insn_sltiu_valid ? spec_insn_sltiu_rd_wdata :
		spec_insn_sltu_valid ? spec_insn_sltu_rd_wdata :
		spec_insn_sra_valid ? spec_insn_sra_rd_wdata :
		spec_insn_srai_valid ? spec_insn_srai_rd_wdata :
		spec_insn_srl_valid ? spec_insn_srl_rd_wdata :
		spec_insn_srli_valid ? spec_insn_srli_rd_wdata :
		spec_insn_sub_valid ? spec_insn_sub_rd_wdata :
		spec_insn_sw_valid ? spec_insn_sw_rd_wdata :
		spec_insn_xor_valid ? spec_insn_xor_rd_wdata :
		spec_insn_xori_valid ? spec_insn_xori_rd_wdata : 0;
  assign spec_pc_wdata =
		spec_insn_add_valid ? spec_insn_add_pc_wdata :
		spec_insn_addi_valid ? spec_insn_addi_pc_wdata :
		spec_insn_and_valid ? spec_insn_and_pc_wdata :
		spec_insn_andi_valid ? spec_insn_andi_pc_wdata :
		spec_insn_auipc_valid ? spec_insn_auipc_pc_wdata :
		spec_insn_beq_valid ? spec_insn_beq_pc_wdata :
		spec_insn_bge_valid ? spec_insn_bge_pc_wdata :
		spec_insn_bgeu_valid ? spec_insn_bgeu_pc_wdata :
		spec_insn_blt_valid ? spec_insn_blt_pc_wdata :
		spec_insn_bltu_valid ? spec_insn_bltu_pc_wdata :
		spec_insn_bne_valid ? spec_insn_bne_pc_wdata :
		spec_insn_jal_valid ? spec_insn_jal_pc_wdata :
		spec_insn_jalr_valid ? spec_insn_jalr_pc_wdata :
		spec_insn_lb_valid ? spec_insn_lb_pc_wdata :
		spec_insn_lbu_valid ? spec_insn_lbu_pc_wdata :
		spec_insn_lh_valid ? spec_insn_lh_pc_wdata :
		spec_insn_lhu_valid ? spec_insn_lhu_pc_wdata :
		spec_insn_lui_valid ? spec_insn_lui_pc_wdata :
		spec_insn_lw_valid ? spec_insn_lw_pc_wdata :
		spec_insn_or_valid ? spec_insn_or_pc_wdata :
		spec_insn_ori_valid ? spec_insn_ori_pc_wdata :
		spec_insn_sb_valid ? spec_insn_sb_pc_wdata :
		spec_insn_sh_valid ? spec_insn_sh_pc_wdata :
		spec_insn_sll_valid ? spec_insn_sll_pc_wdata :
		spec_insn_slli_valid ? spec_insn_slli_pc_wdata :
		spec_insn_slt_valid ? spec_insn_slt_pc_wdata :
		spec_insn_slti_valid ? spec_insn_slti_pc_wdata :
		spec_insn_sltiu_valid ? spec_insn_sltiu_pc_wdata :
		spec_insn_sltu_valid ? spec_insn_sltu_pc_wdata :
		spec_insn_sra_valid ? spec_insn_sra_pc_wdata :
		spec_insn_srai_valid ? spec_insn_srai_pc_wdata :
		spec_insn_srl_valid ? spec_insn_srl_pc_wdata :
		spec_insn_srli_valid ? spec_insn_srli_pc_wdata :
		spec_insn_sub_valid ? spec_insn_sub_pc_wdata :
		spec_insn_sw_valid ? spec_insn_sw_pc_wdata :
		spec_insn_xor_valid ? spec_insn_xor_pc_wdata :
		spec_insn_xori_valid ? spec_insn_xori_pc_wdata : 0;
  assign spec_mem_addr =
		spec_insn_add_valid ? spec_insn_add_mem_addr :
		spec_insn_addi_valid ? spec_insn_addi_mem_addr :
		spec_insn_and_valid ? spec_insn_and_mem_addr :
		spec_insn_andi_valid ? spec_insn_andi_mem_addr :
		spec_insn_auipc_valid ? spec_insn_auipc_mem_addr :
		spec_insn_beq_valid ? spec_insn_beq_mem_addr :
		spec_insn_bge_valid ? spec_insn_bge_mem_addr :
		spec_insn_bgeu_valid ? spec_insn_bgeu_mem_addr :
		spec_insn_blt_valid ? spec_insn_blt_mem_addr :
		spec_insn_bltu_valid ? spec_insn_bltu_mem_addr :
		spec_insn_bne_valid ? spec_insn_bne_mem_addr :
		spec_insn_jal_valid ? spec_insn_jal_mem_addr :
		spec_insn_jalr_valid ? spec_insn_jalr_mem_addr :
		spec_insn_lb_valid ? spec_insn_lb_mem_addr :
		spec_insn_lbu_valid ? spec_insn_lbu_mem_addr :
		spec_insn_lh_valid ? spec_insn_lh_mem_addr :
		spec_insn_lhu_valid ? spec_insn_lhu_mem_addr :
		spec_insn_lui_valid ? spec_insn_lui_mem_addr :
		spec_insn_lw_valid ? spec_insn_lw_mem_addr :
		spec_insn_or_valid ? spec_insn_or_mem_addr :
		spec_insn_ori_valid ? spec_insn_ori_mem_addr :
		spec_insn_sb_valid ? spec_insn_sb_mem_addr :
		spec_insn_sh_valid ? spec_insn_sh_mem_addr :
		spec_insn_sll_valid ? spec_insn_sll_mem_addr :
		spec_insn_slli_valid ? spec_insn_slli_mem_addr :
		spec_insn_slt_valid ? spec_insn_slt_mem_addr :
		spec_insn_slti_valid ? spec_insn_slti_mem_addr :
		spec_insn_sltiu_valid ? spec_insn_sltiu_mem_addr :
		spec_insn_sltu_valid ? spec_insn_sltu_mem_addr :
		spec_insn_sra_valid ? spec_insn_sra_mem_addr :
		spec_insn_srai_valid ? spec_insn_srai_mem_addr :
		spec_insn_srl_valid ? spec_insn_srl_mem_addr :
		spec_insn_srli_valid ? spec_insn_srli_mem_addr :
		spec_insn_sub_valid ? spec_insn_sub_mem_addr :
		spec_insn_sw_valid ? spec_insn_sw_mem_addr :
		spec_insn_xor_valid ? spec_insn_xor_mem_addr :
		spec_insn_xori_valid ? spec_insn_xori_mem_addr : 0;
  assign spec_mem_rmask =
		spec_insn_add_valid ? spec_insn_add_mem_rmask :
		spec_insn_addi_valid ? spec_insn_addi_mem_rmask :
		spec_insn_and_valid ? spec_insn_and_mem_rmask :
		spec_insn_andi_valid ? spec_insn_andi_mem_rmask :
		spec_insn_auipc_valid ? spec_insn_auipc_mem_rmask :
		spec_insn_beq_valid ? spec_insn_beq_mem_rmask :
		spec_insn_bge_valid ? spec_insn_bge_mem_rmask :
		spec_insn_bgeu_valid ? spec_insn_bgeu_mem_rmask :
		spec_insn_blt_valid ? spec_insn_blt_mem_rmask :
		spec_insn_bltu_valid ? spec_insn_bltu_mem_rmask :
		spec_insn_bne_valid ? spec_insn_bne_mem_rmask :
		spec_insn_jal_valid ? spec_insn_jal_mem_rmask :
		spec_insn_jalr_valid ? spec_insn_jalr_mem_rmask :
		spec_insn_lb_valid ? spec_insn_lb_mem_rmask :
		spec_insn_lbu_valid ? spec_insn_lbu_mem_rmask :
		spec_insn_lh_valid ? spec_insn_lh_mem_rmask :
		spec_insn_lhu_valid ? spec_insn_lhu_mem_rmask :
		spec_insn_lui_valid ? spec_insn_lui_mem_rmask :
		spec_insn_lw_valid ? spec_insn_lw_mem_rmask :
		spec_insn_or_valid ? spec_insn_or_mem_rmask :
		spec_insn_ori_valid ? spec_insn_ori_mem_rmask :
		spec_insn_sb_valid ? spec_insn_sb_mem_rmask :
		spec_insn_sh_valid ? spec_insn_sh_mem_rmask :
		spec_insn_sll_valid ? spec_insn_sll_mem_rmask :
		spec_insn_slli_valid ? spec_insn_slli_mem_rmask :
		spec_insn_slt_valid ? spec_insn_slt_mem_rmask :
		spec_insn_slti_valid ? spec_insn_slti_mem_rmask :
		spec_insn_sltiu_valid ? spec_insn_sltiu_mem_rmask :
		spec_insn_sltu_valid ? spec_insn_sltu_mem_rmask :
		spec_insn_sra_valid ? spec_insn_sra_mem_rmask :
		spec_insn_srai_valid ? spec_insn_srai_mem_rmask :
		spec_insn_srl_valid ? spec_insn_srl_mem_rmask :
		spec_insn_srli_valid ? spec_insn_srli_mem_rmask :
		spec_insn_sub_valid ? spec_insn_sub_mem_rmask :
		spec_insn_sw_valid ? spec_insn_sw_mem_rmask :
		spec_insn_xor_valid ? spec_insn_xor_mem_rmask :
		spec_insn_xori_valid ? spec_insn_xori_mem_rmask : 0;
  assign spec_mem_wmask =
		spec_insn_add_valid ? spec_insn_add_mem_wmask :
		spec_insn_addi_valid ? spec_insn_addi_mem_wmask :
		spec_insn_and_valid ? spec_insn_and_mem_wmask :
		spec_insn_andi_valid ? spec_insn_andi_mem_wmask :
		spec_insn_auipc_valid ? spec_insn_auipc_mem_wmask :
		spec_insn_beq_valid ? spec_insn_beq_mem_wmask :
		spec_insn_bge_valid ? spec_insn_bge_mem_wmask :
		spec_insn_bgeu_valid ? spec_insn_bgeu_mem_wmask :
		spec_insn_blt_valid ? spec_insn_blt_mem_wmask :
		spec_insn_bltu_valid ? spec_insn_bltu_mem_wmask :
		spec_insn_bne_valid ? spec_insn_bne_mem_wmask :
		spec_insn_jal_valid ? spec_insn_jal_mem_wmask :
		spec_insn_jalr_valid ? spec_insn_jalr_mem_wmask :
		spec_insn_lb_valid ? spec_insn_lb_mem_wmask :
		spec_insn_lbu_valid ? spec_insn_lbu_mem_wmask :
		spec_insn_lh_valid ? spec_insn_lh_mem_wmask :
		spec_insn_lhu_valid ? spec_insn_lhu_mem_wmask :
		spec_insn_lui_valid ? spec_insn_lui_mem_wmask :
		spec_insn_lw_valid ? spec_insn_lw_mem_wmask :
		spec_insn_or_valid ? spec_insn_or_mem_wmask :
		spec_insn_ori_valid ? spec_insn_ori_mem_wmask :
		spec_insn_sb_valid ? spec_insn_sb_mem_wmask :
		spec_insn_sh_valid ? spec_insn_sh_mem_wmask :
		spec_insn_sll_valid ? spec_insn_sll_mem_wmask :
		spec_insn_slli_valid ? spec_insn_slli_mem_wmask :
		spec_insn_slt_valid ? spec_insn_slt_mem_wmask :
		spec_insn_slti_valid ? spec_insn_slti_mem_wmask :
		spec_insn_sltiu_valid ? spec_insn_sltiu_mem_wmask :
		spec_insn_sltu_valid ? spec_insn_sltu_mem_wmask :
		spec_insn_sra_valid ? spec_insn_sra_mem_wmask :
		spec_insn_srai_valid ? spec_insn_srai_mem_wmask :
		spec_insn_srl_valid ? spec_insn_srl_mem_wmask :
		spec_insn_srli_valid ? spec_insn_srli_mem_wmask :
		spec_insn_sub_valid ? spec_insn_sub_mem_wmask :
		spec_insn_sw_valid ? spec_insn_sw_mem_wmask :
		spec_insn_xor_valid ? spec_insn_xor_mem_wmask :
		spec_insn_xori_valid ? spec_insn_xori_mem_wmask : 0;
  assign spec_mem_wdata =
		spec_insn_add_valid ? spec_insn_add_mem_wdata :
		spec_insn_addi_valid ? spec_insn_addi_mem_wdata :
		spec_insn_and_valid ? spec_insn_and_mem_wdata :
		spec_insn_andi_valid ? spec_insn_andi_mem_wdata :
		spec_insn_auipc_valid ? spec_insn_auipc_mem_wdata :
		spec_insn_beq_valid ? spec_insn_beq_mem_wdata :
		spec_insn_bge_valid ? spec_insn_bge_mem_wdata :
		spec_insn_bgeu_valid ? spec_insn_bgeu_mem_wdata :
		spec_insn_blt_valid ? spec_insn_blt_mem_wdata :
		spec_insn_bltu_valid ? spec_insn_bltu_mem_wdata :
		spec_insn_bne_valid ? spec_insn_bne_mem_wdata :
		spec_insn_jal_valid ? spec_insn_jal_mem_wdata :
		spec_insn_jalr_valid ? spec_insn_jalr_mem_wdata :
		spec_insn_lb_valid ? spec_insn_lb_mem_wdata :
		spec_insn_lbu_valid ? spec_insn_lbu_mem_wdata :
		spec_insn_lh_valid ? spec_insn_lh_mem_wdata :
		spec_insn_lhu_valid ? spec_insn_lhu_mem_wdata :
		spec_insn_lui_valid ? spec_insn_lui_mem_wdata :
		spec_insn_lw_valid ? spec_insn_lw_mem_wdata :
		spec_insn_or_valid ? spec_insn_or_mem_wdata :
		spec_insn_ori_valid ? spec_insn_ori_mem_wdata :
		spec_insn_sb_valid ? spec_insn_sb_mem_wdata :
		spec_insn_sh_valid ? spec_insn_sh_mem_wdata :
		spec_insn_sll_valid ? spec_insn_sll_mem_wdata :
		spec_insn_slli_valid ? spec_insn_slli_mem_wdata :
		spec_insn_slt_valid ? spec_insn_slt_mem_wdata :
		spec_insn_slti_valid ? spec_insn_slti_mem_wdata :
		spec_insn_sltiu_valid ? spec_insn_sltiu_mem_wdata :
		spec_insn_sltu_valid ? spec_insn_sltu_mem_wdata :
		spec_insn_sra_valid ? spec_insn_sra_mem_wdata :
		spec_insn_srai_valid ? spec_insn_srai_mem_wdata :
		spec_insn_srl_valid ? spec_insn_srl_mem_wdata :
		spec_insn_srli_valid ? spec_insn_srli_mem_wdata :
		spec_insn_sub_valid ? spec_insn_sub_mem_wdata :
		spec_insn_sw_valid ? spec_insn_sw_mem_wdata :
		spec_insn_xor_valid ? spec_insn_xor_mem_wdata :
		spec_insn_xori_valid ? spec_insn_xori_mem_wdata : 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_add (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // R-type instruction format
  wire [6:0] insn_funct7 = rvfi_insn[31:25];
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // ADD instruction
  wire [32-1:0] result = rvfi_rs1_rdata + rvfi_rs2_rdata;
  assign spec_valid = rvfi_valid && insn_funct7 == 7'b 0000000 && insn_funct3 == 3'b 000 && insn_opcode == 7'b 0110011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_addi (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // I-type instruction format
  wire [32-1:0] insn_imm = $signed(rvfi_insn[31:20]);
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // ADDI instruction
  wire [32-1:0] result = rvfi_rs1_rdata + insn_imm;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 000 && insn_opcode == 7'b 0010011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_rs2_addr = 0;
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_and (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // R-type instruction format
  wire [6:0] insn_funct7 = rvfi_insn[31:25];
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // AND instruction
  wire [32-1:0] result = rvfi_rs1_rdata & rvfi_rs2_rdata;
  assign spec_valid = rvfi_valid && insn_funct7 == 7'b 0000000 && insn_funct3 == 3'b 111 && insn_opcode == 7'b 0110011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_andi (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // I-type instruction format
  wire [32-1:0] insn_imm = $signed(rvfi_insn[31:20]);
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // ANDI instruction
  wire [32-1:0] result = rvfi_rs1_rdata & insn_imm;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 111 && insn_opcode == 7'b 0010011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_rs2_addr = 0;
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_auipc (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // U-type instruction format
  wire [32-1:0] insn_imm = $signed({rvfi_insn[31:12], 12'b0});
  wire [4:0] insn_rd     = rvfi_insn[11:7];
  wire [6:0] insn_opcode = rvfi_insn[ 6:0];

  // AUIPC instruction
  assign spec_valid = rvfi_valid && insn_opcode == 7'b 0010111;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? rvfi_pc_rdata + insn_imm : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_rs1_addr = 0;
  assign spec_rs2_addr = 0;
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_beq (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // SB-type instruction format
  wire [32-1:0] insn_imm = $signed({rvfi_insn[31], rvfi_insn[7], rvfi_insn[30:25], rvfi_insn[11:8], 1'b0});
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // BEQ instruction
  wire cond = rvfi_rs1_rdata == rvfi_rs2_rdata;
  wire [32-1:0] next_pc = cond ? rvfi_pc_rdata + insn_imm : rvfi_pc_rdata + 4;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 000 && insn_opcode == 7'b 1100011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_pc_wdata = next_pc;
  assign spec_trap = next_pc[1:0] != 0;

  // default assignments
  assign spec_rd_addr = 0;
  assign spec_rd_wdata = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_bge (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // SB-type instruction format
  wire [32-1:0] insn_imm = $signed({rvfi_insn[31], rvfi_insn[7], rvfi_insn[30:25], rvfi_insn[11:8], 1'b0});
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // BGE instruction
  wire cond = $signed(rvfi_rs1_rdata) >= $signed(rvfi_rs2_rdata);
  wire [32-1:0] next_pc = cond ? rvfi_pc_rdata + insn_imm : rvfi_pc_rdata + 4;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 101 && insn_opcode == 7'b 1100011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_pc_wdata = next_pc;
  assign spec_trap = next_pc[1:0] != 0;

  // default assignments
  assign spec_rd_addr = 0;
  assign spec_rd_wdata = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_bgeu (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // SB-type instruction format
  wire [32-1:0] insn_imm = $signed({rvfi_insn[31], rvfi_insn[7], rvfi_insn[30:25], rvfi_insn[11:8], 1'b0});
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // BGEU instruction
  wire cond = rvfi_rs1_rdata >= rvfi_rs2_rdata;
  wire [32-1:0] next_pc = cond ? rvfi_pc_rdata + insn_imm : rvfi_pc_rdata + 4;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 111 && insn_opcode == 7'b 1100011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_pc_wdata = next_pc;
  assign spec_trap = next_pc[1:0] != 0;

  // default assignments
  assign spec_rd_addr = 0;
  assign spec_rd_wdata = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_blt (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // SB-type instruction format
  wire [32-1:0] insn_imm = $signed({rvfi_insn[31], rvfi_insn[7], rvfi_insn[30:25], rvfi_insn[11:8], 1'b0});
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // BLT instruction
  wire cond = $signed(rvfi_rs1_rdata) < $signed(rvfi_rs2_rdata);
  wire [32-1:0] next_pc = cond ? rvfi_pc_rdata + insn_imm : rvfi_pc_rdata + 4;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 100 && insn_opcode == 7'b 1100011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_pc_wdata = next_pc;
  assign spec_trap = next_pc[1:0] != 0;

  // default assignments
  assign spec_rd_addr = 0;
  assign spec_rd_wdata = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_bltu (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // SB-type instruction format
  wire [32-1:0] insn_imm = $signed({rvfi_insn[31], rvfi_insn[7], rvfi_insn[30:25], rvfi_insn[11:8], 1'b0});
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // BLTU instruction
  wire cond = rvfi_rs1_rdata < rvfi_rs2_rdata;
  wire [32-1:0] next_pc = cond ? rvfi_pc_rdata + insn_imm : rvfi_pc_rdata + 4;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 110 && insn_opcode == 7'b 1100011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_pc_wdata = next_pc;
  assign spec_trap = next_pc[1:0] != 0;

  // default assignments
  assign spec_rd_addr = 0;
  assign spec_rd_wdata = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_bne (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // SB-type instruction format
  wire [32-1:0] insn_imm = $signed({rvfi_insn[31], rvfi_insn[7], rvfi_insn[30:25], rvfi_insn[11:8], 1'b0});
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // BNE instruction
  wire cond = rvfi_rs1_rdata != rvfi_rs2_rdata;
  wire [32-1:0] next_pc = cond ? rvfi_pc_rdata + insn_imm : rvfi_pc_rdata + 4;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 001 && insn_opcode == 7'b 1100011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_pc_wdata = next_pc;
  assign spec_trap = next_pc[1:0] != 0;

  // default assignments
  assign spec_rd_addr = 0;
  assign spec_rd_wdata = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_jal (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // UJ-type instruction format
  wire [32-1:0] insn_imm = $signed({rvfi_insn[31], rvfi_insn[19:12], rvfi_insn[20], rvfi_insn[30:21], 1'b0});
  wire [4:0] insn_rd     = rvfi_insn[11:7];
  wire [6:0] insn_opcode = rvfi_insn[6:0];

  // JAL instruction
  wire [32-1:0] next_pc = rvfi_pc_rdata + insn_imm;
  assign spec_valid = rvfi_valid && insn_opcode == 7'b 1101111;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? rvfi_pc_rdata + 4 : 0;
  assign spec_pc_wdata = next_pc;
  assign spec_trap = next_pc[1:0] != 0;

  // default assignments
  assign spec_rs1_addr = 0;
  assign spec_rs2_addr = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_jalr (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // I-type instruction format
  wire [32-1:0] insn_imm = $signed(rvfi_insn[31:20]);
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // JALR instruction
  wire [32-1:0] next_pc = (rvfi_rs1_rdata + insn_imm) & ~1;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 000 && insn_opcode == 7'b 1100111;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? rvfi_pc_rdata + 4 : 0;
  assign spec_pc_wdata = next_pc;
  assign spec_trap = next_pc[1:0] != 0;

  // default assignments
  assign spec_rs2_addr = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_lb (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // I-type instruction format
  wire [32-1:0] insn_imm = $signed(rvfi_insn[31:20]);
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // LB instruction
  wire [32-1:0] addr = rvfi_rs1_rdata + insn_imm;
  wire [7:0] result = rvfi_mem_rdata;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 000 && insn_opcode == 7'b 0000011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rd_addr = insn_rd;
  assign spec_mem_addr = addr;
  assign spec_mem_rmask = ((1 << 1)-1);
  assign spec_rd_wdata = spec_rd_addr ? $signed(result) : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;
  assign spec_trap = 0;

  // default assignments
  assign spec_rs2_addr = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_lbu (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // I-type instruction format
  wire [32-1:0] insn_imm = $signed(rvfi_insn[31:20]);
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // LBU instruction
  wire [32-1:0] addr = rvfi_rs1_rdata + insn_imm;
  wire [7:0] result = rvfi_mem_rdata;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 100 && insn_opcode == 7'b 0000011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rd_addr = insn_rd;
  assign spec_mem_addr = addr;
  assign spec_mem_rmask = ((1 << 1)-1);
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;
  assign spec_trap = 0;

  // default assignments
  assign spec_rs2_addr = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_lh (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // I-type instruction format
  wire [32-1:0] insn_imm = $signed(rvfi_insn[31:20]);
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // LH instruction
  wire [32-1:0] addr = rvfi_rs1_rdata + insn_imm;
  wire [15:0] result = rvfi_mem_rdata;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 001 && insn_opcode == 7'b 0000011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rd_addr = insn_rd;
  assign spec_mem_addr = addr;
  assign spec_mem_rmask = ((1 << 2)-1);
  assign spec_rd_wdata = spec_rd_addr ? $signed(result) : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;
  assign spec_trap = 0;

  // default assignments
  assign spec_rs2_addr = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_lhu (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // I-type instruction format
  wire [32-1:0] insn_imm = $signed(rvfi_insn[31:20]);
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // LHU instruction
  wire [32-1:0] addr = rvfi_rs1_rdata + insn_imm;
  wire [15:0] result = rvfi_mem_rdata;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 101 && insn_opcode == 7'b 0000011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rd_addr = insn_rd;
  assign spec_mem_addr = addr;
  assign spec_mem_rmask = ((1 << 2)-1);
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;
  assign spec_trap = 0;

  // default assignments
  assign spec_rs2_addr = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_lui (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // U-type instruction format
  wire [32-1:0] insn_imm = $signed({rvfi_insn[31:12], 12'b0});
  wire [4:0] insn_rd     = rvfi_insn[11:7];
  wire [6:0] insn_opcode = rvfi_insn[ 6:0];

  // LUI instruction
  assign spec_valid = rvfi_valid && insn_opcode == 7'b 0110111;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? insn_imm : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_rs1_addr = 0;
  assign spec_rs2_addr = 0;
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_lw (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // I-type instruction format
  wire [32-1:0] insn_imm = $signed(rvfi_insn[31:20]);
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // LW instruction
  wire [32-1:0] addr = rvfi_rs1_rdata + insn_imm;
  wire [31:0] result = rvfi_mem_rdata;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 010 && insn_opcode == 7'b 0000011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rd_addr = insn_rd;
  assign spec_mem_addr = addr;
  assign spec_mem_rmask = ((1 << 4)-1);
  assign spec_rd_wdata = spec_rd_addr ? $signed(result) : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;
  assign spec_trap = 0;

  // default assignments
  assign spec_rs2_addr = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_or (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // R-type instruction format
  wire [6:0] insn_funct7 = rvfi_insn[31:25];
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // OR instruction
  wire [32-1:0] result = rvfi_rs1_rdata | rvfi_rs2_rdata;
  assign spec_valid = rvfi_valid && insn_funct7 == 7'b 0000000 && insn_funct3 == 3'b 110 && insn_opcode == 7'b 0110011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_ori (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // I-type instruction format
  wire [32-1:0] insn_imm = $signed(rvfi_insn[31:20]);
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // ORI instruction
  wire [32-1:0] result = rvfi_rs1_rdata | insn_imm;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 110 && insn_opcode == 7'b 0010011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_rs2_addr = 0;
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_sb (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // S-type instruction format
  wire [32-1:0] insn_imm = $signed({rvfi_insn[31:25], rvfi_insn[11:7]});
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // SB instruction
  wire [32-1:0] addr = rvfi_rs1_rdata + insn_imm;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 000 && insn_opcode == 7'b 0100011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_mem_addr = addr;
  assign spec_mem_wmask = ((1 << 1)-1);
  assign spec_mem_wdata = rvfi_rs2_rdata;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;
  assign spec_trap = 0;

  // default assignments
  assign spec_rd_addr = 0;
  assign spec_rd_wdata = 0;
  assign spec_mem_rmask = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_sh (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // S-type instruction format
  wire [32-1:0] insn_imm = $signed({rvfi_insn[31:25], rvfi_insn[11:7]});
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // SH instruction
  wire [32-1:0] addr = rvfi_rs1_rdata + insn_imm;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 001 && insn_opcode == 7'b 0100011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_mem_addr = addr;
  assign spec_mem_wmask = ((1 << 2)-1);
  assign spec_mem_wdata = rvfi_rs2_rdata;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;
  assign spec_trap = 0;

  // default assignments
  assign spec_rd_addr = 0;
  assign spec_rd_wdata = 0;
  assign spec_mem_rmask = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_sll (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // R-type instruction format
  wire [6:0] insn_funct7 = rvfi_insn[31:25];
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // SLL instruction
  wire [32-1:0] result = rvfi_rs1_rdata << rvfi_rs2_rdata[4:0];
  assign spec_valid = rvfi_valid && insn_funct7 == 7'b 0000000 && insn_funct3 == 3'b 001 && insn_opcode == 7'b 0110011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_slli (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // I-type instruction format (shift variation)
  wire [6:0] insn_funct6 = rvfi_insn[31:26];
  wire [5:0] insn_shamt  = rvfi_insn[25:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // SLLI instruction
  wire [32-1:0] result = rvfi_rs1_rdata << insn_shamt;
  assign spec_valid = rvfi_valid && insn_funct6 == 6'b 000000 && insn_funct3 == 3'b 001 && insn_opcode == 7'b 0010011 && (!insn_shamt[5] || 32 == 64);
  assign spec_rs1_addr = insn_rs1;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_rs2_addr = 0;
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_slt (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // R-type instruction format
  wire [6:0] insn_funct7 = rvfi_insn[31:25];
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // SLT instruction
  wire [32-1:0] result = $signed(rvfi_rs1_rdata) < $signed(rvfi_rs2_rdata);
  assign spec_valid = rvfi_valid && insn_funct7 == 7'b 0000000 && insn_funct3 == 3'b 010 && insn_opcode == 7'b 0110011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_slti (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // I-type instruction format
  wire [32-1:0] insn_imm = $signed(rvfi_insn[31:20]);
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // SLTI instruction
  wire [32-1:0] result = $signed(rvfi_rs1_rdata) < $signed(insn_imm);
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 010 && insn_opcode == 7'b 0010011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_rs2_addr = 0;
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_sltiu (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // I-type instruction format
  wire [32-1:0] insn_imm = $signed(rvfi_insn[31:20]);
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // SLTIU instruction
  wire [32-1:0] result = rvfi_rs1_rdata < insn_imm;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 011 && insn_opcode == 7'b 0010011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_rs2_addr = 0;
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_sltu (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // R-type instruction format
  wire [6:0] insn_funct7 = rvfi_insn[31:25];
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // SLTU instruction
  wire [32-1:0] result = rvfi_rs1_rdata < rvfi_rs2_rdata;
  assign spec_valid = rvfi_valid && insn_funct7 == 7'b 0000000 && insn_funct3 == 3'b 011 && insn_opcode == 7'b 0110011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_sra (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // R-type instruction format
  wire [6:0] insn_funct7 = rvfi_insn[31:25];
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // SRA instruction
  wire [32-1:0] result = $signed(rvfi_rs1_rdata) >>> rvfi_rs2_rdata[4:0];
  assign spec_valid = rvfi_valid && insn_funct7 == 7'b 0100000 && insn_funct3 == 3'b 101 && insn_opcode == 7'b 0110011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_srai (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // I-type instruction format (shift variation)
  wire [6:0] insn_funct6 = rvfi_insn[31:26];
  wire [5:0] insn_shamt  = rvfi_insn[25:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // SRAI instruction
  wire [32-1:0] result = $signed(rvfi_rs1_rdata) >>> insn_shamt;
  assign spec_valid = rvfi_valid && insn_funct6 == 6'b 010000 && insn_funct3 == 3'b 101 && insn_opcode == 7'b 0010011 && (!insn_shamt[5] || 32 == 64);
  assign spec_rs1_addr = insn_rs1;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_rs2_addr = 0;
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_srl (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // R-type instruction format
  wire [6:0] insn_funct7 = rvfi_insn[31:25];
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // SRL instruction
  wire [32-1:0] result = rvfi_rs1_rdata >> rvfi_rs2_rdata[4:0];
  assign spec_valid = rvfi_valid && insn_funct7 == 7'b 0000000 && insn_funct3 == 3'b 101 && insn_opcode == 7'b 0110011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_srli (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // I-type instruction format (shift variation)
  wire [6:0] insn_funct6 = rvfi_insn[31:26];
  wire [5:0] insn_shamt  = rvfi_insn[25:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // SRLI instruction
  wire [32-1:0] result = rvfi_rs1_rdata >> insn_shamt;
  assign spec_valid = rvfi_valid && insn_funct6 == 6'b 000000 && insn_funct3 == 3'b 101 && insn_opcode == 7'b 0010011 && (!insn_shamt[5] || 32 == 64);
  assign spec_rs1_addr = insn_rs1;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_rs2_addr = 0;
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_sub (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // R-type instruction format
  wire [6:0] insn_funct7 = rvfi_insn[31:25];
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // SUB instruction
  wire [32-1:0] result = rvfi_rs1_rdata - rvfi_rs2_rdata;
  assign spec_valid = rvfi_valid && insn_funct7 == 7'b 0100000 && insn_funct3 == 3'b 000 && insn_opcode == 7'b 0110011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_sw (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // S-type instruction format
  wire [32-1:0] insn_imm = $signed({rvfi_insn[31:25], rvfi_insn[11:7]});
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // SW instruction
  wire [32-1:0] addr = rvfi_rs1_rdata + insn_imm;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 010 && insn_opcode == 7'b 0100011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_mem_addr = addr;
  assign spec_mem_wmask = ((1 << 4)-1);
  assign spec_mem_wdata = rvfi_rs2_rdata;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;
  assign spec_trap = 0;

  // default assignments
  assign spec_rd_addr = 0;
  assign spec_rd_wdata = 0;
  assign spec_mem_rmask = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_xor (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // R-type instruction format
  wire [6:0] insn_funct7 = rvfi_insn[31:25];
  wire [4:0] insn_rs2    = rvfi_insn[24:20];
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // XOR instruction
  wire [32-1:0] result = rvfi_rs1_rdata ^ rvfi_rs2_rdata;
  assign spec_valid = rvfi_valid && insn_funct7 == 7'b 0000000 && insn_funct3 == 3'b 100 && insn_opcode == 7'b 0110011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rs2_addr = insn_rs2;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule

// DO NOT EDIT -- auto-generated from riscv-formal/insns/generate.py

module RVFIMonitor_insn_xori (
  input                                rvfi_valid,
  input [32   - 1 : 0] rvfi_insn,
  input [32   - 1 : 0] rvfi_pc_rdata,
  input [32   - 1 : 0] rvfi_rs1_rdata,
  input [32   - 1 : 0] rvfi_rs2_rdata,
  input [32   - 1 : 0] rvfi_mem_rdata,

  output                                spec_valid,
  output                                spec_trap,
  output [                       4 : 0] spec_rs1_addr,
  output [                       4 : 0] spec_rs2_addr,
  output [                       4 : 0] spec_rd_addr,
  output [32   - 1 : 0] spec_rd_wdata,
  output [32   - 1 : 0] spec_pc_wdata,
  output [32   - 1 : 0] spec_mem_addr,
  output [32/8 - 1 : 0] spec_mem_rmask,
  output [32/8 - 1 : 0] spec_mem_wmask,
  output [32   - 1 : 0] spec_mem_wdata
);

  // I-type instruction format
  wire [32-1:0] insn_imm = $signed(rvfi_insn[31:20]);
  wire [4:0] insn_rs1    = rvfi_insn[19:15];
  wire [2:0] insn_funct3 = rvfi_insn[14:12];
  wire [4:0] insn_rd     = rvfi_insn[11: 7];
  wire [6:0] insn_opcode = rvfi_insn[ 6: 0];

  // XORI instruction
  wire [32-1:0] result = rvfi_rs1_rdata ^ insn_imm;
  assign spec_valid = rvfi_valid && insn_funct3 == 3'b 100 && insn_opcode == 7'b 0010011;
  assign spec_rs1_addr = insn_rs1;
  assign spec_rd_addr = insn_rd;
  assign spec_rd_wdata = spec_rd_addr ? result : 0;
  assign spec_pc_wdata = rvfi_pc_rdata + 4;

  // default assignments
  assign spec_rs2_addr = 0;
  assign spec_trap = 0;
  assign spec_mem_addr = 0;
  assign spec_mem_rmask = 0;
  assign spec_mem_wmask = 0;
  assign spec_mem_wdata = 0;
endmodule
