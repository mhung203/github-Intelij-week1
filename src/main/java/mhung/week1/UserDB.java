package mhung.week1;

import java.util.ArrayList;
import java.util.List;

public class UserDB {

    // danh sách giả lập database
    private static List<User> users = new ArrayList<>();

    // hàm insert user vào danh sách
    public static void insert(User user) {
        users.add(user);
        System.out.println("Đã thêm user: " + user.getEmail());
    }

    // hàm lấy toàn bộ user (nếu cần)
    public static List<User> getAllUsers() {
        return users;
    }
}