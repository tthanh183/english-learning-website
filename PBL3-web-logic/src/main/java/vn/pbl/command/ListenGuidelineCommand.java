package vn.pbl.command;

import vn.pbl.core.dto.ListenGuidelineDTO;
import vn.pbl.core.web.command.AbstractCommand;

public class ListenGuidelineCommand extends AbstractCommand<ListenGuidelineDTO> {
    public  ListenGuidelineCommand() {
        this.pojo = new ListenGuidelineDTO();
    }
}
