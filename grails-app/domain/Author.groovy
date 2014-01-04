/**
 * Created with IntelliJ IDEA.
 * User: Admin
 * Date: 1/4/14
 * Time: 1:18 PM
 * To change this template use File | Settings | File Templates.
 */
class Author {

    String name, address

    static hasMany = [book: Book]
//    static belongsTo = [author:Author]
}
