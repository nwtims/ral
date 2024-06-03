
class ADSCR extends uvm_reg;
  `uvm_object_utils(ADSCR)

  // fields instance
 uvm_reg_field ADC_Enable;  // ADC enable bit
 uvm_reg_field adpcm_cfg_lock;  // Lock ADPCM Configuration
//  uvm_reg_field reserved;  // Reserved
 uvm_reg_field ch3_adpcm_bits;  // Channel 3 ADPCM Bits
 uvm_reg_field ch2_adpcm_bits;  // Channel 2 ADPCM Bits
 uvm_reg_field ch1_adpcm_bits;  // Channel 1 ADPCM Bits
 uvm_reg_field ch0_adpcm_bits;  // Channel 0 ADPCM Bits
 uvm_reg_field ch3_adpcm_enable;  // Channel 3 ADPCM Bits
 uvm_reg_field ch2_adpcm_enable;  // Channel 2 ADPCM Bits
 uvm_reg_field ch1_adpcm_enable;  // Channel 1 ADPCM Bits
 uvm_reg_field ch0_adpcm_enable;  // Channel 0 ADPCM Bits
 uvm_reg_field ch3_adpcm_initialized;  // Channel 3 ADPCM initialized
 uvm_reg_field ch2_adpcm_initialized;  // Channel 2 ADPCM initialized
 uvm_reg_field ch1_adpcm_initialized;  // Channel 1 ADPCM initialized
 uvm_reg_field ch0_adpcm_initialized;  // Channel 0 ADPCM initialized
 uvm_reg_field ch3_tone_valid;  // Channel 3 Tone Valid
 uvm_reg_field ch2_tone_valid;  // Channel 2 Tone Valid
 uvm_reg_field ch1_tone_valid;  // Channel 1 Tone Valid
 uvm_reg_field ch0_tone_valid;  // Channel 0 Tone Valid
 uvm_reg_field ch3_tone_detected;  // Channel 3 Tone detected
 uvm_reg_field ch2_tone_detected;  // Channel 2 Tone detected
 uvm_reg_field ch1_tone_detected;  // Channel 1 Tone detected
 uvm_reg_field ch0_tone_detected;  // Channel 0 Tone detected


  // Constructor
  function new (string reg_name = "ADSCR");
    super.new(reg_name, 32, UVM_NO_COVERAGE);
  endfunction

  // Build_phase
  virtual function void build();

    // Create object instance for each field
    this.ADC_Enable = uvm_reg_field::type_id::create("ADC_Enable");
    this.adpcm_cfg_lock = uvm_reg_field::type_id::create("adpcm_cfg_lock");
    // this.reserved = uvm_reg_field::type_id::create("reserved");
    this.ch3_adpcm_bits = uvm_reg_field::type_id::create("ch3_adpcm_bits");
    this.ch2_adpcm_bits = uvm_reg_field::type_id::create("ch2_adpcm_bits");
    this.ch1_adpcm_bits = uvm_reg_field::type_id::create("ch1_adpcm_bits");
    this.ch0_adpcm_bits = uvm_reg_field::type_id::create("ch0_adpcm_bits");
    this.ch3_adpcm_enable = uvm_reg_field::type_id::create("ch3_adpcm_enable");
    this.ch2_adpcm_enable = uvm_reg_field::type_id::create("ch2_adpcm_enable");
    this.ch1_adpcm_enable = uvm_reg_field::type_id::create("ch1_adpcm_enable");
    this.ch0_adpcm_enable = uvm_reg_field::type_id::create("ch0_adpcm_enable");
    this.ch3_adpcm_initialized = uvm_reg_field::type_id::create("ch3_adpcm_initialized");
    this.ch2_adpcm_initialized = uvm_reg_field::type_id::create("ch2_adpcm_initialized");
    this.ch1_adpcm_initialized = uvm_reg_field::type_id::create("ch1_adpcm_initialized");
    this.ch0_adpcm_initialized = uvm_reg_field::type_id::create("ch0_adpcm_initialized");
    this.ch3_tone_valid = uvm_reg_field::type_id::create("ch3_tone_valid");
    this.ch2_tone_valid = uvm_reg_field::type_id::create("ch2_tone_valid");
    this.ch1_tone_valid = uvm_reg_field::type_id::create("ch1_tone_valid");
    this.ch0_tone_valid = uvm_reg_field::type_id::create("ch0_tone_valid");
    this.ch3_tone_detected = uvm_reg_field::type_id::create("ch3_tone_detected");
    this.ch2_tone_detected = uvm_reg_field::type_id::create("ch2_tone_detected");
    this.ch1_tone_detected = uvm_reg_field::type_id::create("ch1_tone_detected");
    this.ch0_tone_detected = uvm_reg_field::type_id::create("ch0_tone_detected");

    // Configure each field
    // parent, size, lsb position, access, volatile, reset value, has reset, is random, individually accessible
    this.ADC_Enable.configure(this, 1, 0, "RW", 0, 0, 1, 0, 0);
    this.adpcm_cfg_lock.configure(this, 1, 1, "RW", 0, 0, 1, 0, 0);
    // this.reserved.configure(this, 6, 2, "RO", y, 0, 1, 0, 0);
    this.ch3_adpcm_bits.configure(this, 2, 8, "RW", 0, 0, 1, 0, 0);
    this.ch2_adpcm_bits.configure(this, 2, 10, "RW", 0, 0, 1, 0, 0);
    this.ch1_adpcm_bits.configure(this, 2, 12, "RW", 0, 0, 1, 0, 0);
    this.ch0_adpcm_bits.configure(this, 2, 14, "RW", 0, 0, 1, 0, 0);
    this.ch3_adpcm_enable.configure(this, 1, 16, "RW", 0, 0, 1, 0, 0);
    this.ch2_adpcm_enable.configure(this, 1, 17, "RW", 0, 0, 1, 0, 0);
    this.ch1_adpcm_enable.configure(this, 1, 18, "RW", 0, 0, 1, 0, 0);
    this.ch0_adpcm_enable.configure(this, 1, 19, "RW", 0, 0, 1, 0, 0);
    this.ch3_adpcm_initialized.configure(this, 1, 20, "RO", 1, 0, 1, 0, 0);
    this.ch2_adpcm_initialized.configure(this, 1, 21, "RO", 1, 0, 1, 0, 0);
    this.ch1_adpcm_initialized.configure(this, 1, 22, "RO", 1, 0, 1, 0, 0);
    this.ch0_adpcm_initialized.configure(this, 1, 23, "RO", 1, 0, 1, 0, 0);
    this.ch3_tone_valid.configure(this, 1, 24, "RO", 1, 0, 1, 0, 0);
    this.ch2_tone_valid.configure(this, 1, 25, "RO", 1, 0, 1, 0, 0);
    this.ch1_tone_valid.configure(this, 1, 26, "RO", 1, 0, 1, 0, 0);
    this.ch0_tone_valid.configure(this, 1, 27, "RO", 1, 0, 1, 0, 0);
    this.ch3_tone_detected.configure(this, 1, 28, "RO", 1, 0, 1, 0, 0);
    this.ch2_tone_detected.configure(this, 1, 29, "RO", 1, 0, 1, 0, 0);
    this.ch1_tone_detected.configure(this, 1, 30, "RO", 1, 0, 1, 0, 0);
    this.ch0_tone_detected.configure(this, 1, 31, "RO", 1, 0, 1, 0, 0);

  endfunction
  
endclass


class DASCR extends uvm_reg;
  `uvm_object_utils(DASCR)

  // fields instance
 uvm_reg_field dac_count;  // dac sample FIFO count
//  uvm_reg_field reserved;  // reserved
 uvm_reg_field dac_empty_flag;  // DAC FIFO empty flag
 uvm_reg_field dac_full_flag;  // DAC FIFO full flag
 uvm_reg_field dac_enable;  // DAC enable
//  uvm_reg_field reserved;  // reserved


  // Constructor
  function new (string reg_name = "DASCR");
    super.new(reg_name, 32, UVM_NO_COVERAGE);
  endfunction

  // Build_phase
  virtual function void build();

    // Create object instance for each field
    this.dac_count = uvm_reg_field::type_id::create("dac_count");
    // this.reserved = uvm_reg_field::type_id::create("reserved");
    this.dac_empty_flag = uvm_reg_field::type_id::create("dac_empty_flag");
    this.dac_full_flag = uvm_reg_field::type_id::create("dac_full_flag");
    this.dac_enable = uvm_reg_field::type_id::create("dac_enable");
    // this.reserved = uvm_reg_field::type_id::create("reserved");

    // Configure each field
    // parent, size, lsb position, access, volatile, reset value, has reset, is random, individually accessible
    this.dac_count.configure(this, 11, 0, "RO", 1, 0, 1, 0, 0);
    // this.reserved.configure(this, 1, 11, "RO", 1, 0, 1, 0, 0);
    this.dac_empty_flag.configure(this, 1, 12, "RO", 1, 0, 1, 0, 0);
    this.dac_full_flag.configure(this, 1, 13, "RO", 1, 0, 1, 0, 0);
    this.dac_enable.configure(this, 1, 14, "RW", 0, 0, 1, 0, 0);
    // this.reserved.configure(this, 17, 15, "RO", 1, 0, 1, 0, 0);

  endfunction
  
endclass


class ARR extends uvm_reg;
  `uvm_object_utils(ARR)

  // fields instance
 uvm_reg_field audio_reset;  // Resets Audo interface. 


  // Constructor
  function new (string reg_name = "ARR");
    super.new(reg_name, 32, UVM_NO_COVERAGE);
  endfunction

  // Build_phase
  virtual function void build();

    // Create object instance for each field
    this.audio_reset = uvm_reg_field::type_id::create("audio_reset");

    // Configure each field
    // parent, size, lsb position, access, volatile, reset value, has reset, is random, individually accessible
    this.audio_reset.configure(this, 32, 0, "WO", 0, 0, 1, 0, 1);

  endfunction
  
endclass


class CBPR0 extends uvm_reg;
  `uvm_object_utils(CBPR0)

  // fields instance
 uvm_reg_field byte_pointer;  // Head pointer byte offset
//  uvm_reg_field reserved;  // Resets Audo interface. 


  // Constructor
  function new (string reg_name = "CBPR0");
    super.new(reg_name, 32, UVM_NO_COVERAGE);
  endfunction

  // Build_phase
  virtual function void build();

    // Create object instance for each field
    this.byte_pointer = uvm_reg_field::type_id::create("byte_pointer");
    // this.reserved = uvm_reg_field::type_id::create("reserved");

    // Configure each field
    // parent, size, lsb position, access, volatile, reset value, has reset, is random, individually accessible
    this.byte_pointer.configure(this, 11, 0, "RO", 1, 0, 1, 0, 0);
    // this.reserved.configure(this, 21, 11, "RO", 1, 0, 1, 0, 0);

  endfunction
  
endclass


class CBPR1 extends uvm_reg;
  `uvm_object_utils(CBPR1)

  // fields instance
 uvm_reg_field byte_pointer;  // Head pointer byte offset
//  uvm_reg_field reserved;  // Resets Audo interface. 


  // Constructor
  function new (string reg_name = "CBPR1");
    super.new(reg_name, 32, UVM_NO_COVERAGE);
  endfunction

  // Build_phase
  virtual function void build();

    // Create object instance for each field
    this.byte_pointer = uvm_reg_field::type_id::create("byte_pointer");
    // this.reserved = uvm_reg_field::type_id::create("reserved");

    // Configure each field
    // parent, size, lsb position, access, volatile, reset value, has reset, is random, individually accessible
    this.byte_pointer.configure(this, 11, 0, "RO", 1, 0, 1, 0, 0);
    // this.reserved.configure(this, 21, 11, "RO", 1, 0, 1, 0, 0);

  endfunction
  
endclass


class CBPR2 extends uvm_reg;
  `uvm_object_utils(CBPR2)

  // fields instance
 uvm_reg_field byte_pointer;  // Head pointer byte offset
//  uvm_reg_field reserved;  // Resets Audo interface. 


  // Constructor
  function new (string reg_name = "CBPR2");
    super.new(reg_name, 32, UVM_NO_COVERAGE);
  endfunction

  // Build_phase
  virtual function void build();

    // Create object instance for each field
    this.byte_pointer = uvm_reg_field::type_id::create("byte_pointer");
    // this.reserved = uvm_reg_field::type_id::create("reserved");

    // Configure each field
    // parent, size, lsb position, access, volatile, reset value, has reset, is random, individually accessible
    this.byte_pointer.configure(this, 11, 0, "RO", 1, 0, 1, 0, 0);
    // this.reserved.configure(this, 21, 11, "RO", 1, 0, 1, 0, 0);

  endfunction
  
endclass


class CBPR3 extends uvm_reg;
  `uvm_object_utils(CBPR3)

  // fields instance
 uvm_reg_field byte_pointer;  // Head pointer byte offset
//  uvm_reg_field reserved;  // Resets Audo interface. 


  // Constructor
  function new (string reg_name = "CBPR3");
    super.new(reg_name, 32, UVM_NO_COVERAGE);
  endfunction

  // Build_phase
  virtual function void build();

    // Create object instance for each field
    this.byte_pointer = uvm_reg_field::type_id::create("byte_pointer");
    // this.reserved = uvm_reg_field::type_id::create("reserved");

    // Configure each field
    // parent, size, lsb position, access, volatile, reset value, has reset, is random, individually accessible
    this.byte_pointer.configure(this, 11, 0, "RO", 1, 0, 1, 0, 0);
    // this.reserved.configure(this, 21, 11, "RO", 1, 0, 1, 0, 0);

  endfunction
  
endclass


class TTPR0 extends uvm_reg;
  `uvm_object_utils(TTPR0)

  // fields instance
 uvm_reg_field ambient_pwr_level;  // Total sound power at all frequencies


  // Constructor
  function new (string reg_name = "TTPR0");
    super.new(reg_name, 32, UVM_NO_COVERAGE);
  endfunction

  // Build_phase
  virtual function void build();

    // Create object instance for each field
    this.ambient_pwr_level = uvm_reg_field::type_id::create("ambient_pwr_level");

    // Configure each field
    // parent, size, lsb position, access, volatile, reset value, has reset, is random, individually accessible
    this.ambient_pwr_level.configure(this, 32, 0, "RO", 1, 0, 1, 0, 1);

  endfunction
  
endclass


class TTPR1 extends uvm_reg;
  `uvm_object_utils(TTPR1)

  // fields instance
 uvm_reg_field ambient_pwr_level;  // Total sound power at all frequencies


  // Constructor
  function new (string reg_name = "TTPR1");
    super.new(reg_name, 32, UVM_NO_COVERAGE);
  endfunction

  // Build_phase
  virtual function void build();

    // Create object instance for each field
    this.ambient_pwr_level = uvm_reg_field::type_id::create("ambient_pwr_level");

    // Configure each field
    // parent, size, lsb position, access, volatile, reset value, has reset, is random, individually accessible
    this.ambient_pwr_level.configure(this, 32, 0, "RO", 1, 0, 1, 0, 1);

  endfunction
  
endclass


class TTPR2 extends uvm_reg;
  `uvm_object_utils(TTPR2)

  // fields instance
 uvm_reg_field ambient_pwr_level;  // Total sound power at all frequencies


  // Constructor
  function new (string reg_name = "TTPR2");
    super.new(reg_name, 32, UVM_NO_COVERAGE);
  endfunction

  // Build_phase
  virtual function void build();

    // Create object instance for each field
    this.ambient_pwr_level = uvm_reg_field::type_id::create("ambient_pwr_level");

    // Configure each field
    // parent, size, lsb position, access, volatile, reset value, has reset, is random, individually accessible
    this.ambient_pwr_level.configure(this, 32, 0, "RO", 1, 0, 1, 0, 1);

  endfunction
  
endclass


class TTPR3 extends uvm_reg;
  `uvm_object_utils(TTPR3)

  // fields instance
 uvm_reg_field ambient_pwr_level;  // Total sound power at all frequencies


  // Constructor
  function new (string reg_name = "TTPR3");
    super.new(reg_name, 32, UVM_NO_COVERAGE);
  endfunction

  // Build_phase
  virtual function void build();

    // Create object instance for each field
    this.ambient_pwr_level = uvm_reg_field::type_id::create("ambient_pwr_level");

    // Configure each field
    // parent, size, lsb position, access, volatile, reset value, has reset, is random, individually accessible
    this.ambient_pwr_level.configure(this, 32, 0, "RO", 1, 0, 1, 0, 1);

  endfunction
  
endclass


class T1PR0 extends uvm_reg;
  `uvm_object_utils(T1PR0)

  // fields instance
 uvm_reg_field pwr_level_1khz;  // Total sound power at 1khz


  // Constructor
  function new (string reg_name = "T1PR0");
    super.new(reg_name, 32, UVM_NO_COVERAGE);
  endfunction

  // Build_phase
  virtual function void build();

    // Create object instance for each field
    this.pwr_level_1khz = uvm_reg_field::type_id::create("pwr_level_1khz");

    // Configure each field
    // parent, size, lsb position, access, volatile, reset value, has reset, is random, individually accessible
    this.pwr_level_1khz.configure(this, 32, 0, "RO", 1, 0, 1, 0, 1);

  endfunction
  
endclass


class T1PR1 extends uvm_reg;
  `uvm_object_utils(T1PR1)

  // fields instance
 uvm_reg_field pwr_level_1khz;  // Total sound power at 1khz


  // Constructor
  function new (string reg_name = "T1PR1");
    super.new(reg_name, 32, UVM_NO_COVERAGE);
  endfunction

  // Build_phase
  virtual function void build();

    // Create object instance for each field
    this.pwr_level_1khz = uvm_reg_field::type_id::create("pwr_level_1khz");

    // Configure each field
    // parent, size, lsb position, access, volatile, reset value, has reset, is random, individually accessible
    this.pwr_level_1khz.configure(this, 32, 0, "RO", 1, 0, 1, 0, 1);

  endfunction
  
endclass


class T1PR2 extends uvm_reg;
  `uvm_object_utils(T1PR2)

  // fields instance
 uvm_reg_field pwr_level_1khz;  // Total sound power at 1khz


  // Constructor
  function new (string reg_name = "T1PR2");
    super.new(reg_name, 32, UVM_NO_COVERAGE);
  endfunction

  // Build_phase
  virtual function void build();

    // Create object instance for each field
    this.pwr_level_1khz = uvm_reg_field::type_id::create("pwr_level_1khz");

    // Configure each field
    // parent, size, lsb position, access, volatile, reset value, has reset, is random, individually accessible
    this.pwr_level_1khz.configure(this, 32, 0, "RO", 1, 0, 1, 0, 1);

  endfunction
  
endclass


class T1PR3 extends uvm_reg;
  `uvm_object_utils(T1PR3)

  // fields instance
 uvm_reg_field pwr_level_1khz;  // Total sound power at 1khz


  // Constructor
  function new (string reg_name = "T1PR3");
    super.new(reg_name, 32, UVM_NO_COVERAGE);
  endfunction

  // Build_phase
  virtual function void build();

    // Create object instance for each field
    this.pwr_level_1khz = uvm_reg_field::type_id::create("pwr_level_1khz");

    // Configure each field
    // parent, size, lsb position, access, volatile, reset value, has reset, is random, individually accessible
    this.pwr_level_1khz.configure(this, 32, 0, "RO", 1, 0, 1, 0, 1);

  endfunction
  
endclass

