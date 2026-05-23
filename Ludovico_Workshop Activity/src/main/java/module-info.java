module com.example.topic_7 {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;
    requires io.github.cdimascio.dotenv.java;

    opens com.example.topic_7 to javafx.fxml;
    exports com.example.topic_7;
}