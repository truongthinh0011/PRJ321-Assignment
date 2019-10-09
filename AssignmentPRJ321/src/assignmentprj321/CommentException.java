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
public class CommentException extends Exception {

    public CommentException(String message) {
        super("Comment exception " + message);
    }
}
