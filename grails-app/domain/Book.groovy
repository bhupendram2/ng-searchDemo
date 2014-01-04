/**
 * Created with IntelliJ IDEA.
 * User: Admin
 * Date: 1/4/14
 * Time: 1:18 PM
 * To change this template use File | Settings | File Templates.
 */
class Book {

    String title, ISBN, year

//    static hasMany = [author:Author]
    static belongsTo = [author: Author]

}
