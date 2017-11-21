import sublime_plugin


class CommenterSmallCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        sel = self.view.sel()[0]
        line = self.view.line(sel)
        [row, currentColumn] = self.view.rowcol(line.end())
        while (currentColumn < 79):
            self.view.insert(edit, self.view.text_point(row, currentColumn), "-")
            currentColumn = currentColumn + 1


class CommenterBigCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        sel = self.view.sel()[0]
        line = self.view.line(sel)
        [row, currentColumn] = self.view.rowcol(line.end())
        while (currentColumn < 79):
            self.view.insert(edit, self.view.text_point(row, currentColumn), "=")
            currentColumn = currentColumn + 1
