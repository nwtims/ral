class ral_model extends uvm_reg_block;
  `uvm_object_utils(ral_model)

  ADSCR m_ADSCR;  // ADC status and control
  DASCR m_DASCR;  // DAC status and control
  ARR m_ARR;  // Audio Reset, 0x53746F70 is reset value
  CBPR0 m_CBPR0;  // Channel 0 circular buffer pointer
  CBPR1 m_CBPR1;  // Channel 1 circular buffer pointer
  CBPR2 m_CBPR2;  // Channel 2 circular buffer pointer
  CBPR3 m_CBPR3;  // Channel 3 circular buffer pointer
  TTPR0 m_TTPR0;  // Channel 0 tone detect total power
  TTPR1 m_TTPR1;  // Channel 1 tone detect total power
  TTPR2 m_TTPR2;  // Channel 2 tone detect total power
  TTPR3 m_TTPR3;  // Channel 3 tone detect total power
  T1PR0 m_T1PR0;  // Channel 0 tone detect 1khz power
  T1PR1 m_T1PR1;  // Channel 1 tone detect 1khz power
  T1PR2 m_T1PR2;  // Channel 2 tone detect 1khz power
  T1PR3 m_T1PR3;  // Channel 3 tone detect 1khz power

  function new(string name = "ral_model");
    super.new(name, UVM_NO_COVERAGE);
  endfunction

  virtual function void build();
        
    //Create an instance for every register
    this.default_map = create_map("", 0, 4, UVM_LITTLE_ENDIAN, 0);
    this.m_ADSCR = ADSCR::type_id::create("ADSCR", , get_full_name);
    this.m_DASCR = DASCR::type_id::create("DASCR", , get_full_name);
    this.m_ARR = ARR::type_id::create("ARR", , get_full_name);
    this.m_CBPR0 = CBPR0::type_id::create("CBPR0", , get_full_name);
    this.m_CBPR1 = CBPR1::type_id::create("CBPR1", , get_full_name);
    this.m_CBPR2 = CBPR2::type_id::create("CBPR2", , get_full_name);
    this.m_CBPR3 = CBPR3::type_id::create("CBPR3", , get_full_name);
    this.m_TTPR0 = TTPR0::type_id::create("TTPR0", , get_full_name);
    this.m_TTPR1 = TTPR1::type_id::create("TTPR1", , get_full_name);
    this.m_TTPR2 = TTPR2::type_id::create("TTPR2", , get_full_name);
    this.m_TTPR3 = TTPR3::type_id::create("TTPR3", , get_full_name);
    this.m_T1PR0 = T1PR0::type_id::create("T1PR0", , get_full_name);
    this.m_T1PR1 = T1PR1::type_id::create("T1PR1", , get_full_name);
    this.m_T1PR2 = T1PR2::type_id::create("T1PR2", , get_full_name);
    this.m_T1PR3 = T1PR3::type_id::create("T1PR3", , get_full_name);

    //Configure every register instance
    this.m_ADSCR.configure(this, null, "");
    this.m_DASCR.configure(this, null, "");
    this.m_ARR.configure(this, null, "");
    this.m_CBPR0.configure(this, null, "");
    this.m_CBPR1.configure(this, null, "");
    this.m_CBPR2.configure(this, null, "");
    this.m_CBPR3.configure(this, null, "");
    this.m_TTPR0.configure(this, null, "");
    this.m_TTPR1.configure(this, null, "");
    this.m_TTPR2.configure(this, null, "");
    this.m_TTPR3.configure(this, null, "");
    this.m_T1PR0.configure(this, null, "");
    this.m_T1PR1.configure(this, null, "");
    this.m_T1PR2.configure(this, null, "");
    this.m_T1PR3.configure(this, null, "");

    // Call the build() function to build all register fields within each register
    this.m_ADSCR.build();
    this.m_DASCR.build();
    this.m_ARR.build();
    this.m_CBPR0.build();
    this.m_CBPR1.build();
    this.m_CBPR2.build();
    this.m_CBPR3.build();
    this.m_TTPR0.build();
    this.m_TTPR1.build();
    this.m_TTPR2.build();
    this.m_TTPR3.build();
    this.m_T1PR0.build();
    this.m_T1PR1.build();
    this.m_T1PR2.build();
    this.m_T1PR3.build();

    // Add the registers to the default map
    this.default_map.add_reg(this.m_ADSCR, `UVM_REG_ADDR_WIDTH'h0, "RW", 0);
    this.default_map.add_reg(this.m_DASCR, `UVM_REG_ADDR_WIDTH'h4, "RW", 0);
    this.default_map.add_reg(this.m_ARR, `UVM_REG_ADDR_WIDTH'h8, "WO", 0);
    this.default_map.add_reg(this.m_CBPR0, `UVM_REG_ADDR_WIDTH'hc, "RO", 0);
    this.default_map.add_reg(this.m_CBPR1, `UVM_REG_ADDR_WIDTH'h10, "RO", 0);
    this.default_map.add_reg(this.m_CBPR2, `UVM_REG_ADDR_WIDTH'h14, "RO", 0);
    this.default_map.add_reg(this.m_CBPR3, `UVM_REG_ADDR_WIDTH'h18, "RO", 0);
    this.default_map.add_reg(this.m_TTPR0, `UVM_REG_ADDR_WIDTH'h1c, "RO", 0);
    this.default_map.add_reg(this.m_TTPR1, `UVM_REG_ADDR_WIDTH'h20, "RO", 0);
    this.default_map.add_reg(this.m_TTPR2, `UVM_REG_ADDR_WIDTH'h24, "RO", 0);
    this.default_map.add_reg(this.m_TTPR3, `UVM_REG_ADDR_WIDTH'h28, "RO", 0);
    this.default_map.add_reg(this.m_T1PR0, `UVM_REG_ADDR_WIDTH'h2c, "RO", 0);
    this.default_map.add_reg(this.m_T1PR1, `UVM_REG_ADDR_WIDTH'h30, "RO", 0);
    this.default_map.add_reg(this.m_T1PR2, `UVM_REG_ADDR_WIDTH'h34, "RO", 0);
    this.default_map.add_reg(this.m_T1PR3, `UVM_REG_ADDR_WIDTH'h38, "RO", 0);
  endfunction
endclass