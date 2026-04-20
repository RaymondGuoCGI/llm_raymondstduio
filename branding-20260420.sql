insert into options(key, value) values ('SystemName','RaymondStudioLLM')
on conflict (key) do update set value=excluded.value;

insert into options(key, value) values (
  'Logo',
  'data:image/svg+xml;utf8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20128%20128%22%3E%3Cdefs%3E%3ClinearGradient%20id%3D%22g%22%20x1%3D%220%22%20y1%3D%220%22%20x2%3D%221%22%20y2%3D%221%22%3E%3Cstop%20offset%3D%220%25%22%20stop-color%3D%22%230f172a%22%2F%3E%3Cstop%20offset%3D%22100%25%22%20stop-color%3D%22%232563eb%22%2F%3E%3C%2FlinearGradient%3E%3C%2Fdefs%3E%3Crect%20width%3D%22128%22%20height%3D%22128%22%20rx%3D%2228%22%20fill%3D%22url%28%23g%29%22%2F%3E%3Ccircle%20cx%3D%2264%22%20cy%3D%2264%22%20r%3D%2244%22%20fill%3D%22rgba%28255%2C255%2C255%2C0.10%29%22%2F%3E%3Ctext%20x%3D%2264%22%20y%3D%2258%22%20text-anchor%3D%22middle%22%20font-size%3D%2234%22%20font-family%3D%22Arial%2C%20Helvetica%2C%20sans-serif%22%20font-weight%3D%22700%22%20fill%3D%22%23ffffff%22%3ERS%3C%2Ftext%3E%3Ctext%20x%3D%2264%22%20y%3D%2284%22%20text-anchor%3D%22middle%22%20font-size%3D%2212%22%20font-family%3D%22Arial%2C%20Helvetica%2C%20sans-serif%22%20font-weight%3D%22600%22%20fill%3D%22%23dbeafe%22%3ELLM%3C%2Ftext%3E%3C%2Fsvg%3E'
)
on conflict (key) do update set value=excluded.value;

insert into options(key, value) values ('PasskeyDisplayName','RaymondStudioLLM')
on conflict (key) do update set value=excluded.value;

update options set value='RaymondStudioLLM' where key='passkey.rp_display_name';
