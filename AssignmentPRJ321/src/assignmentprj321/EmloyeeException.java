/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package assignmentprj321;

/**
 *
 * @author TruongThinh
 */
public class EmloyeeException extends Exception {

    public EmloyeeException(String message) {
        super("Emloyee exception " + message);
    }
}
