defmodule AddressBook do
  @moduledoc """
   Address book enables user to store contacts, query them and sort by different parameters
  """

  @doc """
  get name from contact
  """
  def getName({name, _, _, _}) do
  	name
  end
  def getSurname({_, surname, _, _}) do
  	surname
  end
  def getAddress({_, _, address, _}) do
  	address
  end
  def getPhone({_, _, _, phone}) do
  	phone
  end

  def getContact(addressBook, name, surname) do 
  	Enum.find(addressBook, fn elem -> getName(elem) == name and getSurname(elem) == surname end)
  end

  def addContact(addressBook, name, surname, address, phone) do
  	addressBook ++ [{name, surname, address, phone}]
  end

  def removeContact(addressBook, name, surname) do
  	Enum.filter(addressBook, fn {userName, userSurname, _, _} -> userName != name and userSurname != surname end)
  end

  def sortBy(addressBook, Name) do
  	Enum.sort(addressBook, &(getName(&1) < getName(&2)))
  end
  def sortBy(addressBook, Surname) do
  	Enum.sort(addressBook, &(getSurname(&1) < getSurname(&2)))
  end
  def sortBy(addressBook, Address) do
  	Enum.sort(addressBook, &(getAddress(&1) < getAddress(&2)))
  end
  def sortBy(addressBook, Phone) do
  	Enum.sort(addressBook, &(getPhone(&1) < getPhone(&2)))
  end  
end
