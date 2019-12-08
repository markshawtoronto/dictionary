defmodule DictionaryTest do
  use ExUnit.Case
  doctest Dictionary

  test "greets the world" do
    assert Dictionary.hello() == "Hello world!!"
  end

  test "returns some words" do
    list = Dictionary.word_list
    assert length(list) == 8881
  end

  test "returns a random word in the word_list" do
    list = Dictionary.word_list
    random_word = Dictionary.random_word
    assert Enum.member? list, random_word
  end
end
