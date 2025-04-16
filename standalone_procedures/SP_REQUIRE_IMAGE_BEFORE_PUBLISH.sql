create or replace PROCEDURE sp_require_image_before_publish (
  p_variationid IN PRODUCTVARIATIONS.VARIATIONID%TYPE
) IS
  v_count NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_count
  FROM PRODUCTIMAGES
  WHERE VARIATIONID = p_variationid;

  IF v_count = 0 THEN
    RAISE_APPLICATION_ERROR(-28005, 'Variation must have at least one image before publishing.');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Variation has images: ' || v_count);
  END IF;
END;
