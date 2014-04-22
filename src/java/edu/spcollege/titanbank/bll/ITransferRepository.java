/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.spcollege.titanbank.bll;

import java.util.List;

/**
 *
 * @author Loki
 */
public interface ITransferRepository {
    List findByCustomer(Customer customer);
    List findByCustomerAndStatus(Customer cusotomer, TransferRequest.TransferStatus status);
}