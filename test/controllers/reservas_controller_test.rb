require 'test_helper'

class ReservasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reserva = reservas(:one)
  end

  test "should get index" do
    get reservas_url
    assert_response :success
  end

  test "should get new" do
    get new_reserva_url
    assert_response :success
  end

  test "should create reserva" do
    assert_difference('Reserva.count') do
      post reservas_url, params: { reserva: { dataHora: @reserva.dataHora, servico_id: @reserva.servico_id } }
    end

    assert_redirected_to reserva_url(Reserva.last)
  end

  test "should show reserva" do
    get reserva_url(@reserva)
    assert_response :success
  end

  test "should get edit" do
    get edit_reserva_url(@reserva)
    assert_response :success
  end

  test "should update reserva" do
    patch reserva_url(@reserva), params: { reserva: { dataHora: @reserva.dataHora, servico_id: @reserva.servico_id } }
    assert_redirected_to reserva_url(@reserva)
  end

  test "should destroy reserva" do
    assert_difference('Reserva.count', -1) do
      delete reserva_url(@reserva)
    end

    assert_redirected_to reservas_url
  end
end
