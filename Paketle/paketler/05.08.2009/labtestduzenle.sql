delete from labtestler
where tanimi = 'Hbs Ag(Pozitif H.)'
delete from labtestler
where tanimi = 'Anti Hbs(Pozitif H.)'
delete from labtestler
where tanimi = 'Anti HCV(Pozitif H.)'

update labtestler
set tanimi = 'Hbs Ag'
where tanimi = 'Hbs Ag(Negatif h.)'

update labtestler
set tanimi = 'Anti Hbs'
where tanimi = 'Anti Hbs(Negatif H.)'

update labtestler
set tanimi = 'Anti HCV'
where tanimi = 'Anti HCV(Negatif H.)'