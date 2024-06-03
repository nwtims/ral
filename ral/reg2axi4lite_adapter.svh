class reg2axi4lite_adapter extends uvm_reg_adapter;
  `uvm_object_utils(reg2axi4lite_adapter)

  // Set default values for the two variables based on the axi lite bus protocol
  // axi lite doesn't support either, so both are turned off
  function new(string name="reg2axi4lite_adapter");
    super.new(name);
    supports_byte_enable = 0;
    provides_responses = 1;  // Axi Lite driver provides a response when transaction has completed
  endfunction

  // This function accepts a register item of type "uvm_reg_bus_op" and assigns
  // the address, data and other required fields to the bus protocol sequence_item
  virtual function uvm_sequence_item reg2bus (const ref uvm_reg_bus_op rw);
    axi4lite_transaction pkt = axi4lite_transaction::type_id::create("pkt");
    pkt.trans = (rw.kind == UVM_WRITE) ? WRITE : READ;
    pkt.addr = rw.addr;
    pkt.data = rw.data;
    `uvm_info("adapter", $sformatf("reg2bus addr=0x%0h data=0x%0h kind=%s", pkt.addr, pkt.data, rw.kind.name), UVM_DEBUG);
    return pkt;
  endfunction

  // This function accepts a bus sequence_item and assigns address/data fields to the register item
  virtual function void bus2reg(uvm_sequence_item bus_item, ref uvm_reg_bus_op rw);
    axi4lite_transaction pkt;

    // bus_item is a base class handle of type "uvm_sequence_item" and hence does not
    // contain addr, data properties in it. Therefore bus_item has to be cast into axi4lite_transaction
    if (! $cast(pkt, bus_item)) begin
      `uvm_fatal("reg2axi4lite_adapter", "Failed to cast bus_item to pkt");
    end

    rw.kind = (pkt.trans == WRITE) ? UVM_WRITE : UVM_READ;
    rw.addr = pkt.addr;
    rw.data = pkt.data;
    rw.status = UVM_IS_OK;
    `uvm_info("adapter", $sformatf("bus2reg : addr0x%0h data=0x%0h kind=%s status=%s", rw.addr, rw.data, rw.kind.name(), rw.status.name()), UVM_DEBUG);
  endfunction
endclass