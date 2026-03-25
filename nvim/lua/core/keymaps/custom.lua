local M = {}

--- Closes the current buffer and switches to the next available buffer
function M.close_current_buffer()
  local curr_bufnr = vim.api.nvim_get_current_buf()

  -- List of all buffers to be sorted to get their absolute ordinal
  local listed_buffers = {}
  for _, buf in ipairs(vim.fn.getbufinfo({buflisted = 1})) do
    table.insert(listed_buffers, {
      bufnr = buf.bufnr,
      path = buf.name,
    })
  end

  -- Sort listed buffers by config.sort_by
  require('bufferline.sorters').sort(listed_buffers)

  if #listed_buffers > 1 then
    if curr_bufnr == listed_buffers[#listed_buffers].bufnr then
      vim.cmd('BufferLineCyclePrev')
    else
      vim.cmd('BufferLineCycleNext')
    end
  end

  vim.cmd('bdelete ' .. curr_bufnr)
end

return M
