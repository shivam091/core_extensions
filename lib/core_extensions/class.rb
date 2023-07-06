# -*- encoding: utf-8 -*-
# -*- frozen_string_literal: true -*-
# -*- warn_indent: true -*-

require "active_support/core_ext/class/subclasses"

class Class
  # Returns a tree-like +Hash+ structure of all descendants.
  #
  # ==== Examples
  #
  #   require 'socket'
  #   IO.hierarchy
  #   #=> {BasicSocket=>{UNIXSocket=>{UNIXServer=>{}}, IPSocket=>{UDPSocket=>{}, TCPSocket=>{TCPServer=>{}}}, Socket=>{}}, File=>{}}
  def hierarchy
    subclasses.each_with_object({}) { |k, h| h[k] = k.hierarchy }
  end

  # Returns an +Array+ of all superclasses.
  #
  # ==== Examples
  #
  #   require 'socket'
  #   TCPServer.lineage
  #   #=> [TCPSocket, IPSocket, BasicSocket, IO, Object, BasicObject]
  def lineage
    superclass.nil? ? [] : superclass.lineage.unshift(superclass)
  end

  # Returns an +Array+ of all descendants which have no subclasses.
  #
  # ==== Examples
  #
  #   require 'socket'
  #   BasicSocket.leaf_subclasses
  #   #=> [Socket, UNIXServer, UDPSocket, TCPServer]
  def leaf_subclasses
    descendants.select { |d| d.subclasses.empty? }
  end
end
