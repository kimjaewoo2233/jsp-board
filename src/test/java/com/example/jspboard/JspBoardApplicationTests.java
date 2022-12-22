package com.example.jspboard;

import com.example.jspboard.entity.Board;
import com.example.jspboard.repository.BoardRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.stream.IntStream;

@SpringBootTest
class JspBoardApplicationTests {

    @Autowired
    BoardRepository boardRepository;
    @Test
    void contextLoads() {

        IntStream.rangeClosed(1,10).forEach(value -> {
            boardRepository.save(Board.builder()
                            .title("제목..."+value)
                            .password("1234")
                            .content("내용..."+value)
                            .writer("작성자..."+value)
                    .build());
        });
    }

}
