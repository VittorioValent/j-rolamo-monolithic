#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package}.controller.generic;

import ${package}.service.generic.ICrudService;
import javax.validation.Valid;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * This controller contains all CRUD methods. Notice that method
 * {@code create(<DTO> dto)} needs a @Valid input.
 *
 * @author Vittorio
 *
 * @param <DTO>
 * @see PrivateReadController
 * @see ICrudService
 */
public abstract class PrivateCrudController<DTO> extends PrivateReadController<DTO> {

    @PostMapping("/create")
    public DTO create(@Valid @RequestBody DTO dto) {
        return service.create(dto);
    }

    @DeleteMapping("/delete")
    public void delete(@RequestBody DTO dto) {
        service.delete(dto);
    }

    @PutMapping("/update")
    public DTO update(@RequestBody DTO dto) {
        return service.update(dto);
    }

    @PatchMapping("/update")
    public DTO merge(@RequestParam Long id, @RequestBody DTO dto) {

        return service.merge(id, dto);
    }

}