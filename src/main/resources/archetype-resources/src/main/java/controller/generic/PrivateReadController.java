#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
package ${package}.controller.generic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.querydsl.core.types.Predicate;

import ${package}.domain.generic.AbstractDTO;
import ${package}.service.generic.ICrudService;

/**
 * This Controller handles all read-only requests from client.
 *
 * @author JRolamo
 *
 * @param <DTO>
 *
 * @see CrudController
 * 
 * @since 1.0
 */
public abstract class PrivateReadController<DTO extends AbstractDTO> {

	@Autowired
	protected ICrudService<DTO> service;

	@CrossOrigin
	@GetMapping("/all")
	public abstract Page<DTO> getAll(
			Predicate predicate,
			Integer pageSize,
			Integer pageNumber,
			Direction direction,
			String sortField);

	@GetMapping("/read")
	public DTO read(@RequestParam Long id) {
		return service.read(id);
	}
}
