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
public class ImageException extends Exception {

    public ImageException(String message) {
        super("Image exception" + message);
    }
}
