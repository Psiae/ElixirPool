defmodule Secrets do
  def secret_add(secret) do
    &(&1 + secret)
  end

  def secret_subtract(secret) do
    &(&1 - secret)
  end

  def secret_multiply(secret) do
    &(&1 * secret)
  end

  def secret_divide(secret) do
    &(div(&1 / secret))
  end

  def secret_and(secret) do
    &(&1 and secret)
  end

  def secret_xor(secret) do
    &(:erlang.xor(&1, secret))
  end

  def secret_combine(secret_function1, secret_function2) do
    &(&1.secret_function1().secret_function2())
  end
end
