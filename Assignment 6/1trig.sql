create trigger t1
    before update
    on appointment
    for each row
    execute function trigapp();
