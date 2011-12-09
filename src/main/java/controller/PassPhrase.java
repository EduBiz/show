/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 * Cheap, lightweight, low-security password generator. See also:
 * java.security.*;
 */
public class PassPhrase {
  /** Minimum length for a decent password */
  public static final int MIN_LENGTH = 6;

  /** The random number generator. */
  protected static java.util.Random r = new java.util.Random();

  /*
   * Set of characters that is valid. Must be printable, memorable, and "won't
   * break HTML" (i.e., not ' <', '>', '&', '=', ...). or break shell commands
   * (i.e., not ' <', '>', '$', '!', ...). I, L and O are good to leave out,
   * as are numeric zero and one.
   */
  protected static char[] goodChar = { 'a', 'b', 'c', 'd', 'e', 'f', 'g',
      'h', 'j', 'k', 'm', 'n', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w',
      'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K',
      'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
      '2', '3', '4', '5', '6', '7', '8', '9', };

  /* Generate a Password object with a random password. */
  public static String pass() {
    StringBuilder sb = new StringBuilder();
    for (int i = 0; i < MIN_LENGTH; i++) {
      sb.append(goodChar[r.nextInt(goodChar.length)]);
    }
    return sb.toString();
  }


}

