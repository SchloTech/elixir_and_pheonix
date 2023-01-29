defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cards.hello()
      :world

  """

  # Solution #1 for creating a deck of cards
  # def create_deck do
  #   values = ["Ace", "Two", "Three", "Four", "Five"]
  #   suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

  #   cards =
  #     for value <- values do
  #       for suit <- suits do
  #         "#{value} of #{suit}"
  #       end
  #     end

  #   List.flatten(cards)
  # end

  # Solution #2 for creatinga deck of cards
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end
end
