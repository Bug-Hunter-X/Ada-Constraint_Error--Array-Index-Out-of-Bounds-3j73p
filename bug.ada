```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (others => 0); -- Initialize array

   function Get_Value (Index : Integer) return Integer is
   begin
      if Index in My_Arr'Range then
         return My_Arr(Index);
      else
         raise Constraint_Error;
      end if;
   end Get_Value;

begin
   -- Accessing array elements
   My_Arr(5) := 25;
   Put_Line("Value at index 5: " & Integer'Image(Get_Value(5)));

   -- Trying to access an element outside the bounds
   Put_Line("Value at index 15: " & Integer'Image(Get_Value(15))); -- Raises Constraint_Error

exception
   when Constraint_Error =>
      Put_Line("Error: Array index out of bounds");
end Example;
```