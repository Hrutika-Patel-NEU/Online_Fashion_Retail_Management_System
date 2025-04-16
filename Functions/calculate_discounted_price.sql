create or replace FUNCTION calculate_discounted_price(
    p_price IN NUMBER,
    p_discount_rate IN NUMBER
) RETURN NUMBER
IS
    v_discounted_price NUMBER;
BEGIN
    IF p_discount_rate IS NULL THEN
        v_discounted_price := p_price;
    ELSE
        v_discounted_price := p_price - (p_price * p_discount_rate / 100);
    END IF;

    RETURN ROUND(v_discounted_price, 2); -- return 2 decimal points
EXCEPTION
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20004, 'Error calculating discounted price');
END;
