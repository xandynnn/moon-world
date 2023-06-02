local enemy = {
    force = 0,
    category = "",
    new = function ( self, force, category )
        self.force = force
        self.category = category
        return self
    end
}

return enemy