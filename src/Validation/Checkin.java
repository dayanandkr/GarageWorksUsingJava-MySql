
package Validation;

public class Checkin {
        public static void onlyChar(java.awt.event.KeyEvent evt){
           char c=evt.getKeyChar();
        if(!Character.isAlphabetic(c) && c!=' '){
            evt.consume();
        }  
        }
        
        public static void onlyDigit(java.awt.event.KeyEvent evt){
        char c=evt.getKeyChar();
        if(!Character.isDigit(c)){
            evt.consume();
        }
        }
}
