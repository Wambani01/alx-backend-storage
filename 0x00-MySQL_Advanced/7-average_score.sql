--- avaerage scores
DELIMITER //

CREATE PROCEDURE ComputeAverageScoreForUser(
    IN user_id INT
)
BEGIN
    DECLARE avg_score FLOAT;

    -- Compute average score
    SELECT AVG(score) INTO avg_score
    FROM corrections
    WHERE user_id = user_id;

    -- Update average score in users table
    UPDATE users
    SET average_score = avg_score
    WHERE id = user_id;
END//

DELIMITER ;

