# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

# spec/core_extensions/class_spec.rb

require "active_support/core_ext/class/subclasses"
require "socket"

RSpec.describe Class do
  describe "#hierarchy" do
    it "returns a hash structure of all descendants" do
      expect(IO.hierarchy).to eq({BasicSocket=>{UNIXSocket=>{UNIXServer=>{}}, IPSocket=>{UDPSocket=>{}, TCPSocket=>{TCPServer=>{}}}, Socket=>{}}, File=>{}})
    end
  end

  describe "#lineage" do
    it "returns an array of all superclasses" do
      expect(TCPServer.lineage).to eq([TCPSocket, IPSocket, BasicSocket, IO, Object, BasicObject])
      expect(FalseClass.lineage).to eq([Object, BasicObject])
    end
  end

  describe "#leaf_subclasses" do
    it "returns an array of all descendants which have no subclasses" do
      expect(BasicSocket.leaf_subclasses).to eq([Socket, UNIXServer, UDPSocket, TCPServer])
    end
  end
end
