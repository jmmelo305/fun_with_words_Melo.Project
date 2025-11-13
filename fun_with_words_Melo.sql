--Name: Jose Melo
--Date: 11-13-2025


--Question 1:
SELECT * FROM WORD_REL;


--Question 2:
UPDATE WORD_REL
SET syn_col = 'blithe'
WHERE word = 'insouciant';


--Question 3:
CREATE OR REPLACE VIEW WORD_REL_RO AS
SELECT *
FROM WORD_REL
WITH READ ONLY;

UPDATE WORD_REL_RO
SET syn_col = 'blithe'
WHERE word = 'insouciant';


--Question 4:
SELECT WORD, WORD_LENGTH
FROM WORD_ANALYSIS;


--Question 5:
select word, syn_col
FROM (
    select word, syn_col, length(word) AS word_length
    FROM word_rel
    order by length(word) desc
)
where rownum <= 2;


--Question 6:
DROP VIEW WORD_REL;

CREATE OR REPLACE VIEW WORD_REL (word, syn_col, ant_col) AS
SELECT s.word_term, s.syn_word, a.ant_word
FROM WORD_SYNONYMS s, WORD_ANTONYMS a
WHERE a.word_id = s.word_id;


--Question 7:
SELECT * FROM WORD_SUMMARY;


--Question 8:
CREATE OR REPLACE VIEW new_view_homonyms_meanings (word, meaning) AS 
SELECT word_term, LISTAGG(meaning, '; ') WITHIN GROUP (ORDER BY MEANING) AS MEANING
FROM homonyms  
GROUP BY word_term;

SELECT * FROM new_view_homonyms_meanings


