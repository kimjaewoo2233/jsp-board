package com.example.jspboard.controller;


import com.example.jspboard.dto.BoardDTO;
import com.example.jspboard.entity.Board;
import com.example.jspboard.repository.BoardRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.io.PrintWriter;

@Controller
@RequiredArgsConstructor
public class HomeContrller {

        private final BoardRepository boardRepository;

        @GetMapping("/")
        public String root(){
            return "redirect:/list";
        }

        @GetMapping("/list")
        public String home(Model model){
            model.addAttribute("board",boardRepository.findAll());
            return "list";
        }

        @GetMapping("/read")
        public String read(@RequestParam String seq, Model model){
                model.addAttribute("data",boardRepository.findById(Long.parseLong(seq)).get());
                return "seq";
        }
        @GetMapping("/write")
        public String write(){
            return "writer";
        }

        @GetMapping("/modified")
        public String modified(@RequestParam String seq,@RequestParam(required = false) String error,Model model){
            model.addAttribute("data",boardRepository.findById(Long.parseLong(seq)).get());
            if(error != null){
                if(error.equals("e")){
                    model.addAttribute("error","e");
                }
            }
            return "modified";
        }
        @GetMapping("/delete")
        public String delete(@RequestParam String seq){
            boardRepository.deleteById(Long.parseLong(seq));
            return "redirect:list";
        }
        @PostMapping("/modified")
        public String modified(BoardDTO board){
                Board boardData = boardRepository.findById(Long.parseLong(board.getId())).get();
                    boardData.setTitle(board.getTitle());
                    boardData.setContent(board.getContent());
                    boardData.setWriter(board.getWriter());
                    boardRepository.save(boardData);
                return "redirect:list";
        }


        @PostMapping("/write")
        public String writer_post(BoardDTO boardDTO){
            boardRepository.save(Board.builder()
                            .writer(boardDTO.getWriter())
                            .content(boardDTO.getContent())
                            .password(boardDTO.getPassword())
                            .title(boardDTO.getTitle())
                    .build());
            return "redirect:list";
        }
}
