SELECT *
from invoice

DROP PROCEDURE addDiscount

CREATE OR REPLACE PROCEDURE addDiscount(
    invoiceID INTEGER,
    customer INTEGER,
    discountAmount DECIMAL 
)
AS
$$
BEGIN
    UPDATE invoice
    SET price = price - discountAmount
    WHERE customer_id = customer AND invoiceID = invoice_id;

    COMMIT;
END;
$$
LANGUAGE plpgsql;

CALL addDiscount(2, 2, 100.00)