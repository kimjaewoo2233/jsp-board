package com.example.jspboard.dto;


import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class BoardDTO {

    private String id;
    private String writer;
    private String title;
    private String content;
    private String password;
}
