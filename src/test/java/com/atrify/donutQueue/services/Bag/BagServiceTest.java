package com.atrify.donutQueue.services.Bag;

import com.atrify.donutQueue.entities.Order;
import com.atrify.donutQueue.repositories.OrderRepository;
import com.atrify.donutQueue.services.Order.OrderService;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

class BagServiceTest {
    @Autowired
    OrderRepository orderRepository;

    @Autowired
    BagService bagService;

    @Autowired
    OrderService orderService;

    Order order;

    BagServiceTest() {
        order = new Order();
        order.setQuantity(1);
        order.setClientId(200L);
    }

    @BeforeEach
    void setUp() {
        orderRepository.save(order);
    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void getBag() {
    }

    @Test
    void getWaitTime() {
    }

    @Test
    void getBags() {
        Assertions.assertTrue(bagService.getBags().size() > 0);
    }
}