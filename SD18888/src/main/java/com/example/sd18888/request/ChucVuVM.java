package com.example.sd18888.request;

import com.example.sd18888.entities.ChucVu;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ChucVuVM {
    @NotBlank
    private String ma;

    @NotBlank
    private String ten;

    public void loadChucVuDomainModel(ChucVu chucVu) {
        this.setMa(chucVu.getMa());
        this.setTen(chucVu.getTen());
    }
}
