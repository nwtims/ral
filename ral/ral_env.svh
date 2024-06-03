class ral_env extends uvm_env;
  `uvm_component_utils(ral_env)

  function new (string name = "ral_env", uvm_component parent);
    super.new(name, parent);
  endfunction : new

  // Component instantiation
  axi4lite_agent  m_axi4lite_agent;
  ral_model  m_ral_model;
  reg2axi4lite_adapter  m_axi4lite_adapter;
  uvm_reg_predictor#(axi4lite_transaction)  m_axi4lite_predictor;

  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    m_ral_model = ral_model::type_id::create("m_ral_model", this);
    m_axi4lite_adapter = reg2axi4lite_adapter::type_id::create("m_axi4lite_adapter", this);
    m_axi4lite_predictor = uvm_reg_predictor#(axi4lite_transaction)::type_id::create("m_axi4lite_predictor", this);
    
    m_ral_model.build();
    m_ral_model.lock_model();
    uvm_config_db #(ral_model)::set(this, "test_top", "m_ral_model", m_ral_model);
  endfunction : build_phase

  virtual function void connect_phase(uvm_phase phase);
    m_axi4lite_predictor.map       = m_ral_model.default_map;
    m_axi4lite_predictor.adapter   = m_axi4lite_adapter;
  endfunction : connect_phase

endclass