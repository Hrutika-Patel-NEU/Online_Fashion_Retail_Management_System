create or replace PROCEDURE sp_require_image_before_publish (
  p_variationid IN PRODUCTVARIATIONS.VARIATIONID%TYPE  -- ID of the product variation
) IS
  v_count NUMBER;  -- Variable for the number of images
BEGIN
  -- Counting how many images exist
  SELECT COUNT(*) INTO v_count
  FROM PRODUCTIMAGES
  WHERE VARIATIONID = p_variationid;

  -- If no images are found, raise an error to urge to add an image
  IF v_count = 0 THEN
    RAISE_APPLICATION_ERROR(-28005, 'Variation must have at least one image before publishing.');
  ELSE
    -- If images exist, output the count 
    DBMS_OUTPUT.PUT_LINE('Variation has images: ' || v_count);
  END IF;
END;