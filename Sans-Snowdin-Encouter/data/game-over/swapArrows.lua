function onCreatePost()
        for i = 0, getProperty('playerStrums.length') and getProperty('opponentStrums.length') do
        setPropertyFromGroup('playerStrums', i, 'x', getPropertyFromGroup('playerStrums', i, 'x') - 640);
        setPropertyFromGroup('opponentStrums', i, 'x', getPropertyFromGroup('opponentStrums', i, 'x') - -640);
        -- Script by Rudyrue
        -- Fixed by Keoiki
    end
end