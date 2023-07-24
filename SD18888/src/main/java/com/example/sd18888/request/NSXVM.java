package com.example.sd18888.request;

import com.example.sd18888.entities.NSX;
import com.example.sd18888.entities.SanPham;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class NSXVM {

    @NotBlank
    private String ma;

    @NotBlank
    private String ten;

    public void loadNSXDomainModel(NSX nsx){
        this.setMa(nsx.getMa());
        this.setTen(nsx.getTen());
    }
}
