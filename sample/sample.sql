create or replace procedure REVERSE_SPLIT(stock_id number, merge_factor number) as
DECLARE
	v_COUNT number;
	shares_outstanding_exceed EXCEPTION;
BEGIN

	if merge_factor >=0 and merge_factor <=1 then
	    FOR rec IN (SELECT * FROM Current_Shareholder_Shares where stock_id=stock_id)
	    LOOP
	        DBMS_OUTPUT.PUT_LINE('stock shares: '||rec.shares);    
            INSERT INTO trade (trade_id, stock_id, transaction_time, shares, price_total,buyer_id, seller_id) VALUES
  (trade_id_seq.NEXTVAL, stock_id, SYSDATE, rec.shares * merge_factor, null, rec.shareholder_id, null);
            v_COUNT := v_COUNT + 1;
            commit;
            cursor c1 is select * from current_stock_stats where stock_id=stock_id and total_outstanding > current_authorized;
            IF c1 THEN
            	RAISE shares_outstanding_exceed;
	    END LOOP;
    end if;
    COMMIT;
EXCEPTION 
WHEN OTHERS THEN
	ROLLBACK;
    dbms_output.put_line ('Something went wrong.');
WHEN shares_outstanding_exceed THEN
	ROLLBACK;
    dbms_output.put_line ('the shares outstanding exceed the shares authorized.');
END;


select * from current_stock_stats where stock_id=stock_id and total_outstanding > current_authorized;