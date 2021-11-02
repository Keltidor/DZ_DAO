package Dao.controller;

import Dao.repository.TopRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
    TopRepository topRepository;

    public Controller(TopRepository namedRepository) {
        this.topRepository = namedRepository;
    }

    @GetMapping("/products/fetch-product")
    public String getProductName(@RequestParam("name") String name) {
        return topRepository.getProductName(name);
    }
}
