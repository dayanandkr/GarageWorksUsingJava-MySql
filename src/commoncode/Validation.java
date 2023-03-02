/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package commoncode;

/**
 *
 * @author hp
 */
public class Validation {
    static public void onlyDigitAllowed(java.awt.event.KeyEvent evt) {                           
        char c=evt.getKeyChar();
        if(!Character.isDigit(c)){
            evt.consume();
        }   
    }
    static public void onlyAlphabetAllowed(java.awt.event.KeyEvent evt) {                           
        char c=evt.getKeyChar();
        if(!Character.isAlphabetic(c) && !(c==' ')){
            evt.consume();
   
        }
    }
    
    }
