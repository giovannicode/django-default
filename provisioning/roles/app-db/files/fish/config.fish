function edit
    command vim $HOME'/.config/fish/config.fish'
end

function reload
    . $HOME'/.config/fish/config.fish'
end

function activate
    source /app/env/bin/activate.fish
    cd /app/src/{{ project_name }}/
end

function vise
    vim /app/src/{{ project_name }}/{{ project_name }}/settings.py
end

function apps
    cd /app/src/{{ project_name }}/apps/$argv    
end

function server
    activate
    python manage.py runserver 0.0.0.0:8000
end
