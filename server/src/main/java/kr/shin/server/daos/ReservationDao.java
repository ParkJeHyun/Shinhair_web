package kr.shin.server.daos;

import kr.shin.server.artifacts.Reservation;

import java.util.List;

/**
 * Created by Administrator on 2016-06-10.
 */
public interface ReservationDao {
    List<Reservation> getReservation();
    Reservation getReservation(Integer key);
    void addReservation(Reservation reservation);
    void modifyReservation(Reservation reservation);
}
