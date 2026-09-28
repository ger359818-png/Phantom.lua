-- Phantom | HaLal pozdnyak

local P=game:GetService("Players")local R=game:GetService("RunService")local U=game:GetService("UserInputService")local T=game:GetService("TweenService")local L=game:GetService("Lighting")local W=game:GetService("Workspace")local C=workspace.CurrentCamera local LP=P.LocalPlayer
local function ping()local ok,v=pcall(function()return LP:GetNetworkPing()end)return ok and v or 0 end

local F={
aim_en=true,aim_key=Enum.KeyCode.E,aim_mode="Hold",aim_type="Smooth",aim_fov=150,aim_smooth=.15,aim_part="Head",aim_max=1000,
aim_wall=true,aim_team=true,aim_stag=true,aim_pred=true,aim_predx=.16,aim_pri="FOV",aim_bone=true,aim_flick=.05,aim_lr=.3,aim_px=4,aim_mag=.5,aim_hum=true,
aim_as=false,aim_asrpm=600,aim_tb=false,aim_tbfov=20,aim_hpn=false,aim_vis=false,aim_fcol=Color3.fromRGB(120,200,255),
ai_en=false,ai_aggr=.7,ai_react=80,ai_lead=1,ai_hbp=true,ai_ts=true,ai_adap=true,ai_jit=false,ai_jita=2.5,ai_snap=true,ai_snapt=.8,ai_dodge=true,ai_thr=true,ai_rec=true,ai_mode="Adaptive",ai_sens=1,
rage_en=false,rage_snap=true,rage_multi=true,rage_mc=3,rage_iw=true,rage_iv=true,rage_hs=true,rage_af=true,rage_it=true,rage_sw=true,rage_swd=.1,rage_bt=true,rage_btt=.2,rage_it2=true,rage_is=true,rage_uf=true,rage_ns=true,rage_pred=true,rage_pm=.3,rage_1t=true,rage_spin=false,rage_ss=15,
legit_en=false,legit_sm=.35,legit_fov=60,legit_vo=true,legit_nw=true,legit_fd=.15,legit_ns=true,legit_rt=true,legit_he=.5,legit_jit=true,legit_ja=.8,legit_ds=false,legit_sa=1.2,legit_sr=true,legit_rt2=.3,legit_tl=true,legit_lt=.5,legit_md=300,legit_fo=true,legit_rhp=true,
sil_en=false,sil_type="Classic",sil_fov=200,sil_ch=100,sil_part="Head",sil_wall=true,sil_pred=true,sil_team=true,sil_stag=true,sil_mode="Raycast",sil_vo=false,sil_hc=true,sil_psil=false,sil_mag=.3,sil_360=false,
bt_en=false,bt_t=.15,bt_ms=200,bt_vis=true,bt_esp=false,
ch_en=false,ch_v=true,ch_vc=Color3.fromRGB(80,255,80),ch_i=true,ch_ic=Color3.fromRGB(255,60,60),ch_f=.5,ch_out=true,ch_rb=false,ch_t=false,ch_tc=Color3.fromRGB(80,180,255),ch_s=false,
esp_en=true,esp_bt="2D",esp_box=true,esp_bf=false,esp_bcs=.25,esp_bth=1.5,esp_bc=Color3.fromRGB(255,60,60),esp_bvc=Color3.fromRGB(255,255,255),esp_brb=false,esp_bfade=false,esp_bds=true,
esp_sk=false,esp_skc=Color3.fromRGB(255,255,255),esp_skt=1,esp_bd=false,esp_j=false,esp_hb=false,
esp_n=true,esp_d=true,esp_h=true,esp_a=false,esp_w=false,esp_am=false,esp_tm=false,esp_r=false,esp_m=false,esp_max=1000,
esp_tr=false,esp_sl=false,esp_hd=true,esp_hc2=false,esp_ar=false,esp_off=false,esp_rd=false,esp_rdz=120,esp_rdr=500,
esp_gl=false,esp_glc=Color3.fromRGB(255,80,80),esp_ol=false,esp_olc=Color3.fromRGB(255,255,255),esp_mat=false,esp_matn="Neon",esp_se=false,esp_fe=false,esp_fade=false,esp_faded=50,esp_rb=false,esp_sp=false,
fov_c=true,fov_cc=Color3.fromRGB(120,200,255),fov_cf=false,
fly_en=false,fly_key=Enum.KeyCode.Q,fly_mode="Hold",fly_spd=100,fly_type="Normal",
spd_en=false,spd_v=50,spd_type="Normal",bhop=false,abhop=false,strafe=false,isprint=false,noslow=false,
jmp_en=false,jmp_v=100,ijmp=false,noclip=false,fb=false,hbe=false,hbs=5,camlock=false,aparry=false,ablock=false,aafk=false,afling=false,avoid=false,arespawn=false,
aa_en=false,aa_type="Jitter",aa_ja=20,aa_ss=10,
fl_en=false,fl_amt=.1,fl_key=Enum.KeyCode.X,fl_mode="Toggle",fl_jit=false,fl_ja=.05,fl_indic=true,fl_no=true,
ds_en=false,ds_amt=5,ds_spd=2,ds_mode="Forward",ds_rd=20,ds_vf=true,ds_fr=.15,
fa_en=false,fa_yaw=180,fa_pitch=90,fa_mode="Static",fa_jit=20,fa_ss=10,
pj_en=false,pj_amp=3,pj_rate=.05,rj_en=false,rj_amp=15,rj_rate=.03,
ls_en=false,ls_key=Enum.KeyCode.L,ls_dur=.5,
china=false,china_t="Rainbow",china_s=3,china_h=1.5,china_c=Color3.fromRGB(255,80,255),
halo=false,halo_t="Classic",halo_c=Color3.fromRGB(255,240,120),halo_s=2,halo_h=1.8,
hring=false,hring_c=Color3.fromRGB(200,100,255),hring_s=3,
fcirc=false,fcirc_c=Color3.fromRGB(100,200,255),fcirc_s=5,
aura=false,aura_t="Particle",aura_c=Color3.fromRGB(180,100,255),
cape=false,cape_t="Classic",cape_c=Color3.fromRGB(255,0,0),
wings=false,wings_t="Angel",wings_c=Color3.fromRGB(255,255,255),
porbit=false,porbit_n=5,porbit_c=Color3.fromRGB(100,200,255),porbit_r=4,porbit_s=2,
trail=false,trail_c=Color3.fromRGB(255,100,255),trail_lt=.5,
body_eff="None",body_mat="Neon",body_tr=.5,
hm=false,hm_s="X",hm_c=Color3.fromRGB(255,255,255),he=false,he_t="Spark",hs=false,hs_id=131886985,ke=false,ke_t="Explosion",ks=false,ks_id=4011182692,
btr=false,btr_c=Color3.fromRGB(255,80,80),btr_lt=.1,
grav=false,grav_v=196.2,time_en=false,time_v=14,fog_en=false,fog_v=10000,
noshad=false,nograss=false,nodec=false,nopart=false,nosky=false,noclouds=false,nopfx=false,
amb=false,amb_c=Color3.fromRGB(255,255,255),
fps_ul=false,fps_cap=240,lowg=false,rd_en=false,rd_v=500,
fov_ch=false,fov_v=70,zoom=false,zoom_k=Enum.KeyCode.Z,zoom_v=20,tp=false,fcam=false,fcam_s=100,
theme="Dark",fab_s=56,wm=true,notif=true,
}

local HITP={"Head","HumanoidRootPart","UpperTorso","LowerTorso","Nearest"}
local AMMODES={"Hold","Toggle","Always"}
local AMT={"Normal","Snap","Smooth","Flick","Pixel","Bone","Predictive","Legit","Rage","Magnet"}
local AMP={"FOV","Distance","Health","Threat","Angle"}
local AIM={"Linear","Adaptive","Snap","Smooth","Human"}
local SILMODES={"Raycast","Mouse","Both"}
local SILT={"Classic","Perfect","PSilent","FOV","360","Hitbox","Bone","Projectile","Hitscan","Legit","Rage","Backtrack","Magnetic"}
local ESPBT={"None","2D","3D","Corner","Filled"}
local FLYT={"Normal","Fast","Slow","Legit","Silent","Hover","NoGravity","Vertical","Horizontal"}
local SPDT={"Normal","Fast","Super","Strafe","Crouch","Diagonal","Backward","Sideways"}
local AAT={"Jitter","Spin","Fake Angles","Fake Lag"}
local CHINAT={"Classic","Rainbow","Neon","Spin","Gradient","Outline","Transparent","Fire","Ice","Galaxy"}
local HALOT={"Classic","Spin","Glow","Rainbow","Double"}
local AURAT={"Particle","Fire","Lightning","Smoke","Snow","Sparkles","Orbit","Cosmic","Galaxy","Ring"}
local CAPET={"Classic","Rainbow","Neon","Gradient","Animated"}
local WINGST={"Angel","Demon","Neon","Fire","Ice","Galaxy"}
local BODYT={"None","Rainbow","Neon","Ghost","ForceField","Glass","Material"}
local HMT={"X","Cross","Dot","Circle","Star"}
local HET={"Explosion","Spark","Smoke","Lightning","Fire","Ice","Slash"}

local TH={
Dark={bg=Color3.fromRGB(18,20,28),panel=Color3.fromRGB(26,30,42),accent=Color3.fromRGB(120,200,255),text=Color3.fromRGB(230,230,240)},
Midnight={bg=Color3.fromRGB(12,12,20),panel=Color3.fromRGB(20,20,32),accent=Color3.fromRGB(160,120,255),text=Color3.fromRGB(230,220,255)},
Neon={bg=Color3.fromRGB(14,20,18),panel=Color3.fromRGB(20,35,30),accent=Color3.fromRGB(0,255,180),text=Color3.fromRGB(200,255,230)},
Blood={bg=Color3.fromRGB(20,10,10),panel=Color3.fromRGB(35,15,15),accent=Color3.fromRGB(255,60,60),text=Color3.fromRGB(255,220,220)},
Mono={bg=Color3.fromRGB(20,20,20),panel=Color3.fromRGB(30,30,30),accent=Color3.fromRGB(255,255,255),text=Color3.fromRGB(220,220,220)},
}

local function nt(t,x,d)
if not F.notif then return end
local g=Instance.new("ScreenGui")g.Name="PhantomN"..math.random(1,999)g.ResetOnSpawn=false g.IgnoreGuiInset=true g.DisplayOrder=9998 g.Parent=LP:WaitForChild("PlayerGui")
local fr=Instance.new("Frame")fr.Size=UDim2.new(0,260,0,60)fr.Position=UDim2.new(1,-280,0,20)fr.BackgroundColor3=TH[F.theme].panel fr.BackgroundTransparency=1 fr.BorderSizePixel=0 fr.Parent=g
Instance.new("UICorner",fr).CornerRadius=UDim.new(0,10)
local s=Instance.new("UIStroke",fr)s.Color=TH[F.theme].accent s.Transparency=1 s.Parent=fr
local a=Instance.new("TextLabel",fr)a.Size=UDim2.new(1,-16,0,20)a.Position=UDim2.new(0,8,0,6)a.BackgroundTransparency=1 a.Text=t a.TextColor3=TH[F.theme].accent a.TextTransparency=1 a.Font=Enum.Font.GothamBold a.TextSize=13 a.TextXAlignment=Enum.TextXAlignment.Left
local b=Instance.new("TextLabel",fr)b.Size=UDim2.new(1,-16,0,26)b.Position=UDim2.new(0,8,0,26)b.BackgroundTransparency=1 b.Text=x b.TextColor3=TH[F.theme].text b.TextTransparency=1 b.Font=Enum.Font.Gotham b.TextSize=12 b.TextXAlignment=Enum.TextXAlignment.Left b.TextWrapped=true
T:Create(fr,TweenInfo.new(.3),{BackgroundTransparency=.1}):Play()T:Create(s,TweenInfo.new(.3),{Transparency=.3}):Play()T:Create(a,TweenInfo.new(.3),{TextTransparency=0}):Play()T:Create(b,TweenInfo.new(.3),{TextTransparency=0}):Play()
task.delay(d or 3,function()fr:Destroy()end)
end

-- utils
local function gc(p)if not p then return nil end local c=p.Character if not c then return nil end local h=c:FindFirstChildOfClass("Humanoid")if not h or h.Health<=0 then return nil end return c,h end
local function tm(p)if not F.aim_team then return false end return p.Team and LP.Team and p.Team==LP.Team end
local function stg(c,h)if not F.aim_stag then return false end for _,s in ipairs({Enum.HumanoidStateType.Ragdoll,Enum.HumanoidStateType.FallingDown,Enum.HumanoidStateType.PlatformStanding,Enum.HumanoidStateType.Dead})do if h:GetState()==s then return true end end return false end
local function gp(p,n)local c=gc(p)if not c then return nil end if n=="Nearest" or F.aim_hpn then local ctr=Vector2.new(C.ViewportSize.X/2,C.ViewportSize.Y/2)local b,bd=nil,math.huge for _,o in ipairs(c:GetChildren())do if o:IsA("BasePart")then local sp,_=C:WorldToViewportPoint(o.Position)local d=(Vector2.new(sp.X,sp.Y)-ctr).Magnitude if d<bd then b,bd=o,d end end end return b end return c:FindFirstChild(n) or c:FindFirstChild("HumanoidRootPart")end
local function vis(part)if not part then return false end local rp=RaycastParams.new()rp.FilterType=Enum.RaycastFilterType.Exclude rp.FilterDescendantsInstances={LP.Character,C}local r=workspace:Raycast(C.CFrame.Position,part.Position-C.CFrame.Position,rp)return r==nil or r.Instance:IsDescendantOf(part.Parent)end
local function pp(part,h,m)if not F.aim_pred then return part.Position end if not h or not h.RootPart then return part.Position end local v=h.RootPart.AssemblyLinearVelocity local p2=ping()*2 local d=(part.Position-C.CFrame.Position).Magnitude return part.Position+v*((d/500)+p2)*m end
local function ws(p)local sp,on=C:WorldToViewportPoint(p)return Vector2.new(sp.X,sp.Y),on,sp.Z end

-- bt cache
local btC={}
R.Heartbeat:Connect(function()if not F.bt_en then return end for _,p in ipairs(P:GetPlayers())do if p~=LP then local c=gc(p)if c then local h=c:FindFirstChild("HumanoidRootPart")if h then btC[p]=btC[p] or{}table.insert(btC[p],{p=h.Position,t=tick()})local cut=tick()-F.bt_ms/1000 while #btC[p]>0 and btC[p][1].t<cut do table.remove(btC[p],1)end end end end end end)
local function getBT(p)if not F.bt_en then return nil end local l=btC[p]if not l or #l==0 then return nil end local tg=tick()-F.bt_t local b=l[1]for _,e in ipairs(l)do if math.abs(e.t-tg)<math.abs(b.t-tg)then b=e end end return b and b.p or nil end

-- AI
local aiS={t=nil,ls=0,lv=nil,jo=Vector3.new(),jt=0,rt=0,cf=0}
local function aiT(p,c,h,part)local d=1000 if h.RootPart then d=(h.RootPart.Position-C.CFrame.Position).Magnitude end local hp=h.Health/h.MaxHealth local aim=1 if h.RootPart then aim=math.max(0,h.RootPart.CFrame.LookVector:Dot((C.CFrame.Position-h.RootPart.Position).Unit))end return(1000-d)*.5+hp*200+aim*300 end
local function aiSel()
local b,bs,bp,bpt=nil,-math.huge,nil,nil
for _,p in ipairs(P:GetPlayers())do if p~=LP and not tm(p)then local c,h=gc(p)if c and h and not stg(c,h)then local part=gp(p,F.aim_part)if part then local pos
if F.ai_dodge and h.RootPart then local v=h.RootPart.AssemblyLinearVelocity local a=v-(aiS.lv or v)aiS.lv=v local p2=ping()*2 local d=(part.Position-C.CFrame.Position).Magnitude local t=(d/500)+p2 pos=part.Position+v*t*F.ai_lead+a*t*.5
else pos=pp(part,h,F.ai_lead)end
local bt=getBT(p)if bt then pos=bt end
local sp,on=ws(pos)if on then local d=(pos-C.CFrame.Position).Magnitude local fv=(sp-Vector2.new(C.ViewportSize.X/2,C.ViewportSize.Y/2)).Magnitude
if fv<F.aim_fov and d<F.aim_max then local vv=not F.aim_wall or vis(part)if vv then local sc
if F.ai_thr then sc=aiT(p,c,h,part)*(F.ai_aggr+.5)-fv*.1 else sc=-fv end
if sc>bs then b,bs,bp,bpt=p,sc,pos,part end end end end end end end end
return b,bp,bpt
end

local function aiUp(dt)
local t,tp,tpt=aiSel()
if t~=aiS.t then if aiS.t and(tick()-aiS.ls)<.3 and F.ai_ts then t=aiS.t else aiS.t=t aiS.ls=tick()aiS.rt=F.ai_react/1000 aiS.cf=0 end end
if not aiS.t or not tp then return nil end
if aiS.rt>0 then aiS.rt=aiS.rt-dt return nil end
aiS.cf=math.min(1,aiS.cf+dt*2)aiS.jt=aiS.jt-dt
if aiS.jt<=0 then aiS.jt=.05+math.random()*.1 local a=F.ai_jita*(1-aiS.cf*.7)aiS.jo=Vector3.new((math.random()-.5)*a*.1,(math.random()-.5)*a*.1,(math.random()-.5)*a*.1)end
local fp=tp if F.ai_jit then fp=fp+aiS.jo end
local tcf=CFrame.new(C.CFrame.Position,fp)local bs=F.aim_smooth*(2-F.ai_aggr)/F.ai_sens
local m=F.ai_mode
if m=="Linear"then C.CFrame=C.CFrame:Lerp(tcf,1-bs)
elseif m=="Adaptive"then C.CFrame=C.CFrame:Lerp(tcf,1-bs*(1-aiS.cf))
elseif m=="Snap"then if tick()-aiS.ls>F.ai_snapt then C.CFrame=tcf else C.CFrame=C.CFrame:Lerp(tcf,1-bs)end
elseif m=="Smooth"then C.CFrame=C.CFrame:Lerp(tcf,.05*F.ai_sens)
elseif m=="Human"then local d=(tcf.Position-C.CFrame.Position).Magnitude local sf=math.min(1,20/math.max(d,1))C.CFrame=C.CFrame:Lerp(tcf,sf*(1-bs*.5))end
return aiS.t,tpt
end

local function getClosest(o)
local ctr=Vector2.new(C.ViewportSize.X/2,C.ViewportSize.Y/2)
local b,bs,bp,bpt=nil,math.huge,nil,nil
for _,p in ipairs(P:GetPlayers())do if p~=LP and not(o.tc and tm(p))then local c,h=gc(p)if c and h and not(o.st and stg(c,h))then local part=gp(p,o.part)if part then local pos=o.pred and pp(part,h,F.aim_predx) or part.Position local bt=getBT(p)if bt then pos=bt end
local sp,on=ws(pos)local d3=(pos-C.CFrame.Position).Magnitude
if on and d3<=o.md then local fv=(sp-ctr).Magnitude local mf=o.fov if o.f360 then mf=math.huge end
if fv<mf then local sc=fv if o.pri=="Distance"then sc=d3 elseif o.pri=="Health"then sc=h.Health elseif o.pri=="Threat"then sc=-aiT(p,c,h,part) elseif o.pri=="Angle"and h.RootPart then sc=-h.RootPart.CFrame.LookVector:Dot((C.CFrame.Position-h.RootPart.Position).Unit)end
local vv=true if o.wc then vv=vis(part)end
if vv and sc<bs then b,bs,bp,bpt=p,sc,pos,part end end end end end end end end
return b,bp,bpt
end

-- rage
local rageS={t={},ls=0,sa=0}
local function rageSel()
local list={}local ctr=Vector2.new(C.ViewportSize.X/2,C.ViewportSize.Y/2)
for _,p in ipairs(P:GetPlayers())do if p~=LP and not(F.rage_it and tm(p))then local c,h=gc(p)
if c and h and not(F.rage_is and stg(c,h))then local part=gp(p,F.rage_hs and"Head"or"UpperTorso")
if part then local pos=part.Position if F.rage_pred and h.RootPart then local v=h.RootPart.AssemblyLinearVelocity local p2=ping()*2 local d=(part.Position-C.CFrame.Position).Magnitude pos=part.Position+v*((d/500)+p2)*F.rage_pm end
if F.rage_bt then local bt=getBT(p)if bt then pos=bt end end
local sp,on=ws(pos)if on then if F.rage_iv or vis(part)then local fv=(sp-ctr).Magnitude local d3=(pos-C.CFrame.Position).Magnitude table.insert(list,{p=p,c=c,h=h,part=part,pos=pos,fv=fv,d3=d3})end end end end end end
table.sort(list,function(a,b)return a.fv<b.fv end)return list
end
local function rageUp(dt)
if not F.rage_en then return end
local tg=rageSel()if #tg==0 then return end
local pr=tg[1]rageS.t=tg
local tcf=CFrame.new(C.CFrame.Position,pr.pos)
if F.rage_1t or F.rage_snap or F.rage_ns then C.CFrame=tcf else C.CFrame=C.CFrame:Lerp(tcf,.95)end
if F.rage_spin then rageS.sa=rageS.sa+dt*F.rage_ss C.CFrame=C.CFrame*CFrame.Angles(0,rageS.sa,0)end
if F.rage_af or F.rage_it then pcall(function()mouse1click()end)end
if F.rage_sw and #tg>1 then if tick()-rageS.ls>rageS.swd then rageS.ls=tick()table.remove(tg,1)table.insert(tg,pr)end end
end

-- legit
local lgS={lt=nil,ls=0,lf=0,ph="aim",rs=0,lp=nil}
local function lgPick(c)if not F.legit_rhp then return c:FindFirstChild("UpperTorso")or c:FindFirstChild("HumanoidRootPart")end local l={"Head","UpperTorso","HumanoidRootPart"}local n=l[math.random(1,#l)]return c:FindFirstChild(n)or c:FindFirstChild("HumanoidRootPart")end
local function lgSel()
if F.legit_tl and lgS.lt then if tick()-lgS.ls<F.legit_lt then local c,h=gc(lgS.lt)if c and h then local part=lgPick(c)if part then local pos=part.Position local sp,on=ws(pos)if on then local ctr=Vector2.new(C.ViewportSize.X/2,C.ViewportSize.Y/2)local fv=(sp-ctr).Magnitude if fv<F.legit_fov then return lgS.lt,part,pos end end end end end lgS.lt=nil end end
local b,bp,bpos,bd=nil,nil,nil,math.huge local ctr=Vector2.new(C.ViewportSize.X/2,C.ViewportSize.Y/2)
for _,p in ipairs(P:GetPlayers())do if p~=LP and not(F.legit_rt and tm(p))then local c,h=gc(p)
if c and h and not(F.legit_ns and stg(c,h))then local part=lgPick(c)
if part then local pos=part.Position local sp,on=ws(pos)
if on then local fv=(sp-ctr).Magnitude local d3=(pos-C.CFrame.Position).Magnitude
if fv<F.legit_fov and d3<F.legit_md then local vv=not F.legit_nw or vis(part)
if vv and F.legit_vo==false or vis(part)then if F.legit_fo and h.RootPart then local ld=h.RootPart.CFrame.LookVector local tm2=(C.CFrame.Position-h.RootPart.Position).Unit if ld:Dot(tm2)<.1 then vv=false end end
if vv then if fv<bd then b,bp,bpos,bd=p,part,pos,fv end end end end end end end end end end
if b then lgS.lt=b lgS.ls=tick()end
return b,bp,bpos
end
local function lgUp(dt)
if not F.legit_en then return end
if lgS.ph=="rel"then lgS.rs=lgS.rs+dt if lgS.rs>F.legit_rt2 then lgS.ph="aim"lgS.rs=0 end return end
local t,part,pos=lgSel()
if not t or not pos then if F.legit_sr and lgS.lt then lgS.ph="rel"lgS.rs=0 lgS.lt=nil end return end
if F.legit_he>0 then local e=Vector3.new((math.random()-.5)*F.legit_he,(math.random()-.5)*F.legit_he,(math.random()-.5)*F.legit_he)pos=pos+e end
if F.legit_jit and lgS.lp then local j=Vector3.new((math.random()-.5)*F.legit_ja,(math.random()-.5)*F.legit_ja,(math.random()-.5)*F.legit_ja)pos=pos+j end
lgS.lp=pos
local tcf=CFrame.new(C.CFrame.Position,pos)C.CFrame=C.CFrame:Lerp(tcf,(1-F.legit_sm)*.15)
if F.legit_ds and(tick()-lgS.ls)>F.legit_sa then C.CFrame=tcf end
end

-- fake lag / desync
local FL={fa=false,fh=0,do=Vector3.new(),fb=nil,no=true,ls=false,lst=nil,pjt=0,rjt=0,rja=0,oh=nil}
local function relNo()local c=LP.Character if not c then return end local h=c:FindFirstChild("HumanoidRootPart")if not h then return end pcall(function()h:SetNetworkOwner(nil)end)FL.no=false end
local function recNo()local c=LP.Character if not c then return end local h=c:FindFirstChild("HumanoidRootPart")if not h then return end pcall(function()h:SetNetworkOwner(LP)end)FL.no=true end
local function pjTick(dt)if not F.pj_en then return end FL.pjt=FL.pjt-dt if FL.pjt>0 then return end FL.pjt=F.pj_rate local c=LP.Character if not c then return end local h=c:FindFirstChild("HumanoidRootPart")if not h then return end local a=F.pj_amp h.CFrame=h.CFrame+Vector3.new((math.random()-.5)*a,(math.random()-.5)*a*.3,(math.random()-.5)*a)end
local function rjTick(dt)
if not F.rj_en and not F.fa_en then return end
FL.rjt=FL.rjt-dt if FL.rjt>0 then return end FL.rjt=F.rj_rate
local c=LP.Character if not c then return end local h=c:FindFirstChild("HumanoidRootPart")if not h then return end
local y,p=0,0
if F.fa_en then local m=F.fa_mode if m=="Static"then y=math.rad(F.fa_yaw)p=math.rad(F.fa_pitch)elseif m=="Jitter"then local j=math.rad(F.fa_jit)y=math.rad(F.fa_yaw)+(math.random()-.5)*j p=math.rad(F.fa_pitch)+(math.random()-.5)*j elseif m=="Spin"then y=math.rad(F.fa_yaw)+tick()*F.fa_ss p=math.rad(F.fa_pitch)end end
if F.rj_en then local a=math.rad(F.rj_amp)y=y+(math.random()-.5)*a p=p+(math.random()-.5)*a end
h.CFrame=CFrame.new(h.Position)*CFrame.Angles(p,y,0)
end

-- visuals
local VN={"PhantomChinaHat","PhantomHalo","PhantomHeadRing","PhantomFeetCircle","PhantomAura","PhantomCape","PhantomWings","PhantomPetOrbit","PhantomTrail"}
local function cleanupN(n)local c=LP.Character if not c then return end local o=c:FindFirstChild(n)if o then o:Destroy()end local h=c:FindFirstChild("HumanoidRootPart")if h then local o2=h:FindFirstChild(n)if o2 then o2:Destroy()end end end
local function newP(n,s,sh,mt,cl,par)local p=Instance.new("Part")p.Name=n p.Size=s if sh then p.Shape=sh end p.Material=mt or Enum.Material.Neon p.Color=cl or Color3.new(1,1,1)p.Anchored=false p.CanCollide=false p.CanQuery=false p.CanTouch=false p.Massless=true p.Parent=par return p end
local function weld(a,b)local w=Instance.new("WeldConstraint")w.Part0=a w.Part1=b w.Parent=b end

local function buildChina()
local c=LP.Character if not c then return end local hd=c:FindFirstChild("Head")if not hd then return end cleanupN("PhantomChinaHat")
local m=Instance.new("Model")m.Name="PhantomChinaHat"
local s=F.china_s local hh=F.china_h local cl=F.china_c
local cone=newP("Cone",Vector3.new(s*.8,s,s),Enum.PartType.Cylinder,Enum.Material.Neon,cl,m)cone.CFrame=hd.CFrame*CFrame.new(0,hh,0)*CFrame.Angles(0,0,math.rad(90))
local top=newP("Top",Vector3.new(.35,.35,.35),Enum.PartType.Ball,Enum.Material.Neon,cl,m)top.CFrame=hd.CFrame*CFrame.new(0,hh+s*.55,0)
local br=newP("Brim",Vector3.new(.15,s*1.4,s*1.4),Enum.PartType.Cylinder,Enum.Material.Neon,cl,m)br.CFrame=hd.CFrame*CFrame.new(0,hh-s*.35,0)*CFrame.Angles(0,0,math.rad(90))
weld(hd,cone)weld(hd,top)weld(hd,br)
local t=F.china_t
if t=="Outline"then pcall(function()local sb=Instance.new("SelectionBox")sb.Adornee=cone sb.LineThickness=.05 sb.Color3=cl sb.SurfaceTransparency=1 sb.Parent=cone end)
elseif t=="Transparent"then for _,p in ipairs({cone,top,br})do p.Transparency=.4 end
elseif t=="Spin"then task.spawn(function()while m.Parent do task.wait()for _,p in ipairs({cone,br})do p.CFrame=p.CFrame*CFrame.Angles(0,math.rad(4),0)end end end)
elseif t=="Rainbow"then task.spawn(function()local h=0 while m.Parent do task.wait(.03)h=(h+.01)%1 local cc=Color3.fromHSV(h,1,1)pcall(function()for _,p in ipairs({cone,top,br})do p.Color=cc end end)end end)
elseif t=="Gradient"then task.spawn(function()local h=0 while m.Parent do task.wait(.03)h=(h+.005)%1 pcall(function()cone.Color=Color3.fromHSV(h,1,1)top.Color=Color3.fromHSV((h+.15)%1,1,1)br.Color=Color3.fromHSV((h+.3)%1,1,1)end)end end)
elseif t=="Fire"then cone.Color=Color3.fromRGB(255,120,30)top.Color=Color3.fromRGB(255,200,50)pcall(function()local att=Instance.new("Attachment",cone)local pe=Instance.new("ParticleEmitter",att)pe.Rate=40 pe.Lifetime=NumberRange.new(.4,.8)pe.Speed=NumberRange.new(3,8)pe.SpreadAngle=Vector2.new(0,0)pe.Size=NumberSequence.new(.5)pe.Texture="rbxasset://textures/particles/fire_main.dds"pe.Color=ColorSequence.new(Color3.fromRGB(255,150,40))pe.LightEmission=1 end)
elseif t=="Ice"then cone.Color=Color3.fromRGB(180,230,255)top.Color=Color3.fromRGB(220,245,255)pcall(function()local att=Instance.new("Attachment",cone)local pe=Instance.new("ParticleEmitter",att)pe.Rate=20 pe.Lifetime=NumberRange.new(.6,1.2)pe.Speed=NumberRange.new(2,5)pe.Size=NumberSequence.new(.4)pe.Texture="rbxasset://textures/particles/sparkles_main.dds"pe.Color=ColorSequence.new(Color3.fromRGB(200,240,255))end)
elseif t=="Galaxy"then pcall(function()local att=Instance.new("Attachment",cone)local pe=Instance.new("ParticleEmitter",att)pe.Rate=30 pe.Lifetime=NumberRange.new(.8,1.5)pe.Speed=NumberRange.new(1,4)pe.Size=NumberSequence.new(.3)pe.Texture="rbxasset://textures/particles/sparkles_main.dds"pe.Color=ColorSequence.new(Color3.fromRGB(180,100,255))task.spawn(function()local h=0 while m.Parent do task.wait(.05)h=(h+.02)%1 pcall(function()pe.Color=ColorSequence.new(Color3.fromHSV(h,.7,1))end)end end)end)end
if t~="Classic"and t~="Outline"then pcall(function()local hl=Instance.new("Highlight")hl.Adornee=m hl.FillColor=cl hl.FillTransparency=.6 hl.OutlineColor=cl hl.OutlineTransparency=.3 hl.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop hl.Parent=m end)end
m.Parent=c
end

local function buildHalo()
local c=LP.Character if not c then return end local hd=c:FindFirstChild("Head")if not hd then return end cleanupN("PhantomHalo")
local g=Instance.new("Model")g.Name="PhantomHalo"g.Parent=c
local function mk(o,sm,col)local r=Instance.new("Part")r.Shape=Enum.PartType.Cylinder r.Size=Vector3.new(.15,F.halo_s*sm,F.halo_s*sm)r.Material=Enum.Material.Neon r.Color=col r.Anchored=false r.CanCollide=false r.CanQuery=false r.CanTouch=false r.Massless=true r.Transparency=.1 r.CFrame=hd.CFrame*CFrame.new(0,F.halo_h+o,0)*CFrame.Angles(0,0,math.rad(90))r.Parent=g local w=Instance.new("WeldConstraint")w.Part0=hd w.Part1=r w.Parent=r return r end
local rings={}if F.halo_t=="Double"then table.insert(rings,mk(0,1,F.halo_c))table.insert(rings,mk(.5,.8,F.halo_c))else table.insert(rings,mk(0,1,F.halo_c))end
local t=F.halo_t
if t=="Spin"or t=="Double"then task.spawn(function()while g.Parent do task.wait()for _,r in ipairs(rings)do r.CFrame=r.CFrame*CFrame.Angles(0,math.rad(3),0)end end end)
elseif t=="Rainbow"then task.spawn(function()local h=0 while g.Parent do task.wait(.03)h=(h+.01)%1 for _,r in ipairs(rings)do r.Color=Color3.fromHSV(h,1,1)end end end)
elseif t=="Glow"then for _,r in ipairs(rings)do pcall(function()local att=Instance.new("Attachment",r)local pe=Instance.new("ParticleEmitter",att)pe.Rate=20 pe.Lifetime=NumberRange.new(.3,.6)pe.Speed=NumberRange.new(0,1)pe.Size=NumberSequence.new(.4)pe.Texture="rbxasset://textures/particles/glow_main.dds"pe.Color=ColorSequence.new(F.halo_c)end)end end
end

local function buildRing()
local c=LP.Character if not c then return end local hd=c:FindFirstChild("Head")if not hd then return end cleanupN("PhantomHeadRing")
local r=newP("PhantomHeadRing",Vector3.new(.1,F.hring_s,F.hring_s),Enum.PartType.Cylinder,Enum.Material.Neon,F.hring_c,c)r.CFrame=hd.CFrame*CFrame.Angles(0,0,math.rad(90))weld(hd,r)
task.spawn(function()while r.Parent do task.wait()r.CFrame=r.CFrame*CFrame.Angles(0,math.rad(2),0)end end)
end

local function buildFC()
local c=LP.Character if not c then return end local h=c:FindFirstChild("HumanoidRootPart")if not h then return end cleanupN("PhantomFeetCircle")
local d=newP("PhantomFeetCircle",Vector3.new(.1,F.fcirc_s,F.fcirc_s),Enum.PartType.Cylinder,Enum.Material.Neon,F.fcirc_c,c)d.CFrame=h.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(0,0,math.rad(90))d.Transparency=.3 weld(h,d)
pcall(function()local att=Instance.new("Attachment",d)local pe=Instance.new("ParticleEmitter",att)pe.Rate=15 pe.Lifetime=NumberRange.new(.5,1)pe.Speed=NumberRange.new(1,3)pe.Size=NumberSequence.new(.3)pe.Texture="rbxasset://textures/particles/sparkles_main.dds"pe.Color=ColorSequence.new(F.fcirc_c)end)
end

local function buildAura()
local c=LP.Character if not c then return end local h=c:FindFirstChild("HumanoidRootPart")if not h then return end cleanupN("PhantomAura")
local att=Instance.new("Attachment")att.Name="PhantomAura"att.Parent=h
local function em(n,pr)pcall(function()local pe=Instance.new("ParticleEmitter")pe.Name=n for k,v in pairs(pr)do pe[k]=v end pe.Parent=att end)end
local t=F.aura_t local col=F.aura_c
if t=="Particle"then em("P",{Rate=30,Lifetime=NumberRange.new(.5,1),Speed=NumberRange.new(2,5),SpreadAngle=Vector2.new(180,180),Size=NumberSequence.new(.3),Texture="rbxasset://textures/particles/sparkles_main.dds",Color=ColorSequence.new(col),Transparency=NumberSequence.new(.3)})
elseif t=="Fire"then em("F",{Rate=30,Lifetime=NumberRange.new(.4,.9),Speed=NumberRange.new(3,8),SpreadAngle=Vector2.new(0,0),Size=NumberSequence.new(.6),Texture="rbxasset://textures/particles/fire_main.dds",Color=ColorSequence.new(Color3.fromRGB(255,120,30)),LightEmission=1,LightInfluence=0})
elseif t=="Lightning"then em("L",{Rate=20,Lifetime=NumberRange.new(.2,.4),Speed=NumberRange.new(5,12),Size=NumberSequence.new(.5),Texture="rbxasset://textures/particles/explosion01_implosion_main.dds",Color=ColorSequence.new(Color3.fromRGB(180,200,255)),LightEmission=1,LightInfluence=0})
elseif t=="Smoke"then em("S",{Rate=20,Lifetime=NumberRange.new(1,2),Speed=NumberRange.new(1,3),Size=NumberSequence.new(1),Texture="rbxasset://textures/particles/smoke_main.dds",Color=ColorSequence.new(col),Transparency=NumberSequence.new(.5)})
elseif t=="Snow"then em("Sn",{Rate=30,Lifetime=NumberRange.new(1,2),Speed=NumberRange.new(1,4),Size=NumberSequence.new(.3),Texture="rbxasset://textures/particles/sparkles_main.dds",Color=ColorSequence.new(Color3.fromRGB(220,240,255)),SpreadAngle=Vector2.new(30,30)})
elseif t=="Sparkles"then em("Sp",{Rate=50,Lifetime=NumberRange.new(.4,.8),Speed=NumberRange.new(2,6),SpreadAngle=Vector2.new(180,180),Size=NumberSequence.new(.4),Texture="rbxasset://textures/particles/sparkles_main.dds",Color=ColorSequence.new(col),LightEmission=1})
elseif t=="Orbit"then local m=Instance.new("Model")m.Name="PhantomOrbit"m.Parent=workspace local os={}for i=1,6 do local o=Instance.new("Part")o.Shape=Enum.PartType.Ball o.Size=Vector3.new(.35,.35,.35)o.Material=Enum.Material.Neon o.Color=col o.Anchored=true o.CanCollide=false o.CanQuery=false o.CanTouch=false o.Parent=m os[i]=o end
task.spawn(function()while m.Parent do task.wait(.03)if not h.Parent then break end local a0=tick()*2 for i,o in ipairs(os)do local a=a0+i*(math.pi*2/6)o.CFrame=h.CFrame*CFrame.new(math.cos(a)*3,math.sin(a)*1,math.sin(a)*3)end end m:Destroy()end)return
elseif t=="Cosmic"then em("C",{Rate=40,Lifetime=NumberRange.new(1,2),Speed=NumberRange.new(1,3),Size=NumberSequence.new(.3),Texture="rbxasset://textures/particles/sparkles_main.dds",Color=ColorSequence.new(Color3.fromRGB(150,100,255)),LightEmission=1})
elseif t=="Galaxy"then em("G",{Rate=25,Lifetime=NumberRange.new(.8,1.5),Speed=NumberRange.new(1,4),Size=NumberSequence.new(.3),Texture="rbxasset://textures/particles/sparkles_main.dds",Color=ColorSequence.new(Color3.fromRGB(180,100,255))})task.spawn(function()local h2=0 while att.Parent do task.wait(.05)h2=(h2+.02)%1 pcall(function()for _,pe in ipairs(att:GetChildren())do if pe:IsA("ParticleEmitter")then pe.Color=ColorSequence.new(Color3.fromHSV(h2,.8,1))end end end)end end)
elseif t=="Ring"then em("R",{Rate=10,Lifetime=NumberRange.new(.8,1.2),Speed=NumberRange.new(0,0),Size=NumberSequence.new(2),Texture="rbxasset://textures/particles/glow_main.dds",Color=ColorSequence.new(col)})end
end

local function buildCape()
local c=LP.Character if not c then return end local t2=c:FindFirstChild("UpperTorso")or c:FindFirstChild("Torso")if not t2 then return end cleanupN("PhantomCape")
local cp=newP("PhantomCape",Vector3.new(2.2,3,.1),nil,Enum.Material.Fabric,F.cape_c,c)cp.CFrame=t2.CFrame*CFrame.new(0,-.5,.8)weld(t2,cp)
local t=F.cape_t
if t=="Neon"then cp.Material=Enum.Material.Neon
elseif t=="Rainbow"then task.spawn(function()local h=0 while cp.Parent do task.wait(.03)h=(h+.01)%1 pcall(function()cp.Color=Color3.fromHSV(h,1,1)end)end end)
elseif t=="Gradient"then cp.Material=Enum.Material.SmoothPlastic pcall(function()local hl=Instance.new("Highlight")hl.Adornee=cp hl.FillColor=F.cape_c hl.FillTransparency=.5 hl.OutlineColor=Color3.fromRGB(255,255,255)hl.Parent=cp task.spawn(function()local h=0 while cp.Parent do task.wait(.05)h=(h+.01)%1 pcall(function()hl.FillColor=Color3.fromHSV(h,1,1)end)end end)end)
elseif t=="Animated"then cp.Material=Enum.Material.Neon pcall(function()local att=Instance.new("Attachment",cp)local pe=Instance.new("ParticleEmitter",att)pe.Rate=20 pe.Lifetime=NumberRange.new(.5,1)pe.Speed=NumberRange.new(1,3)pe.Size=NumberSequence.new(.4)pe.Texture="rbxasset://textures/particles/sparkles_main.dds"pe.Color=ColorSequence.new(F.cape_c)end)end
end

local function buildWings()
local c=LP.Character if not c then return end local t2=c:FindFirstChild("UpperTorso")or c:FindFirstChild("Torso")if not t2 then return end cleanupN("PhantomWings")
local m=Instance.new("Model")m.Name="PhantomWings"m.Parent=c
local t=F.wings_t local col=F.wings_c local mat=Enum.Material.SmoothPlastic
if t=="Angel"then col=Color3.fromRGB(255,255,255)
elseif t=="Demon"then col=Color3.fromRGB(50,20,60)
elseif t=="Neon"then mat=Enum.Material.Neon
elseif t=="Fire"then col=Color3.fromRGB(255,100,30)mat=Enum.Material.Neon
elseif t=="Ice"then col=Color3.fromRGB(180,230,255)mat=Enum.Material.Neon
elseif t=="Galaxy"then col=Color3.fromRGB(150,100,255)mat=Enum.Material.Neon end
for s=-1,1,2 do local w=Instance.new("Part")w.Name="Wing"..s w.Size=Vector3.new(.15,2,3)w.Material=mat w.Color=col w.Anchored=false w.CanCollide=false w.CanQuery=false w.CanTouch=false w.Massless=true w.CFrame=t2.CFrame*CFrame.new(s*1.5,0,.8)*CFrame.Angles(0,math.rad(s*15),0)w.Parent=m local wc=Instance.new("WeldConstraint")wc.Part0=t2 wc.Part1=w wc.Parent=w end
if t=="Fire"or t=="Galaxy"or t=="Ice"then for _,w in ipairs(m:GetChildren())do if w:IsA("Part")then pcall(function()local att=Instance.new("Attachment",w)local pe=Instance.new("ParticleEmitter",att)pe.Rate=30 pe.Lifetime=NumberRange.new(.4,.8)pe.Speed=NumberRange.new(1,3)pe.Size=NumberSequence.new(.4)if t=="Fire"then pe.Texture="rbxasset://textures/particles/fire_main.dds"pe.Color=ColorSequence.new(Color3.fromRGB(255,150,40))else pe.Texture="rbxasset://textures/particles/sparkles_main.dds"pe.Color=ColorSequence.new(col)end pe.LightEmission=1 end)end end end
if t=="Galaxy"then task.spawn(function()local h=0 while m.Parent do task.wait(.05)h=(h+.02)%1 for _,w in ipairs(m:GetChildren())do if w:IsA("Part")then pcall(function()w.Color=Color3.fromHSV(h,.8,1)end)end end end end)end
end

local function buildOrbit()
local c=LP.Character if not c then return end local h=c:FindFirstChild("HumanoidRootPart")if not h then return end cleanupN("PhantomPetOrbit")
for _,o in ipairs(workspace:GetChildren())do if o.Name=="PhantomOrb_"..LP.Name then o:Destroy()end end
local m=Instance.new("Model")m.Name="PhantomPetOrbit"m.Parent=workspace
local os={}for i=1,F.porbit_n do local o=Instance.new("Part")o.Shape=Enum.PartType.Ball o.Size=Vector3.new(.6,.6,.6)o.Material=Enum.Material.Neon o.Color=F.porbit_c o.Anchored=true o.CanCollide=false o.CanQuery=false o.CanTouch=false o.Parent=m os[i]=o end
task.spawn(function()local ph=0 while m.Parent do task.wait(.03)if not h.Parent then break end ph=ph+.05*F.porbit_s for i,o in ipairs(os)do local a=ph+i*(math.pi*2/F.porbit_n)o.CFrame=h.CFrame*CFrame.new(math.cos(a)*F.porbit_r,math.sin(ph*2+i)*.5,math.sin(a)*F.porbit_r)end end m:Destroy()end)
end

local function buildTrail()
local c=LP.Character if not c then return end local h=c:FindFirstChild("HumanoidRootPart")if not h then return end for _,tr in ipairs(h:GetChildren())do if tr:IsA("Trail")then tr:Destroy()end end cleanupN("PhantomTrail")
local a0=Instance.new("Attachment")a0.Name="PhantomTrail"a0.Position=Vector3.new(0,1,0)a0.Parent=h
local a1=Instance.new("Attachment")a1.Name="PhantomTrail2"a1.Position=Vector3.new(0,-1,0)a1.Parent=h
local tr=Instance.new("Trail")tr.Attachment0=a0 tr.Attachment1=a1 tr.Color=ColorSequence.new(F.trail_c)tr.Lifetime=F.trail_lt tr.MinLength=0 tr.LightEmission=1 tr.Parent=h
task.spawn(function()local h2=0 while tr.Parent do task.wait(.05)h2=(h2+.01)%1 pcall(function()tr.Color=ColorSequence.new(Color3.fromHSV(h2,1,1))end)end end)
end

-- ESP
local espF=Instance.new("Folder")espF.Name="PhantomESP"espF.Parent=game:GetService("CoreGui"):WaitForChild("RobloxGui")or game:GetService("CoreGui")
local espD={}
local function mkESP(p)
if espD[p] or p==LP then return end
local box=Instance.new("Frame",espF)box.BackgroundTransparency=1 box.BorderSizePixel=0 box.Visible=false
local st=Instance.new("UIStroke",box)st.Color=Color3.fromRGB(255,60,60)st.Thickness=1.5
local nm=Instance.new("TextLabel",box)nm.Size=UDim2.new(1,0,0,14)nm.Position=UDim2.new(0,0,-1,-2)nm.BackgroundTransparency=1 nm.Text=p.Name nm.TextColor3=Color3.fromRGB(255,255,255)nm.TextStrokeTransparency=0 nm.Font=Enum.Font.GothamBold nm.TextSize=12
local ds=Instance.new("TextLabel",box)ds.Size=UDim2.new(1,0,0,12)ds.Position=UDim2.new(0,0,1,2)ds.BackgroundTransparency=1 ds.TextColor3=Color3.fromRGB(200,200,200)ds.TextStrokeTransparency=0 ds.Font=Enum.Font.Gotham ds.TextSize=11
local hp=Instance.new("Frame",box)hp.Size=UDim2.new(0,3,1,0)hp.Position=UDim2.new(-1,-4,0,0)hp.BackgroundColor3=Color3.fromRGB(0,255,0)hp.BorderSizePixel=0
local dot=Instance.new("Frame",espF)dot.Size=UDim2.new(0,6,0,6)dot.BackgroundColor3=Color3.fromRGB(255,0,0)dot.BorderSizePixel=0 dot.Visible=false Instance.new("UICorner",dot).CornerRadius=UDim.new(1,0)
local tr=Instance.new("Frame",espF)tr.BackgroundColor3=Color3.fromRGB(255,60,60)tr.BorderSizePixel=0 tr.Visible=false tr.ZIndex=0
espD[p]={box=box,st=st,nm=nm,ds=ds,hp=hp,dot=dot,tr=tr}
end
local function rmESP(p)local d=espD[p]if d then for _,v in pairs(d)do pcall(function()v:Destroy()end)end espD[p]=nil end end
P.PlayerAdded:Connect(mkESP)P.PlayerRemoving:Connect(rmESP)for _,p in ipairs(P:GetPlayers())do mkESP(p)end

-- FOV circle
local fovG=Instance.new("ScreenGui")fovG.Name="PhantomFOV"fovG.ResetOnSpawn=false fovG.IgnoreGuiInset=true fovG.Parent=LP:WaitForChild("PlayerGui")
local fovC=Instance.new("Frame",fovG)fovC.Size=UDim2.new(0,200,0,200)fovC.Position=UDim2.new(.5,-100,.5,-100)fovC.BackgroundTransparency=1 fovC.Visible=false
local fovS=Instance.new("UIStroke",fovC)fovS.Color=F.fov_cc fovS.Thickness=1.5 fovS.Transparency=.4
Instance.new("UICorner",fovC).CornerRadius=UDim.new(1,0)

-- hit marker GUI
local hmG
local function initHM()if hmG then return end hmG=Instance.new("ScreenGui")hmG.Name="PhantomHM"hmG.ResetOnSpawn=false hmG.IgnoreGuiInset=true hmG.DisplayOrder=9997 hmG.Parent=LP:WaitForChild("PlayerGui")end
local function showHM()if not F.hm then return end initHM()
local m=Instance.new("Frame",hmG)m.Size=UDim2.new(0,28,0,28)m.Position=UDim2.new(.5,-14,.5,-14)m.BackgroundTransparency=1
local s=F.hm_s
if s=="X"then for _,r in ipairs({45,-45})do local l=Instance.new("Frame",m)l.Size=UDim2.new(0,2,1,0)l.Position=UDim2.new(.5,-1,0,0)l.BackgroundColor3=F.hm_c l.BorderSizePixel=0 l.Rotation=r end
elseif s=="Cross"then local h=Instance.new("Frame",m)h.Size=UDim2.new(1,0,0,2)h.Position=UDim2.new(0,0,.5,-1)h.BackgroundColor3=F.hm_c h.BorderSizePixel=0 local v=Instance.new("Frame",m)v.Size=UDim2.new(0,2,1,0)v.Position=UDim2.new(.5,-1,0,0)v.BackgroundColor3=F.hm_c v.BorderSizePixel=0
elseif s=="Dot"then local d=Instance.new("Frame",m)d.Size=UDim2.new(.4,0,.4,0)d.Position=UDim2.new(.3,0,.3,0)d.BackgroundColor3=F.hm_c d.BorderSizePixel=0 Instance.new("UICorner",d).CornerRadius=UDim.new(1,0)
elseif s=="Circle"then local c=Instance.new("Frame",m)c.Size=UDim2.new(1,0,1,0)c.BackgroundTransparency=1 local st=Instance.new("UIStroke",c)st.Color=F.hm_c st.Thickness=2 Instance.new("UICorner",c).CornerRadius=UDim.new(1,0)
elseif s=="Star"then for i=1,4 do local l=Instance.new("Frame",m)l.Size=UDim2.new(0,2,1,0)l.Position=UDim2.new(.5,-1,0,0)l.BackgroundColor3=F.hm_c l.BorderSizePixel=0 l.Rotation=i*45 end end
T:Create(m,TweenInfo.new(.15),{Size=UDim2.new(0,44,0,44),Position=UDim2.new(.5,-22,.5,-22)}):Play()task.delay(.25,function()m:Destroy()end)
end

local function hitFx(pos)
if not F.he then return end local t=F.he_t
if t=="Explosion"then pcall(function()local e=Instance.new("Explosion")e.Position=pos e.BlastRadius=0 e.BlastPressure=0 e.DestroyJointRadiusPercent=0 e.ExplosionType=Enum.ExplosionType.NoCraters e.Parent=workspace end)return end
local p=Instance.new("Part")p.Anchored=true p.CanCollide=false p.CanQuery=false p.CanTouch=false p.Transparency=1 p.Size=Vector3.new(.1,.1,.1)p.CFrame=CFrame.new(pos)p.Parent=workspace
pcall(function()local a=Instance.new("Attachment",p)local pe=Instance.new("ParticleEmitter",a)pe.Speed=NumberRange.new(5,15)pe.Lifetime=NumberRange.new(.2,.5)pe.SpreadAngle=Vector2.new(180,180)pe.Rate=0
if t=="Spark"then pe.Texture="rbxasset://textures/particles/sparkles_main.dds"pe.Color=ColorSequence.new(Color3.fromRGB(255,200,80))
elseif t=="Fire"then pe.Texture="rbxasset://textures/particles/fire_main.dds"pe.Color=ColorSequence.new(Color3.fromRGB(255,120,30))
elseif t=="Ice"then pe.Texture="rbxasset://textures/particles/sparkles_main.dds"pe.Color=ColorSequence.new(Color3.fromRGB(180,230,255))
elseif t=="Lightning"then pe.Texture="rbxasset://textures/particles/explosion01_implosion_main.dds"pe.Color=ColorSequence.new(Color3.fromRGB(180,200,255))
elseif t=="Slash"then pe.Texture="rbxasset://textures/particles/sparkles_main.dds"pe.Color=ColorSequence.new(Color3.fromRGB(255,255,255))pe.SpreadAngle=Vector2.new(0,0)
elseif t=="Smoke"then pe.Texture="rbxasset://textures/particles/smoke_main.dds"pe.Color=ColorSequence.new(Color3.fromRGB(180,180,180))pe.Speed=NumberRange.new(1,3)pe.Lifetime=NumberRange.new(.8,1.5)pe.Size=NumberSequence.new(1)end
pe:Emit(30)end)
task.delay(1.5,function()if p then p:Destroy()end end)
end

local function snd(id,vol)pcall(function()local s=Instance.new("Sound")s.SoundId="rbxassetid://"..tostring(id)s.Volume=vol or .5 s.Parent=workspace s:Play()task.delay(2,function()if s then s:Destroy()end end)end)end

-- hit hook
local hitC={}
local function hookHit()for _,p in ipairs(P:GetPlayers())do if p~=LP then local c=p.Character if c then local h=c:FindFirstChildOfClass("Humanoid")if h and not hitC[h]then local last=h.Health hitC[h]=h.HealthChanged:Connect(function(nh)if nh<last then local hr=c:FindFirstChild("HumanoidRootPart")if hr then if F.hm then pcall(showHM)end if F.he then pcall(hitFx,hr.Position)end if F.hs then pcall(snd,F.hs_id,.5)end if nh<=0 then if F.ke then pcall(hitFx,hr.Position)end if F.ks then pcall(snd,F.ks_id,.7)end end end end last=nh end)end end end end end end
P.PlayerRemoving:Connect(function(p)local c=p.Character if c then local h=c:FindFirstChildOfClass("Humanoid")if h and hitC[h]then pcall(function()hitC[h]:Disconnect()end)hitC[h]=nil end end end)
task.spawn(function()while true do task.wait(1)hookHit()end end)

-- chams
local chC={}
local function appChams()for _,p in ipairs(P:GetPlayers())do if p~=LP then local c=p.Character if c then local h=chC[p]if not h or h.Parent~=c then if h then h:Destroy()end h=Instance.new("Highlight")h.Name="PhantomChams"h.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop h.FillTransparency=F.ch_f h.Adornee=c h.Parent=c chC[p]=h end
local vv=true pcall(function()local hr=c:FindFirstChild("HumanoidRootPart")if hr then local rp=RaycastParams.new()rp.FilterDescendantsInstances={LP.Character,C}local r=workspace:Raycast(C.CFrame.Position,hr.Position-C.CFrame.Position,rp)vv=r==nil or r.Instance:IsDescendantOf(c)end end)
if F.ch_v and F.ch_i then h.FillColor=vv and F.ch_vc or F.ch_ic else h.FillColor=F.ch_vc end
h.OutlineColor=h.FillColor h.OutlineTransparency=F.ch_out and .3 or 1
if F.ch_rb then h.FillColor=Color3.fromHSV(rainbowHue,1,1)h.OutlineColor=h.FillColor end end end end end
local function clrChams()for p,h in pairs(chC)do pcall(function()h:Destroy()end)chC[p]=nil end end

-- main loop
local lastAuto=0
R.RenderStepped:Connect(function(dt)
-- FOV circle
if F.fov_c then fovC.Visible=true fovC.Size=UDim2.new(0,F.aim_fov*2,0,F.aim_fov*2)fovC.Position=UDim2.new(.5,-F.aim_fov,.5,-F.aim_fov)fovS.Color=F.fov_cc fovC.BackgroundTransparency=F.fov_cf and .9 or 1 fovC.BackgroundColor3=F.fov_cc else fovC.Visible=false end
-- aimbot
if F.rage_en then rageUp(dt)
elseif F.legit_en then lgUp(dt)
elseif F.ai_en then aiUp(dt)
elseif F.aim_en and (aimActive or F.aim_mode=="Always")then local t,pos=getClosest({fov=F.aim_fov,part=F.aim_part,md=F.aim_max,wc=F.aim_wall,tc=F.aim_team,st=F.aim_stag,pred=F.aim_pred,pri=F.aim_pri})
if t and pos then local tcf=CFrame.new(C.CFrame.Position,pos)
local ty=F.aim_type
if ty=="Normal"or ty=="Smooth"then C.CFrame=C.CFrame:Lerp(tcf,1-F.aim_smooth)
elseif ty=="Snap"or ty=="Rage"then C.CFrame=tcf
elseif ty=="Flick"then local cur=C.CFrame local d=(tcf.Position-cur.Position).Magnitude local sf=math.min(1,1/math.max(d*F.aim_flick,.01))C.CFrame=cur:Lerp(tcf,sf)
elseif ty=="Pixel"then local q=F.aim_px local cur=C.CFrame local dl=tcf.Position-cur.Position local qd=Vector3.new(math.floor(dl.X/q)*q,math.floor(dl.Y/q)*q,math.floor(dl.Z/q)*q)C.CFrame=CFrame.new(cur.Position,cur.Position+cur.LookVector*100+qd*.05)
elseif ty=="Predictive"then C.CFrame=C.CFrame:Lerp(tcf,1-F.aim_smooth*.5)
elseif ty=="Legit"then local r=Vector3.new((math.random()-.5)*F.aim_lr,(math.random()-.5)*F.aim_lr,(math.random()-.5)*F.aim_lr)local g=CFrame.new(C.CFrame.Position,tcf.Position+r)C.CFrame=C.CFrame:Lerp(g,1-F.aim_smooth)
elseif ty=="Magnet"then C.CFrame=C.CFrame:Lerp(tcf,F.aim_mag*.1)
else C.CFrame=C.CFrame:Lerp(tcf,1-F.aim_smooth)end
if F.aim_hum then C.CFrame=C.CFrame*CFrame.new(Vector3.new((math.random()-.5)*.5,(math.random()-.5)*.5,(math.random()-.5)*.5)*.01)end end end
-- autoshoot
if F.aim_as or F.aim_tb then local tb=getClosest({fov=F.aim_tb and F.aim_tbfov or F.aim_fov,part="Head",md=F.aim_max,wc=true,tc=F.aim_team,st=F.aim_stag,pred=true,pri="FOV"})
if tb then local itv=60/math.max(F.aim_asrpm,60)if tick()-lastAuto>=itv then lastAuto=tick()pcall(function()mouse1click()end)end end end
-- ESP
for plr,d in pairs(espD)do local c,h=gc(plr)local hr=c and c:FindFirstChild("HumanoidRootPart")local hd=c and c:FindFirstChild("Head")
if hr and hd and F.esp_en and F.esp_box then local tp,ot=ws(hd.Position+Vector3.new(0,.5,0))local bp,ob=ws(hr.Position-Vector3.new(0,3,0))local dist=(hr.Position-C.CFrame.Position).Magnitude
if ot and ob and dist<=F.esp_max then
local hh=math.abs(bp.Y-tp.Y)
local ww=hh*.55
if F.esp_bt=="Corner"then
d.box.Visible=true
d.box.BackgroundTransparency=1
d.st.Size=UDim.new(0,0)
d.box.Size=UDim2.new(0,ww,0,hh)
d.box.Position=UDim2.new(0,tp.X-ww/2,0,tp.Y)
if not d.corners then
d.corners={}
for _,pos in ipairs({{0,0,1,0,0,.25},{0,0,0,.25,.25,0},{1,0,1,.25,0,.25},{1,-6,1,0,.25,0},{0,1,1,0,0,-.25},{0,1,0,-.25,.25,0},{1,1,1,-.25,0,-.25},{1,1,-6,0,.25,0}})do
local cn=Instance.new("Frame",d.box)cn.BackgroundColor3=F.esp_bc cn.BorderSizePixel=0 table.insert(d.corners,{f=cn,p=pos})
end end
for _,cn in ipairs(d.corners)do
local p=cn.p
cn.f.Size=UDim2.new(p[5] or 0,p[6],p[7] or 0,p[8])
cn.f.Position=UDim2.new(p[1],p[2],p[3],p[4])
if F.esp_brb then cn.f.BackgroundColor3=Color3.fromHSV(rainbowHue,1,1)else cn.f.BackgroundColor3=F.esp_bc end
end
else
if d.corners then for _,cn in ipairs(d.corners)do cn.f:Destroy()end d.corners=nil end
d.box.Visible=true
d.box.Size=UDim2.new(0,ww,0,hh)
d.box.Position=UDim2.new(0,tp.X-ww/2,0,tp.Y)
d.box.BackgroundTransparency=not F.esp_bf and 1 or .6
d.st.Thickness=F.esp_bth
if F.esp_brb then d.st.Color=Color3.fromHSV(rainbowHue,1,1)else d.st.Color=tm(plr)and Color3.fromRGB(80,180,255)or F.esp_bc end
end
d.nm.Visible=F.esp_n
d.ds.Visible=F.esp_d
d.hp.Visible=F.esp_h
if F.esp_d then d.ds.Text=math.floor(dist).."m" end
if F.esp_h then local hm=c:FindFirstChildOfClass("Humanoid")if hm then local hv=hm.Health/hm.MaxHealth d.hp.Size=UDim2.new(0,3,hv,0)d.hp.Position=UDim2.new(-1,-4,1-hv,0)d.hp.BackgroundColor3=Color3.fromRGB(255*(1-hv),255*hv,0)end end
if F.esp_hd then local hp2,onh=ws(hd.Position)if onh then d.dot.Visible=true d.dot.Position=UDim2.new(0,hp2.X-3,0,hp2.Y-3)end else d.dot.Visible=false end
if F.esp_tr then local sp,on=ws(hr.Position)if on then d.tr.Visible=true d.tr.Size=UDim2.new(0,(sp-Vector2.new(C.ViewportSize.X/2,C.ViewportSize.Y)).Magnitude,0,1)d.tr.Position=UDim2.new(0,C.ViewportSize.X/2,0,C.ViewportSize.Y)d.tr.Rotation=math.deg(math.atan2(sp.Y-C.ViewportSize.Y,sp.X-C.ViewportSize.X/2))end else d.tr.Visible=false end
if F.esp_fade and dist<F.esp_faded then d.box.Visible=false d.dot.Visible=false end
else
d.box.Visible=false d.dot.Visible=false d.tr.Visible=false
if d.corners then for _,cn in ipairs(d.corners)do cn.f:Destroy()end d.corners=nil end
end
end
end
-- chams
if F.ch_en then appChams()else clrChams()end
-- position jitter / rot jitter
pjTick(dt)rjTick(dt)
-- desync
if F.ds_en then
local c=LP.Character
if c then local h=c:FindFirstChild("HumanoidRootPart")
if h then
if not FL.fb then
local mdl=Instance.new("Model")mdl.Name="PhantomDesync"mdl.Parent=workspace
local body=Instance.new("Part",mdl)body.Name="Body"body.Size=Vector3.new(2,5,1)body.Anchored=true body.CanCollide=false body.CanQuery=false body.CanTouch=false body.Material=Enum.Material.Neon body.Color=Color3.fromRGB(255,0,255)body.Transparency=.5
local head=Instance.new("Part",mdl)head.Name="Head"head.Shape=Enum.PartType.Ball head.Size=Vector3.new(1,1,1)head.Anchored=true head.CanCollide=false head.CanQuery=false head.CanTouch=false head.Material=Enum.Material.Neon head.Color=Color3.fromRGB(255,0,255)head.Transparency=.5
mdl.PrimaryPart=body
FL.fb=mdl
end
local mode=F.ds_mode local spd=F.ds_spd local amt=F.ds_amt
local tg=Vector3.new()
if mode=="Forward"then tg=Vector3.new(0,0,-amt)
elseif mode=="Backward"then tg=Vector3.new(0,0,amt)
elseif mode=="Left"then tg=Vector3.new(-amt,0,0)
elseif mode=="Right"then tg=Vector3.new(amt,0,0)
elseif mode=="Random"then tg=Vector3.new((math.random()-.5)*amt*2,0,(math.random()-.5)*amt*2)
elseif mode=="Spin"then local a=tick()*spd tg=Vector3.new(math.cos(a)*amt,0,math.sin(a)*amt)end
FL.do=FL.do:Lerp(tg,dt*spd)
if FL.do.Magnitude>F.ds_rd then FL.do=FL.do.Unit*F.ds_rd end
local b=FL.fb:FindFirstChild("Body")local hd2=FL.fb:FindFirstChild("Head")
if b then b.CFrame=h.CFrame+FL.do end
if hd2 then hd2.CFrame=(h.CFrame+FL.do)*CFrame.new(0,3,0)end
end
end
else if FL.fb then FL.fb:Destroy()FL.fb=nil end FL.do=Vector3.new()end
end)

-- fake lag
local flThread=nil
task.spawn(function()
while true do
task.wait(.01)
if F.fl_en and not FL.ls then
local active=F.fl_mode=="Always"or(F.fl_mode=="Toggle"and FL.fa)or(F.fl_mode=="Hold"and FL.fa)
if active and F.fl_no then
relNo()
local d=F.fl_amt
if F.fl_jit then d=d+(math.random()-.5)*F.fl_ja*2 end
task.wait(math.max(.01,d))
recNo()
end
end
end
end)

-- input
local aimActive=false
U.InputBegan:Connect(function(i,gp)
if gp then return end
if i.KeyCode==F.aim_key then
if F.aim_mode=="Toggle"then aimActive=not aimActive else aimActive=true end
end
if i.KeyCode==F.fl_key then
if F.fl_mode=="Toggle"then FL.fa=not FL.fa elseif F.fl_mode=="Hold"then FL.fa=true end
if F.fl_indic then nt("Fake Lag",FL.fa and"ON"or"OFF",1)end
end
if i.KeyCode==F.ls_key and F.ls_en then
if FL.ls then return end
FL.ls=true
task.spawn(function()relNo()local e=tick()+F.ls_dur while tick()<e do task.wait(.05)end recNo()FL.ls=false end)
end
end)
U.InputEnded:Connect(function(i)
if i.KeyCode==F.aim_key and F.aim_mode=="Hold"then aimActive=false end
if i.KeyCode==F.fl_key and F.fl_mode=="Hold"then FL.fa=false end
end)

-- silent aim hook
if getrawmetatable and setreadonly then
local mt=getrawmetatable(game)
local old=mt.__namecall
pcall(setreadonly,mt,false)
mt.__namecall=newcclosure(function(self,...)
local m=getnamecallmethod()
if F.sil_en and(m=="FindPartOnRayWithIgnoreList"or m=="Raycast")then
local a={...}
if math.random(1,100)<=F.sil_ch then
local t,pos=getClosest({fov=F.sil_360 and math.huge or F.sil_fov,part=F.sil_part,md=2000,wc=F.sil_wall,tc=F.sil_team,st=F.sil_stag,pred=F.sil_pred,pri="FOV",f360=F.sil_360})
if t and pos and m=="FindPartOnRayWithIgnoreList"then a[1]=Ray.new(C.CFrame.Position,(pos-C.CFrame.Position).Unit*1000)end
end
return old(self,table.unpack(a))
end
return old(self,...)
end)
pcall(setreadonly,mt,true)
end

-- misc loops
local origBright=L.Brightness local origAmb=L.Ambient local origFogEnd=L.FogEnd local origFogStart=L.FogStart
R.Heartbeat:Connect(function()
local c=LP.Character local h=c and c:FindFirstChildOfClass("Humanoid")
if h then
if F.spd_en then h.WalkSpeed=F.spd_v end
if F.jmp_en then h.JumpPower=F.jmp_v h.UseJumpPower=true end
end
if F.fb then L.Brightness=3 L.OutdoorAmbient=Color3.fromRGB(255,255,255)L.Ambient=Color3.fromRGB(255,255,255)else L.Brightness=origBright L.Ambient=origAmb L.OutdoorAmbient=Color3.fromRGB(128,128,128)end
if F.fog_en then L.FogEnd=100000 L.FogStart=100000 else L.FogEnd=origFogEnd end
pcall(function()L.GlobalShadows=not F.noshad end)
if F.amb then L.Ambient=F.amb_c L.OutdoorAmbient=F.amb_c end
if F.time_en then L.ClockTime=F.time_v end
if F.grav then workspace.Gravity=F.grav_v end
if F.hbe then for _,p in ipairs(P:GetPlayers())do if p~=LP then local ch=gc(p)if ch then for _,pt in ipairs(ch:GetChildren())do if pt:IsA("BasePart")then pt.Size=Vector3.new(F.hbs,F.hbs,F.hbs)pt.Transparency=.7 end end end end end end
if F.nograss then pcall(function()for _,o in ipairs(workspace:GetDescendants())do if o:IsA("BasePart")and(o.Material==Enum.Material.Grass or o.Name:lower():find("grass"))then o.Transparency=1 end end end)end
if F.nosky then pcall(function()local s=L:FindFirstChildOfClass("Sky")if s then s:Destroy()end end)end
if F.noclouds then pcall(function()for _,o in ipairs(L:GetChildren())do if o:IsA("Clouds")then o:Destroy()end end end)end
if F.nopart then pcall(function()for _,o in ipairs(workspace:GetDescendants())do if o:IsA("ParticleEmitter")then o.Enabled=false end end end)end
end)

-- visual sync
local lastChar=nil
task.spawn(function()
while true do
task.wait(.4)
local c=LP.Character
if c~=lastChar then
lastChar=c
if c then
task.wait(.5)
if F.china then pcall(buildChina)end
if F.halo then pcall(buildHalo)end
if F.hring then pcall(buildRing)end
if F.fcirc then pcall(buildFC)end
if F.aura then pcall(buildAura)end
if F.cape then pcall(buildCape)end
if F.wings then pcall(buildWings)end
if F.porbit then pcall(buildOrbit)end
if F.trail then pcall(buildTrail)end
end
end
if c then
if F.china and not c:FindFirstChild("PhantomChinaHat")then pcall(buildChina)end
if F.halo and not c:FindFirstChild("PhantomHalo")then pcall(buildHalo)end
if F.hring and not c:FindFirstChild("PhantomHeadRing")then pcall(buildRing)end
if F.fcirc and not c:FindFirstChild("PhantomFeetCircle")then pcall(buildFC)end
if F.cape and not c:FindFirstChild("PhantomCape")then pcall(buildCape)end
if F.wings and not c:FindFirstChild("PhantomWings")then pcall(buildWings)end
if F.aura then local h=c:FindFirstChild("HumanoidRootPart")if h and not h:FindFirstChild("PhantomAura")then pcall(buildAura)end end
if F.trail then local h=c:FindFirstChild("HumanoidRootPart")if h then local has=false for _,t in ipairs(h:GetChildren())do if t:IsA("Trail")then has=true break end end if not has then pcall(buildTrail)end end end
if F.porbit then local has=false for _,m in ipairs(workspace:GetChildren())do if m.Name=="PhantomPetOrbit"then has=true break end end if not has then pcall(buildOrbit)end end
if not F.china then cleanupN("PhantomChinaHat")end
if not F.halo then cleanupN("PhantomHalo")end
if not F.hring then cleanupN("PhantomHeadRing")end
if not F.fcirc then cleanupN("PhantomFeetCircle")end
if not F.cape then cleanupN("PhantomCape")end
if not F.wings then cleanupN("PhantomWings")end
if not F.aura then cleanupN("PhantomAura")end
if not F.trail then local h=c:FindFirstChild("HumanoidRootPart")if h then for _,t in ipairs(h:GetChildren())do if t:IsA("Trail")then t:Destroy()end end end end
if not F.porbit then for _,m in ipairs(workspace:GetChildren())do if m.Name=="PhantomPetOrbit"then m:Destroy()end end end
end
end
end)
LP.CharacterRemoving:Connect(function()for _,n in ipairs(VN)do cleanupN(n)end end)

-- infinite jump
U.JumpRequest:Connect(function()if F.ijmp then local c=LP.Character local h=c and c:FindFirstChildOfClass("Humanoid")if h then h:ChangeState(Enum.HumanoidStateType.Jumping)end end end)

-- no clip
R.Stepped:Connect(function()if F.noclip and LP.Character then for _,p in ipairs(LP.Character:GetDescendants())do if p:IsA("BasePart")then p.CanCollide=false end end end end)

-- auto parry
task.spawn(function()
local function hk(c)local h=c:WaitForChild("HumanoidRootPart",10)if not h then return end h.ChildAdded:Connect(function(cc)if F.aparry and cc:IsA("Sound")and cc.Name=="DeflectReady"then pcall(function()local VIM=game:GetService("VirtualInputManager")VIM:SendKeyEvent(true,Enum.KeyCode.F,false,game)task.wait(.03)VIM:SendKeyEvent(false,Enum.KeyCode.F,false,game)end)end end)end
if LP.Character then hk(LP.Character)end
LP.CharacterAdded:Connect(hk)
end)

-- anti afk
task.spawn(function()while true do task.wait(60)if F.aafk then pcall(function()game:GetService("VirtualUser"):CaptureController()game:GetService("VirtualUser"):ClickButton1(Vector2.new(0,0))end)end end end)

-- watermark
if F.wm then
task.spawn(function()
local wm=Instance.new("ScreenGui")wm.Name="PhantomWM"wm.ResetOnSpawn=false wm.IgnoreGuiInset=true wm.Parent=LP:WaitForChild("PlayerGui")
local f=Instance.new("Frame",wm)f.Size=UDim2.new(0,220,0,24)f.Position=UDim2.new(1,-230,0,10)f.BackgroundColor3=TH[F.theme].panel f.BackgroundTransparency=.2 f.BorderSizePixel=0
Instance.new("UICorner",f).CornerRadius=UDim.new(0,6)
local t=Instance.new("TextLabel",f)t.Size=UDim2.new(1,0,1,0)t.BackgroundTransparency=1 t.TextColor3=TH[F.theme].accent t.Font=Enum.Font.GothamBold t.TextSize=12
task.spawn(function()while wm.Parent do local fps=math.floor(1/R.RenderStepped:Wait())t.Text="Phantom | "..fps.." fps | "..math.floor(ping()*1000).." ping" end end)
end)
end

-- ═══════════════════════════════════════════
-- UI
-- ═══════════════════════════════════════════
local gui=Instance.new("ScreenGui")gui.Name="PhantomUI_"..math.random(1,999999)gui.ResetOnSpawn=false gui.IgnoreGuiInset=true gui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling gui.Parent=LP:WaitForChild("PlayerGui")

local function mkMoon(par,s)local fab=Instance.new("TextButton",par)fab.Size=UDim2.new(0,s,0,s)fab.Position=UDim2.new(0,20,.5,-s/2)fab.BackgroundTransparency=1 fab.Text="" fab.AutoButtonColor=false
local G,px=32,s/32
local function isM(gx,gy)local x,y=(gx-G/2)/(G/2),(gy-G/2)/(G/2)local i1=math.sqrt(x*x+y*y)<=.95 local x2,y2=x-.45,y+.15 local i2=math.sqrt(x2*x2+y2*y2)<=.85 return i1 and not i2 end
for gy=1,G do for gx=1,G do if isM(gx,gy)then local p=Instance.new("Frame",fab)p.Size=UDim2.new(0,math.ceil(px)+1,0,math.ceil(px)+1)p.Position=UDim2.new(0,(gx-1)*px,0,(gy-1)*px)p.BackgroundColor3=Color3.fromRGB(255,255,255)p.BorderSizePixel=0 p.ZIndex=2 end end end
for _,sp in ipairs({{4,3},{9,6},{24,4},{28,9},{6,26},{12,29},{26,27},{29,22},{3,14},{30,15},{15,2},{20,30}})do local s2=Instance.new("Frame",fab)s2.Size=UDim2.new(0,math.ceil(px),0,math.ceil(px))s2.Position=UDim2.new(0,(sp[1]-1)*px,0,(sp[2]-1)*px)s2.BackgroundColor3=Color3.fromRGB(255,255,255)s2.BorderSizePixel=0 s2.ZIndex=2 end
return fab end
local fab=mkMoon(gui,56)

local T={bg=Color3.fromRGB(14,14,20),sb=Color3.fromRGB(16,16,24),content=Color3.fromRGB(11,11,16),card=Color3.fromRGB(24,24,34),cardH=Color3.fromRGB(32,32,44),accent=Color3.fromRGB(110,80,255),accent2=Color3.fromRGB(140,110,255),toggleOff=Color3.fromRGB(50,50,65),text=Color3.fromRGB(240,240,250),textDim=Color3.fromRGB(150,150,175),textFaint=Color3.fromRGB(90,90,115),stroke=Color3.fromRGB(35,35,48),iconBg=Color3.fromRGB(30,30,42)}

local W,H=760,480
local win=Instance.new("Frame",gui)win.Size=UDim2.new(0,W,0,H)win.Position=UDim2.new(.5,-W/2,.5,-H/2)win.BackgroundColor3=T.bg win.BorderSizePixel=0 win.Visible=false
Instance.new("UICorner",win).CornerRadius=UDim.new(0,14)
local ws2=Instance.new("UIStroke",win)ws2.Color=T.stroke ws2.Thickness=1

local SW=170
local sb=Instance.new("Frame",win)sb.Size=UDim2.new(0,SW,1,0)sb.BackgroundColor3=T.sb sb.BorderSizePixel=0
Instance.new("UICorner",sb).CornerRadius=UDim.new(0,14)

local logoBox=Instance.new("Frame",sb)logoBox.Size=UDim2.new(1,-24,0,56)logoBox.Position=UDim2.new(0,12,0,12)logoBox.BackgroundTransparency=1
local lIcon=Instance.new("Frame",logoBox)lIcon.Size=UDim2.new(0,40,0,40)lIcon.Position=UDim2.new(0,0,.5,-20)lIcon.BackgroundColor3=T.accent lIcon.BorderSizePixel=0
Instance.new("UICorner",lIcon).CornerRadius=UDim.new(0,12)
local lGrad=Instance.new("UIGradient",lIcon)lGrad.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,T.accent2),ColorSequenceKeypoint.new(1,T.accent)}lGrad.Rotation=90
local lTxt=Instance.new("TextLabel",lIcon)lTxt.Size=UDim2.new(1,0,1,0)lTxt.BackgroundTransparency=1 lTxt.Text="◆"lTxt.TextColor3=Color3.fromRGB(255,255,255)lTxt.Font=Enum.Font.GothamBold lTxt.TextSize=22
local lT=Instance.new("TextLabel",logoBox)lT.Size=UDim2.new(1,-50,0,22)lT.Position=UDim2.new(0,50,0,2)lT.BackgroundTransparency=1 lT.Text="Phantom"lT.TextColor3=T.text lT.Font=Enum.Font.GothamBold lT.TextSize=18 lT.TextXAlignment=Enum.TextXAlignment.Left
local lS=Instance.new("TextLabel",logoBox)lS.Size=UDim2.new(1,-50,0,14)lS.Position=UDim2.new(0,50,0,24)lS.BackgroundTransparency=1 lS.Text="1 на HaLal pozdnyak"lS.TextColor3=T.textDim lS.Font=Enum.Font.Gotham lS.TextSize=10 lS.TextXAlignment=Enum.TextXAlignment.Left

local tabsH=Instance.new("ScrollingFrame",sb)tabsH.Size=UDim2.new(1,-16,1,-90)tabsH.Position=UDim2.new(0,8,0,78)tabsH.BackgroundTransparency=1 tabsH.BorderSizePixel=0 tabsH.ScrollBarThickness=0 tabsH.CanvasSize=UDim2.new(0,0,0,0)tabsH.AutomaticCanvasSize=Enum.AutomaticSize.Y
local tLay=Instance.new("UIListLayout",tabsH)tLay.SortOrder=Enum.SortOrder.LayoutOrder tLay.Padding=UDim.new(0,4)

local TAB_ICONS={Home="⌂",Combat="⚔",Rage="☠",Legit="✓",AI="◉",Silent="◐",Visual="◈",ESP="👁",Chams="◆",AntiAim="✦",Fly="✈",Speed="≫",Misc="⚙",World="☀",FPS="▲",Config="≡"}
local TAB_ORDER={"Home","Combat","Rage","Legit","AI","Silent","Visual","ESP","Chams","AntiAim","Fly","Speed","Misc","World","FPS","Config"}
local TABS={}local curTab="Home"local buildTab

local function mkTab(n,o)
local b=Instance.new("TextButton",tabsH)b.Name=n b.Size=UDim2.new(1,0,0,40)b.BackgroundColor3=T.sb b.BackgroundTransparency=1 b.Text=""b.AutoButtonColor=false b.LayoutOrder=o
Instance.new("UICorner",b).CornerRadius=UDim.new(0,10)
local g=Instance.new("UIGradient",b)g.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,T.accent),ColorSequenceKeypoint.new(1,T.accent2)}g.Rotation=90 g.Enabled=false
local s=Instance.new("UIStroke",b)s.Color=T.accent2 s.Thickness=1.5 s.Transparency=1
local ic=Instance.new("TextLabel",b)ic.Size=UDim2.new(0,30,1,0)ic.Position=UDim2.new(0,12,0,0)ic.BackgroundTransparency=1 ic.Text=TAB_ICONS[n]or"•"ic.TextColor3=T.textDim ic.Font=Enum.Font.GothamBold ic.TextSize=16
local lb=Instance.new("TextLabel",b)lb.Size=UDim2.new(1,-52,1,0)lb.Position=UDim2.new(0,46,0,0)lb.BackgroundTransparency=1 lb.Text=n lb.TextColor3=T.textDim lb.Font=Enum.Font.GothamMedium lb.TextSize=14 lb.TextXAlignment=Enum.TextXAlignment.Left
b.MouseEnter:Connect(function()if curTab~=n then b.BackgroundTransparency=.5 end end)
b.MouseLeave:Connect(function()if curTab~=n then b.BackgroundTransparency=1 end end)
b.MouseButton1Click:Connect(function()if curTab==n then return end for _,t in pairs(TABS)do t.b.BackgroundTransparency=1 t.g.Enabled=false t.s.Transparency=1 t.i.TextColor3=T.textDim t.l.TextColor3=T.textDim t.l.Font=Enum.Font.GothamMedium end b.BackgroundTransparency=0 g.Enabled=true s.Transparency=.3 ic.TextColor3=Color3.fromRGB(255,255,255)lb.TextColor3=Color3.fromRGB(255,255,255)lb.Font=Enum.Font.GothamBold curTab=n if buildTab then buildTab(n)end end)
TABS[n]={b=b,i=ic,l=lb,g=g,s=s}
end
for i,n in ipairs(TAB_ORDER)do mkTab(n,i)end
local ft2=TABS["Home"]ft2.b.BackgroundTransparency=0 ft2.g.Enabled=true ft2.s.Transparency=.3 ft2.i.TextColor3=Color3.fromRGB(255,255,255)ft2.l.TextColor3=Color3.fromRGB(255,255,255)ft2.l.Font=Enum.Font.GothamBold

local content=Instance.new("Frame",win)content.Size=UDim2.new(1,-SW,1,0)content.Position=UDim2.new(0,SW,0,0)content.BackgroundColor3=T.content content.BorderSizePixel=0
Instance.new("UICorner",content).CornerRadius=UDim.new(0,14)

local header=Instance.new("Frame",content)header.Size=UDim2.new(1,0,0,70)header.BackgroundTransparency=1
local hT=Instance.new("TextLabel",header)hT.Size=UDim2.new(1,-100,0,26)hT.Position=UDim2.new(0,22,0,16)hT.BackgroundTransparency=1 hT.Text="Welcome back!"hT.TextColor3=T.text hT.Font=Enum.Font.GothamBold hT.TextSize=20 hT.TextXAlignment=Enum.TextXAlignment.Left
local hS=Instance.new("TextLabel",header)hS.Size=UDim2.new(1,-100,0,16)hS.Position=UDim2.new(0,22,0,42)hS.BackgroundTransparency=1 hS.Text="Phantom | 1 на HaLal pozdnyak"hS.TextColor3=T.textDim hS.Font=Enum.Font.Gotham hS.TextSize=12 hS.TextXAlignment=Enum.TextXAlignment.Left
local closeB=Instance.new("TextButton",header)closeB.Size=UDim2.new(0,32,0,32)closeB.Position=UDim2.new(1,-46,0,20)closeB.BackgroundTransparency=1 closeB.Text="✕"closeB.TextColor3=T.textDim closeB.Font=Enum.Font.GothamBold closeB.TextSize=16 closeB.AutoButtonColor=false
closeB.MouseEnter:Connect(function()closeB.TextColor3=Color3.fromRGB(255,80,80)end)
closeB.MouseLeave:Connect(function()closeB.TextColor3=T.textDim end)
closeB.MouseButton1Click:Connect(function()win.Visible=false end)

local body=Instance.new("ScrollingFrame",content)body.Size=UDim2.new(1,-32,1,-86)body.Position=UDim2.new(0,16,0,78)body.BackgroundTransparency=1 body.BorderSizePixel=0 body.ScrollBarThickness=3 body.ScrollBarImageColor3=T.accent body.CanvasSize=UDim2.new(0,0,0,0)body.AutomaticCanvasSize=Enum.AutomaticSize.Y
local bLay=Instance.new("UIListLayout",body)bLay.SortOrder=Enum.SortOrder.LayoutOrder bLay.Padding=UDim.new(0,6)

local OC=0
local function NO()OC=OC+1 return OC end
local function clearB()for _,c in ipairs(body:GetChildren())do if not c:IsA("UIListLayout")then c:Destroy()end end OC=0 end

local function sec(t)local f=Instance.new("Frame",body)f.Size=UDim2.new(1,-6,0,24)f.BackgroundTransparency=1 f.LayoutOrder=NO()
local l=Instance.new("TextLabel",f)l.Size=UDim2.new(1,0,1,0)l.BackgroundTransparency=1 l.Text="  "..t l.TextColor3=T.textFaint l.Font=Enum.Font.GothamBold l.TextSize=11 l.TextXAlignment=Enum.TextXAlignment.Left end

local function tog(label,key,icon)
local c=Instance.new("Frame",body)c.Size=UDim2.new(1,-6,0,52)c.BackgroundColor3=T.card c.BorderSizePixel=0 c.LayoutOrder=NO()
Instance.new("UICorner",c).CornerRadius=UDim.new(0,10)
local cs=Instance.new("UIStroke",c)cs.Color=T.stroke cs.Thickness=1
local ib=Instance.new("Frame",c)ib.Size=UDim2.new(0,34,0,34)ib.Position=UDim2.new(0,12,.5,-17)ib.BackgroundColor3=T.iconBg ib.BorderSizePixel=0
Instance.new("UICorner",ib).CornerRadius=UDim.new(0,8)
local it=Instance.new("TextLabel",ib)it.Size=UDim2.new(1,0,1,0)it.BackgroundTransparency=1 it.Text=icon or"•"it.TextColor3=T.text it.Font=Enum.Font.GothamBold it.TextSize=16
local lb=Instance.new("TextLabel",c)lb.Size=UDim2.new(1,-130,1,0)lb.Position=UDim2.new(0,56,0,0)lb.BackgroundTransparency=1 lb.Text=label lb.TextColor3=T.text lb.Font=Enum.Font.GothamMedium lb.TextSize=14 lb.TextXAlignment=Enum.TextXAlignment.Left
local sw=Instance.new("Frame",c)sw.Size=UDim2.new(0,46,0,26)sw.Position=UDim2.new(1,-60,.5,-13)sw.BackgroundColor3=F[key]and T.accent or T.toggleOff sw.BorderSizePixel=0
Instance.new("UICorner",sw).CornerRadius=UDim.new(1,0)
local kn=Instance.new("Frame",sw)kn.Size=UDim2.new(0,20,0,20)kn.Position=F[key]and UDim2.new(1,-22,.5,-10)or UDim2.new(0,2,.5,-10)kn.BackgroundColor3=Color3.fromRGB(255,255,255)kn.BorderSizePixel=0
Instance.new("UICorner",kn).CornerRadius=UDim.new(1,0)
local b=Instance.new("TextButton",c)b.Size=UDim2.new(1,0,1,0)b.BackgroundTransparency=1 b.Text=""
b.MouseButton1Click:Connect(function()F[key]=not F[key]local tg=F[key]and T.accent or T.toggleOff local kt=F[key]and UDim2.new(1,-22,.5,-10)or UDim2.new(0,2,.5,-10)T:Create(sw,TweenInfo.new(.15),{BackgroundColor3=tg}):Play()T:Create(kn,TweenInfo.new(.15),{Position=kt}):Play()end)
b.MouseEnter:Connect(function()c.BackgroundColor3=T.cardH end)
b.MouseLeave:Connect(function()c.BackgroundColor3=T.card end)
end

local function sld(label,key,mn,mx,st,fmt)
local c=Instance.new("Frame",body)c.Size=UDim2.new(1,-6,0,70)c.BackgroundColor3=T.card c.BorderSizePixel=0 c.LayoutOrder=NO()
Instance.new("UICorner",c).CornerRadius=UDim.new(0,10)
local cs=Instance.new("UIStroke",c)cs.Color=T.stroke cs.Thickness=1
local lb=Instance.new("TextLabel",c)lb.Size=UDim2.new(1,-140,0,20)lb.Position=UDim2.new(0,16,0,8)lb.BackgroundTransparency=1 lb.Text=label lb.TextColor3=T.text lb.Font=Enum.Font.GothamMedium lb.TextSize=13 lb.TextXAlignment=Enum.TextXAlignment.Left
local v=Instance.new("TextLabel",c)v.Size=UDim2.new(0,120,0,20)v.Position=UDim2.new(1,-136,0,8)v.BackgroundTransparency=1 v.Text=fmt and fmt(F[key])or tostring(F[key])v.TextColor3=T.accent2 v.Font=Enum.Font.GothamBold v.TextSize=13 v.TextXAlignment=Enum.TextXAlignment.Right
local tr=Instance.new("Frame",c)tr.Size=UDim2.new(1,-32,0,6)tr.Position=UDim2.new(0,16,0,44)tr.BackgroundColor3=T.toggleOff tr.BorderSizePixel=0
Instance.new("UICorner",tr).CornerRadius=UDim.new(1,0)
local ir=(F[key]-mn)/(mx-mn)
local fl=Instance.new("Frame",tr)fl.Size=UDim2.new(ir,0,1,0)fl.BackgroundColor3=T.accent fl.BorderSizePixel=0
Instance.new("UICorner",fl).CornerRadius=UDim.new(1,0)
local fg=Instance.new("UIGradient",fl)fg.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,T.accent),ColorSequenceKeypoint.new(1,T.accent2)}
local kn=Instance.new("Frame",tr)kn.Size=UDim2.new(0,16,0,16)kn.Position=UDim2.new(ir,-8,.5,-8)kn.BackgroundColor3=Color3.fromRGB(255,255,255)kn.BorderSizePixel=0
Instance.new("UICorner",kn).CornerRadius=UDim.new(1,0)
local dg=false
local function upd(ip)local ta=tr.AbsolutePosition.X local tw=tr.AbsoluteSize.X local r=math.clamp((ip.X-ta)/tw,0,1)local val=mn+(mx-mn)*r val=math.floor(val/st+.5)*st F[key]=val v.Text=fmt and fmt(val)or tostring(val)fl.Size=UDim2.new(r,0,1,0)kn.Position=UDim2.new(r,-8,.5,-8)end
tr.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then dg=true upd(i.Position)end end)
tr.InputChanged:Connect(function(i)if dg and(i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseMovement)then upd(i.Position)end end)
tr.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then dg=false end end)
end

local function ddn(label,key,opts)
local c=Instance.new("Frame",body)c.Size=UDim2.new(1,-6,0,52)c.BackgroundColor3=T.card c.BorderSizePixel=0 c.LayoutOrder=NO()
Instance.new("UICorner",c).CornerRadius=UDim.new(0,10)
local cs=Instance.new("UIStroke",c)cs.Color=T.stroke cs.Thickness=1
local lb=Instance.new("TextLabel",c)lb.Size=UDim2.new(.5,0,1,0)lb.Position=UDim2.new(0,16,0,0)lb.BackgroundTransparency=1 lb.Text=label lb.TextColor3=T.text lb.Font=Enum.Font.GothamMedium lb.TextSize=13 lb.TextXAlignment=Enum.TextXAlignment.Left
local b=Instance.new("TextButton",c)b.Size=UDim2.new(.42,0,0,32)b.Position=UDim2.new(.55,0,.5,-16)b.BackgroundColor3=T.iconBg b.Text=tostring(F[key])b.TextColor3=T.accent2 b.Font=Enum.Font.GothamBold b.TextSize=12 b.AutoButtonColor=false
Instance.new("UICorner",b).CornerRadius=UDim.new(0,8)
local bs=Instance.new("UIStroke",b)bs.Color=T.stroke bs.Thickness=1
local ix=1 for i,v in ipairs(opts)do if v==F[key]then ix=i end end
b.MouseButton1Click:Connect(function()ix=ix%#opts+1 F[key]=opts[ix]b.Text=tostring(opts[ix])end)
end

local function kbd(label,key)
local c=Instance.new("Frame",body)c.Size=UDim2.new(1,-6,0,52)c.BackgroundColor3=T.card c.BorderSizePixel=0 c.LayoutOrder=NO()
Instance.new("UICorner",c).CornerRadius=UDim.new(0,10)
local cs=Instance.new("UIStroke",c)cs.Color=T.stroke cs.Thickness=1
local lb=Instance.new("TextLabel",c)lb.Size=UDim2.new(.5,0,1,0)lb.Position=UDim2.new(0,16,0,0)lb.BackgroundTransparency=1 lb.Text=label lb.TextColor3=T.text lb.Font=Enum.Font.GothamMedium lb.TextSize=13 lb.TextXAlignment=Enum.TextXAlignment.Left
local b=Instance.new("TextButton",c)b.Size=UDim2.new(.42,0,0,32)b.Position=UDim2.new(.55,0,.5,-16)b.BackgroundColor3=T.iconBg b.Text=tostring(F[key]):gsub("Enum.KeyCode.","")b.TextColor3=T.accent2 b.Font=Enum.Font.GothamBold b.TextSize=12 b.AutoButtonColor=false
Instance.new("UICorner",b).CornerRadius=UDim.new(0,8)
local bs=Instance.new("UIStroke",b)bs.Color=T.stroke bs.Thickness=1
local wt=false
b.MouseButton1Click:Connect(function()wt=true b.Text="..."end)
U.InputBegan:Connect(function(i,gp)if wt and not gp then F[key]=i.KeyCode b.Text=tostring(i.KeyCode):gsub("Enum.KeyCode.","")wt=false end end)
end

local HITP={"Head","HumanoidRootPart","UpperTorso","LowerTorso","Nearest"}
local AMMODES={"Hold","Toggle","Always"}
local AMT={"Normal","Snap","Smooth","Flick","Pixel","Bone","Predictive","Legit","Rage","Magnet"}
local AMP={"FOV","Distance","Health","Threat","Angle"}
local AIM={"Linear","Adaptive","Snap","Smooth","Human"}
local SILMODES={"Raycast","Mouse","Both"}
local SILT={"Classic","Perfect","PSilent","FOV","360","Hitbox","Bone","Projectile","Hitscan","Legit","Rage","Backtrack","Magnetic"}
local ESPBT={"None","2D","3D","Corner","Filled"}
local FLYT={"Normal","Fast","Slow","Legit","Silent","Hover","NoGravity","Vertical","Horizontal"}
local SPDT={"Normal","Fast","Super","Strafe","Crouch","Diagonal","Backward","Sideways"}
local AAT={"Jitter","Spin","Fake Angles","Fake Lag"}
local CHINAT={"Classic","Rainbow","Neon","Spin","Gradient","Outline","Transparent","Fire","Ice","Galaxy"}
local HALOT={"Classic","Spin","Glow","Rainbow","Double"}
local AURAT={"Particle","Fire","Lightning","Smoke","Snow","Sparkles","Orbit","Cosmic","Galaxy","Ring"}
local CAPET={"Classic","Rainbow","Neon","Gradient","Animated"}
local WINGST={"Angel","Demon","Neon","Fire","Ice","Galaxy"}
local BODYT={"None","Rainbow","Neon","Ghost","ForceField","Glass","Material"}
local HMT={"X","Cross","Dot","Circle","Star"}
local HET={"Explosion","Spark","Smoke","Lightning","Fire","Ice","Slash"}
local FLYMODES={"Hold","Toggle","Always"}
local THEMES={"Dark","Midnight","Neon","Blood","Mono"}

buildTab=function(name)
clearB()
if name=="Home"then
sec("PHANTOM")
local w=Instance.new("Frame",body)w.Size=UDim2.new(1,-6,0,140)w.BackgroundColor3=T.card w.BorderSizePixel=0 w.LayoutOrder=NO()
Instance.new("UICorner",w).CornerRadius=UDim.new(0,10)
local ws=Instance.new("UIStroke",w)ws.Color=T.stroke ws.Thickness=1
local ic=Instance.new("TextLabel",w)ic.Size=UDim2.new(1,0,0,50)ic.Position=UDim2.new(0,0,0,20)ic.BackgroundTransparency=1 ic.Text="◆"ic.TextColor3=T.accent ic.Font=Enum.Font.GothamBold ic.TextSize=40
local tt=Instance.new("TextLabel",w)tt.Size=UDim2.new(1,0,0,24)tt.Position=UDim2.new(0,0,0,72)tt.BackgroundTransparency=1 tt.Text="PHANTOM"tt.TextColor3=T.text tt.Font=Enum.Font.GothamBold tt.TextSize=22
local st=Instance.new("TextLabel",w)st.Size=UDim2.new(1,0,0,16)st.Position=UDim2.new(0,0,0,98)st.BackgroundTransparency=1 st.Text="1 на HaLal pozdnyak"st.TextColor3=T.textDim st.Font=Enum.Font.Gotham st.TextSize=12
sec("QUICK TOGGLES")
tog("Aimbot","aim_en","⚔")
tog("Silent Aim","sil_en","◐")
tog("ESP","esp_en","👁")
tog("Chams","ch_en","◆")
tog("China Hat","china","🎩")
tog("Speed","spd_en","≫")
tog("Fly","fly_en","✈")
tog("Full Bright","fb","☀")
tog("Fake Lag","fl_en","⏱")
tog("Anti-AFK","aafk","🤖")

elseif name=="Combat"then
sec("AIMBOT")
tog("Enabled","aim_en","⚔")
kbd("Key","aim_key")
ddn("Mode","aim_mode",AMMODES)
ddn("Aim Type","aim_type",AMT)
sld("FOV","aim_fov",20,500,5,function(v)return v.."px"end)
sld("Smooth","aim_smooth",0,1,.05,function(v)return string.format("%.2f",v)end)
sld("Flick Speed","aim_flick",.01,.3,.01,function(v)return string.format("%.2f",v)end)
sld("Legit Rnd","aim_lr",0,1,.05,function(v)return string.format("%.2f",v)end)
sld("Pixel Quant","aim_px",1,20,1,function(v)return v.."px"end)
sld("Magnet Strength","aim_mag",0,1,.05,function(v)return string.format("%.2f",v)end)
ddn("Hit Part","aim_part",HITP)
sld("Max Distance","aim_max",100,3000,50,function(v)return v.."m"end)
ddn("Priority","aim_pri",AMP)
sec("CHECKS")
tog("WallCheck","aim_wall","🧱")
tog("TeamCheck","aim_team","👥")
tog("Stagger Check","aim_stag","💫")
tog("Bone Priority","aim_bone","🦴")
tog("Prediction","aim_pred","🎯")
sld("Pred X","aim_predx",0,.5,.01,function(v)return string.format("%.2f",v)end)
tog("Humanize","aim_hum","👤")
tog("Nearest Part","aim_hpn","📍")
tog("Visible Only","aim_vis","👁")
sec("AUTO SHOOT")
tog("Auto Shoot","aim_as","🔥")
sld("RPM","aim_asrpm",60,1200,30,function(v)return v end)
tog("Trigger Bot","aim_tb","⚡")
sld("Trigger FOV","aim_tbfov",1,60,1,function(v)return v.."px"end)
sec("BACKTRACK")
tog("Enabled","bt_en","⏪")
sld("Time","bt_t",0,.5,.01,function(v)return string.format("%.2fs",v)end)
sld("Max MS","bt_ms",50,500,10,function(v)return v.."ms"end)
tog("Show BT ESP","bt_esp","👁")

elseif name=="Rage"then
sec("RAGE AIMBOT")
tog("Enabled","rage_en","☠")
tog("Instant Snap","rage_snap","⚡")
tog("Multi Target","rage_multi","🎯")
sld("Multi Count","rage_mc",1,10,1,function(v)return v end)
tog("Ignore Walls","rage_iw","🧱")
tog("Ignore Vis","rage_iv","👁")
tog("Headshot Only","rage_hs","💀")
tog("Auto Fire","rage_af","🔥")
tog("Instant Trigger","rage_it","⚡")
tog("Auto Switch","rage_sw","🔄")
sld("Switch Delay","rage_swd",0,.5,.01,function(v)return string.format("%.2fs",v)end)
tog("Backtrack","rage_bt","⏪")
sld("BT Time","rage_btt",0,.5,.01,function(v)return string.format("%.2fs",v)end)
tog("Ignore Team","rage_it2","👥")
tog("Ignore Stagger","rage_is","💫")
tog("Unlimited FOV","rage_uf","♾")
tog("No Smooth","rage_ns","➡")
tog("Prediction","rage_pred","🎯")
sld("Pred Mult","rage_pm",0,1,.05,function(v)return string.format("%.2f",v)end)
tog("One Tick","rage_1t","⚡")
tog("Spin Bot","rage_spin","🌀")
sld("Spin Speed","rage_ss",1,30,1,function(v)return v end)

elseif name=="Legit"then
sec("LEGIT AIMBOT")
tog("Enabled","legit_en","✓")
sld("Smooth","legit_sm",0,1,.05,function(v)return string.format("%.2f",v)end)
sld("FOV","legit_fov",20,200,5,function(v)return v.."px"end)
sld("Max Dist","legit_md",50,1000,50,function(v)return v.."m"end)
tog("Visible Only","legit_vo","👁")
tog("No Wall","legit_nw","🧱")
tog("No Stagger","legit_ns","💫")
tog("Respect Team","legit_rt","👥")
tog("Front Only","legit_fo","➡")
tog("Human Error","legit_he",0,3,.1,function(v)return string.format("%.1f",v)end)
tog("Jitter","legit_jit","〰")
sld("Jitter Amp","legit_ja",0,5,.1,function(v)return string.format("%.1f",v)end)
tog("Delayed Snap","legit_ds","⏱")
sld("Snap After","legit_sa",.1,3,.1,function(v)return string.format("%.1fs",v)end)
tog("Smooth Release","legit_sr","↩")
sld("Release Time","legit_rt2",.1,1,.1,function(v)return string.format("%.1fs",v)end)
tog("Target Lock","legit_tl","🎯")
sld("Lock Time","legit_lt",.1,2,.1,function(v)return string.format("%.1fs",v)end)
tog("Random Hit Part","legit_rhp","🎲")

elseif name=="AI"then
sec("AI AIMBOT")
tog("Enabled","ai_en","◉")
ddn("Mode","ai_mode",AIM)
sld("Aggression","ai_aggr",0,1,.05,function(v)return string.format("%.2f",v)end)
sld("Reaction","ai_react",0,500,10,function(v)return v.."ms"end)
sld("Lead Mult","ai_lead",0,3,.1,function(v)return string.format("%.1f",v)end)
sld("Sensitivity","ai_sens",.1,3,.1,function(v)return string.format("%.1f",v)end)
tog("Hitbox Priority","ai_hbp","📍")
tog("Target Switch","ai_ts","🔄")
tog("Adaptive","ai_adap","🎯")
tog("Dodge Predict","ai_dodge","⚡")
tog("Threat Model","ai_thr","⚠")
tog("Recoil Control","ai_rec","🔫")
sec("HUMANIZATION")
tog("Jitter","ai_jit","〰")
sld("Jitter Amp","ai_jita",0,10,.5,function(v)return string.format("%.1f",v)end)
tog("Snap Mode","ai_snap","⚡")
sld("Snap Time","ai_snapt",.1,3,.1,function(v)return string.format("%.1fs",v)end)

elseif name=="Silent"then
sec("SILENT AIM")
tog("Enabled","sil_en","◐")
ddn("Type","sil_type",SILT)
ddn("Mode","sil_mode",SILMODES)
sld("FOV","sil_fov",20,600,5,function(v)return v.."px"end)
sld("Chance","sil_ch",0,100,5,function(v)return v.."%"end)
sld("Magnetic Speed","sil_mag",.05,1,.05,function(v)return string.format("%.2f",v)end)
ddn("Hit Part","sil_part",HITP)
tog("360°","sil_360","♾")
tog("WallCheck","sil_wall","🧱")
tog("TeamCheck","sil_team","👥")
tog("Stagger","sil_stag","💫")
tog("Prediction","sil_pred","🎯")
tog("Visible Only","sil_vo","👁")
tog("Hit Chance","sil_hc","🎲")
tog("PSIL Mode","sil_psil","👻")

elseif name=="Visual"then
sec("CHINA HAT")
tog("China Hat","china","🎩")
ddn("Type","china_t",CHINAT)
sld("Size","china_s",1,6,.1,function(v)return string.format("%.1f",v)end)
sld("Height","china_h",.5,3,.1,function(v)return string.format("%.1f",v)end)
sec("HALO")
tog("Halo","halo","😇")
ddn("Type","halo_t",HALOT)
sld("Size","halo_s",1,5,.1,function(v)return string.format("%.1f",v)end)
sld("Height","halo_h",1,4,.1,function(v)return string.format("%.1f",v)end)
sec("HEAD/FEET")
tog("Head Ring","hring","💫")
sld("Ring Size","hring_s",1,6,.1,function(v)return string.format("%.1f",v)end)
tog("Feet Circle","fcirc","⭕")
sld("Circle Size","fcirc_s",2,10,.5,function(v)return string.format("%.1f",v)end)
sec("AURA")
tog("Aura","aura","✨")
ddn("Type","aura_t",AURAT)
sec("CAPE")
tog("Cape","cape","🧣")
ddn("Type","cape_t",CAPET)
sec("WINGS")
tog("Wings","wings","🪽")
ddn("Type","wings_t",WINGST)
sec("PET ORBIT")
tog("Orbit","porbit","🪐")
sld("Count","porbit_n",1,10,1,function(v)return v end)
sld("Radius","porbit_r",2,10,.5,function(v)return string.format("%.1f",v)end)
sld("Speed","porbit_s",.5,5,.1,function(v)return string.format("%.1f",v)end)
sec("TRAIL")
tog("Trail","trail","🌈")
sld("Lifetime","trail_lt",.1,3,.1,function(v)return string.format("%.1fs",v)end)
sec("BODY")
ddn("Body Effect","body_eff",BODYT)
ddn("Material","body_mat",{"Neon","ForceField","Glass","Plastic","SmoothPlastic","Metal"})
sld("Transparency","body_tr",0,1,.05,function(v)return string.format("%.2f",v)end)

elseif name=="ESP"then
sec("ESP BOX")
tog("ESP","esp_en","👁")
ddn("Box Type","esp_bt",ESPBT)
sld("Thickness","esp_bth",.5,5,.5,function(v)return string.format("%.1f",v)end)
tog("Filled","esp_bf","⬛")
tog("Rainbow","esp_brb","🌈")
tog("Fade","esp_fade","〰")
sld("Fade Dist","esp_faded",10,200,10,function(v)return v.."m"end)
tog("Dist Scale","esp_bds","📏")
sld("Max Dist","esp_max",100,3000,50,function(v)return v.."m"end)
sec("SKELETON")
tog("Skeleton","esp_sk","🦴")
sld("Thickness","esp_skt",.5,4,.5,function(v)return string.format("%.1f",v)end)
tog("Bone Dots","esp_bd","•")
tog("Joints","esp_j","◦")
tog("Hitboxes","esp_hb","⬜")
sec("INFO")
tog("Name","esp_n","📛")
tog("Distance","esp_d","📏")
tog("Health","esp_h","❤")
tog("Armor","esp_a","🛡")
tog("Weapon","esp_w","🔫")
tog("Ammo","esp_am","🔢")
tog("Team","esp_tm","👥")
tog("Rank","esp_r","🏆")
tog("Money","esp_m","💰")
sec("MARKERS")
tog("Tracer","esp_tr","➡")
tog("Snapline","esp_sl","↗")
tog("Head Dot","esp_hd","•")
tog("Head Circle","esp_hc2","⭕")
tog("Arrow","esp_ar","➤")
tog("Offscreen","esp_off","📐")
tog("Radar","esp_rd","📡")
sld("Radar Size","esp_rdz",60,300,10,function(v)return v.."px"end)
sld("Radar Range","esp_rdr",100,2000,50,function(v)return v.."m"end)

elseif name=="Chams"then
sec("CHAMS")
tog("Enabled","ch_en","◆")
tog("Visible","ch_v","👁")
tog("Invisible","ch_i","👻")
sld("Fill","ch_f",0,1,.05,function(v)return string.format("%.2f",v)end)
tog("Outline","ch_out","⬜")
tog("Rainbow","ch_rb","🌈")
tog("Team","ch_t","👥")
tog("Self","ch_s","🎭")

elseif name=="AntiAim"then
sec("ANTI-AIM")
tog("Enabled","aa_en","✦")
ddn("Type","aa_type",AAT)
sld("Jitter Amp","aa_ja",0,90,1,function(v)return v.."°"end)
sld("Spin Speed","aa_ss",1,30,1,function(v)return v end)
sec("FAKE ANGLES")
tog("Enabled","fa_en","🎭")
ddn("Mode","fa_mode",{"Static","Jitter","Spin"})
sld("Yaw","fa_yaw",0,360,1,function(v)return v.."°"end)
sld("Pitch","fa_pitch",0,180,1,function(v)return v.."°"end)
sld("Jitter","fa_jit",0,90,1,function(v)return v.."°"end)
sld("Spin Speed","fa_ss",1,30,1,function(v)return v end)
sec("FAKE LAG")
tog("Enabled","fl_en","⏱")
kbd("Key","fl_key")
ddn("Mode","fl_mode",{"Toggle","Hold","Always"})
sld("Amount","fl_amt",.01,.5,.01,function(v)return string.format("%.2fs",v)end)
tog("Jitter","fl_jit","〰")
sld("Jitter Amp","fl_ja",0,.2,.01,function(v)return string.format("%.2fs",v)end)
tog("Indicator","fl_indic","📢")
tog("NetOwnership","fl_no","🌐")
sec("DESYNC")
tog("Enabled","ds_en","🎭")
ddn("Mode","ds_mode",{"Forward","Backward","Left","Right","Random","Spin","Flip"})
sld("Amount","ds_amt",1,30,1,function(v)return v end)
sld("Speed","ds_spd",.5,10,.5,function(v)return string.format("%.1f",v)end)
sld("Reset Dist","ds_rd",5,100,5,function(v)return v end)
sec("JITTER")
tog("Position Jitter","pj_en","📍")
sld("Amp","pj_amp",.5,10,.5,function(v)return string.format("%.1f",v)end)
sld("Rate","pj_rate",.01,.5,.01,function(v)return string.format("%.2fs",v)end)
tog("Rotation Jitter","rj_en","🔄")
sld("Amp","rj_amp",1,90,1,function(v)return v.."°"end)
sld("Rate","rj_rate",.01,.5,.01,function(v)return string.format("%.2fs",v)end)
sec("LAG SWITCH")
tog("Enabled","ls_en","💥")
kbd("Key","ls_key")
sld("Duration","ls_dur",.1,3,.1,function(v)return string.format("%.1fs",v)end)

elseif name=="Fly"then
sec("FLY")
tog("Enabled","fly_en","✈")
kbd("Key","fly_key")
ddn("Mode","fly_mode",FLYMODES)
ddn("Type","fly_type",FLYT)
sld("Speed","fly_spd",10,500,10,function(v)return v end)
tog("Infinite Jump","ijmp","♾")
tog("No Clip","noclip","👻")

elseif name=="Speed"then
sec("SPEED")
tog("Enabled","spd_en","≫")
ddn("Type","spd_type",SPDT)
sld("Value","spd_v",16,500,1,function(v)return v end)
tog("Bunny Hop","bhop","🐰")
tog("Auto Bhop","abhop","🐇")
tog("Strafe","strafe","🏃")
tog("Infinite Sprint","isprint","♾")
tog("No Slow","noslow","⚡")
sec("JUMP")
tog("Jump Power","jmp_en","⬆")
sld("Value","jmp_v",50,500,5,function(v)return v end)

elseif name=="Misc"then
sec("CHARACTER")
tog("Full Bright","fb","☀")
tog("Hitbox Expand","hbe","🔲")
sld("Hitbox Size","hbs",1,30,1,function(v)return v end)
tog("Camlock","camlock","🎥")
tog("Auto Parry","aparry","🛡")
tog("Auto Block","ablock","🚫")
sec("ANTI")
tog("Anti AFK","aafk","🤖")
tog("Anti Fling","afling","🛡")
tog("Anti Void","avoid","🕳")
tog("Auto Respawn","arespawn","♻")
sec("EXTRA")
tog("Hit Sound","hs","🔊")
tog("Kill Sound","ks","💥")
tog("Hit Effect","he","✨")
ddn("Hit Effect Type","he_t",HET)
tog("Kill Effect","ke","💀")
ddn("Kill Effect Type","ke_t",HET)
sec("HIT MARKER")
tog("Hit Marker","hm","❌")
ddn("Style","hm_s",HMT)
sec("BULLET TRACERS")
tog("Tracers","btr","➡")
sld("Lifetime","btr_lt",.05,.5,.05,function(v)return string.format("%.2fs",v)end)

elseif name=="World"then
sec("LIGHTING")
tog("No Shadows","noshad","🌑")
tog("No Fog","fog_en","🌫")
tog("Ambient Changer","amb","💡")
tog("Time Changer","time_en","🕐")
sld("Time","time_v",0,24,.5,function(v)return string.format("%.1fh",v)end)
sec("ENVIRONMENT")
tog("No Grass","nograss","🌾")
tog("No Decals","nodec","🏷")
tog("No Particles","nopart","✨")
tog("No Sky","nosky","☁")
tog("No Clouds","noclouds","☁")
tog("Gravity","grav","🌍")
sld("Value","grav_v",0,500,5,function(v)return v end)
sec("PERFORMANCE")
tog("FPS Unlock","fps_ul","⚡")
sld("FPS Cap","fps_cap",30,500,10,function(v)return v.."fps"end)
tog("Low Graphics","lowg","📉")
tog("Render Distance","rd_en","🎥")
sld("Value","rd_v",100,5000,100,function(v)return v end)
sec("VIEW")
tog("FOV Changer","fov_ch","🔍")
sld("FOV","fov_v",40,120,5,function(v)return v.."°"end)
tog("Third Person","tp","👤")
tog("Freecam","fcam","🎬")
sld("Freecam Speed","fcam_s",10,500,10,function(v)return v end)

elseif name=="FPS"then
sec("FPS BOOST")
tog("Unlock FPS","fps_ul","⚡")
sld("FPS Cap","fps_cap",30,500,10,function(v)return v.."fps"end)
tog("Low Graphics","lowg","📉")
tog("No Shadows","noshad","🌑")
tog("No Grass","nograss","🌾")
tog("No Decals","nodec","🏷")
tog("No Particles","nopart","✨")
tog("No Sky","nosky","☁")
tog("No Clouds","noclouds","☁")
tog("No PostFX","nopfx","🎨")
tog("Render Distance","rd_en","🎥")
sld("Dist","rd_v",100,5000,100,function(v)return v end)

elseif name=="Config"then
sec("THEME")
ddn("Theme","theme",THEMES)
sld("FAB Size","fab_s",40,100,2,function(v)return v.."px"end)
tog("Watermark","wm","💧")
tog("Notifications","notif","🔔")
sec("ACTIONS")
local btn=Instance.new("TextButton",body)btn.Size=UDim2.new(1,-6,0,40)btn.BackgroundColor3=T.card btn.Text="Copy Config"btn.TextColor3=T.accent2 btn.Font=Enum.Font.GothamBold btn.TextSize=13 btn.AutoButtonColor=false btn.LayoutOrder=NO()
Instance.new("UICorner",btn).CornerRadius=UDim.new(0,8)
local bs2=Instance.new("UIStroke",btn)bs2.Color=T.stroke bs2.Thickness=1
btn.MouseButton1Click:Connect(function()local lines={"-- Phantom CONFIG"}for k,v in pairs(F)do local val if type(v)=="EnumItem"then val="Enum."..tostring(v):gsub("Enum%.","")elseif type(v)=="Color3"then val=string.format("Color3.fromRGB(%d,%d,%d)",v.R*255,v.G*255,v.B*255)else val=tostring(v)end table.insert(lines,"F."..k.."="..val)end local txt=table.concat(lines,"\n")pcall(function()setclipboard(txt)end)nt("Config","Copied "..#lines.." lines",2)end)
local btn2=Instance.new("TextButton",body)btn2.Size=UDim2.new(1,-6,0,40)btn2.BackgroundColor3=T.card btn2.Text="Reset All"btn2.TextColor3=Color3.fromRGB(255,100,100)btn2.Font=Enum.Font.GothamBold btn2.TextSize=13 btn2.AutoButtonColor=false btn2.LayoutOrder=NO()
Instance.new("UICorner",btn2).CornerRadius=UDim.new(0,8)
local bs3=Instance.new("UIStroke",btn2)bs3.Color=T.stroke bs3.Thickness=1
btn2.MouseButton1Click:Connect(function()nt("Config","Reload script to reset",2)end)
sec("INFO")
local inf=Instance.new("TextLabel",body)inf.Size=UDim2.new(1,-6,0,60)inf.BackgroundColor3=T.card inf.TextColor3=T.textDim inf.Font=Enum.Font.Gotham inf.TextSize=11 inf.LayoutOrder=NO()
inf.Text="Phantom v1.0\n1 на HaLal pozdnyak\nloaded from GitHub"
Instance.new("UICorner",inf).CornerRadius=UDim.new(0,8)
end
end

buildTab("Home")

-- drag window
local dg,dgs,dgp
header.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then dg=true dgs=i.Position dgp=win.Position end end)
header.InputChanged:Connect(function(i)if dg and(i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseMovement)then local d=i.Position-dgs win.Position=UDim2.new(dgp.X.Scale,dgp.X.Offset+d.X,dgp.Y.Scale,dgp.Y.Offset+d.Y)end end)
header.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then dg=false end end)

-- drag fab
local fg,fgs,fgp
fab.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then fg=true fgs=i.Position fgp=fab.Position end end)
fab.InputChanged:Connect(function(i)if fg and(i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseMovement)then local d=i.Position-fgs if d.Magnitude>8 then fab.Position=UDim2.new(fgp.X.Scale,fgp.X.Offset+d.X,fgp.Y.Scale,fgp.Y.Offset+d.Y)end end end)
fab.InputEnded:Connect(function(i)if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then if(i.Position-fgs).Magnitude<8 then win.Visible=not win.Visible end fg=false end end)

-- fade loader
task.wait(3.3)
rainConn:Disconnect()
local ftw=T:Create(bg,TweenInfo.new(.6),{BackgroundTransparency=1})
local fos={}
for _,o in ipairs(bg:GetDescendants())do if o:IsA("TextLabel")then table.insert(fos,T:Create(o,TweenInfo.new(.5),{TextTransparency=1}))elseif o:IsA("Frame")and o~=bg then table.insert(fos,T:Create(o,TweenInfo.new(.5),{BackgroundTransparency=1}))end end
ftw:Play()
for _,t in ipairs(fos)do t:Play()end
task.wait(.7)
loaderGui:Destroy()

nt("Phantom","loaded | 1 на HaLal pozdnyak",4)
print("[Phantom] v1.0 loaded | 1 на HaLal pozdnyak")
-- ═══════════════════════════════════════════
-- UI
-- ═══════════════════════════════════════════
local gui=Instance.new("ScreenGui",LP:WaitForChild("PlayerGui"))
gui.Name="PhantomUI_"..math.random(1,999999)
gui.ResetOnSpawn=false
gui.IgnoreGuiInset=true
gui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling

local function mkMoon(par,s)
    local fab=Instance.new("TextButton",par)
    fab.Size=UDim2.new(0,s,0,s)
    fab.Position=UDim2.new(0,20,.5,-s/2)
    fab.BackgroundTransparency=1
    fab.Text=""
    fab.AutoButtonColor=false
    local G,px=32,s/32
    local function isM(gx,gy)
        local x,y=(gx-G/2)/(G/2),(gy-G/2)/(G/2)
        local i1=math.sqrt(x*x+y*y)<=.95
        local x2,y2=x-.45,y+.15
        local i2=math.sqrt(x2*x2+y2*y2)<=.85
        return i1 and not i2
    end
    for gy=1,G do
        for gx=1,G do
            if isM(gx,gy)then
                local p=Instance.new("Frame",fab)
                p.Size=UDim2.new(0,math.ceil(px)+1,0,math.ceil(px)+1)
                p.Position=UDim2.new(0,(gx-1)*px,0,(gy-1)*px)
                p.BackgroundColor3=Color3.fromRGB(255,255,255)
                p.BorderSizePixel=0
                p.ZIndex=2
            end
        end
    end
    for _,sp in ipairs({{4,3},{9,6},{24,4},{28,9},{6,26},{12,29},{26,27},{29,22},{3,14},{30,15},{15,2},{20,30}})do
        local s2=Instance.new("Frame",fab)
        s2.Size=UDim2.new(0,math.ceil(px),0,math.ceil(px))
        s2.Position=UDim2.new(0,(sp[1]-1)*px,0,(sp[2]-1)*px)
        s2.BackgroundColor3=Color3.fromRGB(255,255,255)
        s2.BorderSizePixel=0
        s2.ZIndex=2
    end
    return fab
end
local fab=mkMoon(gui,56)

local T={bg=Color3.fromRGB(14,14,20),sb=Color3.fromRGB(16,16,24),content=Color3.fromRGB(11,11,16),card=Color3.fromRGB(24,24,34),cardH=Color3.fromRGB(32,32,44),accent=Color3.fromRGB(110,80,255),accent2=Color3.fromRGB(140,110,255),toggleOff=Color3.fromRGB(50,50,65),text=Color3.fromRGB(240,240,250),textDim=Color3.fromRGB(150,150,175),textFaint=Color3.fromRGB(90,90,115),stroke=Color3.fromRGB(35,35,48),iconBg=Color3.fromRGB(30,30,42)}

local W,H=760,480
local win=Instance.new("Frame",gui)
win.Size=UDim2.new(0,W,0,H)
win.Position=UDim2.new(.5,-W/2,.5,-H/2)
win.BackgroundColor3=T.bg
win.BorderSizePixel=0
win.Visible=false
Instance.new("UICorner",win).CornerRadius=UDim.new(0,14)
local ws2=Instance.new("UIStroke",win)
ws2.Color=T.stroke
ws2.Thickness=1

local SW=170
local sb=Instance.new("Frame",win)
sb.Size=UDim2.new(0,SW,1,0)
sb.BackgroundColor3=T.sb
sb.BorderSizePixel=0
Instance.new("UICorner",sb).CornerRadius=UDim.new(0,14)

local logoBox=Instance.new("Frame",sb)
logoBox.Size=UDim2.new(1,-24,0,56)
logoBox.Position=UDim2.new(0,12,0,12)
logoBox.BackgroundTransparency=1
local lIcon=Instance.new("Frame",logoBox)
lIcon.Size=UDim2.new(0,40,0,40)
lIcon.Position=UDim2.new(0,0,.5,-20)
lIcon.BackgroundColor3=T.accent
lIcon.BorderSizePixel=0
Instance.new("UICorner",lIcon).CornerRadius=UDim.new(0,12)
local lGrad=Instance.new("UIGradient",lIcon)
lGrad.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,T.accent2),ColorSequenceKeypoint.new(1,T.accent)}
lGrad.Rotation=90
local lTxt=Instance.new("TextLabel",lIcon)
lTxt.Size=UDim2.new(1,0,1,0)
lTxt.BackgroundTransparency=1
lTxt.Text="◆"
lTxt.TextColor3=Color3.fromRGB(255,255,255)
lTxt.Font=Enum.Font.GothamBold
lTxt.TextSize=22
local lT=Instance.new("TextLabel",logoBox)
lT.Size=UDim2.new(1,-50,0,22)
lT.Position=UDim2.new(0,50,0,2)
lT.BackgroundTransparency=1
lT.Text="Phantom"
lT.TextColor3=T.text
lT.Font=Enum.Font.GothamBold
lT.TextSize=18
lT.TextXAlignment=Enum.TextXAlignment.Left
local lS=Instance.new("TextLabel",logoBox)
lS.Size=UDim2.new(1,-50,0,14)
lS.Position=UDim2.new(0,50,0,24)
lS.BackgroundTransparency=1
lS.Text="1 на HaLal pozdnyak"
lS.TextColor3=T.textDim
lS.Font=Enum.Font.Gotham
lS.TextSize=10
lS.TextXAlignment=Enum.TextXAlignment.Left

local tabsH=Instance.new("ScrollingFrame",sb)
tabsH.Size=UDim2.new(1,-16,1,-90)
tabsH.Position=UDim2.new(0,8,0,78)
tabsH.BackgroundTransparency=1
tabsH.BorderSizePixel=0
tabsH.ScrollBarThickness=0
tabsH.CanvasSize=UDim2.new(0,0,0,0)
tabsH.AutomaticCanvasSize=Enum.AutomaticSize.Y
local tLay=Instance.new("UIListLayout",tabsH)
tLay.SortOrder=Enum.SortOrder.LayoutOrder
tLay.Padding=UDim.new(0,4)

local TAB_ICONS={Home="⌂",Combat="⚔",Rage="☠",Legit="✓",AI="◉",Silent="◐",Visual="◈",ESP="👁",Chams="◆",AntiAim="✦",Fly="✈",Speed="≫",Misc="⚙",World="☀",FPS="▲",Config="≡"}
local TAB_ORDER={"Home","Combat","Rage","Legit","AI","Silent","Visual","ESP","Chams","AntiAim","Fly","Speed","Misc","World","FPS","Config"}
local TABS={}
local curTab="Home"
local buildTab

local function mkTab(n,o)
    local b=Instance.new("TextButton",tabsH)
    b.Name=n
    b.Size=UDim2.new(1,0,0,40)
    b.BackgroundColor3=T.sb
    b.BackgroundTransparency=1
    b.Text=""
    b.AutoButtonColor=false
    b.LayoutOrder=o
    Instance.new("UICorner",b).CornerRadius=UDim.new(0,10)
    local g=Instance.new("UIGradient",b)
    g.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,T.accent),ColorSequenceKeypoint.new(1,T.accent2)}
    g.Rotation=90
    g.Enabled=false
    local s=Instance.new("UIStroke",b)
    s.Color=T.accent2
    s.Thickness=1.5
    s.Transparency=1
    local ic=Instance.new("TextLabel",b)
    ic.Size=UDim2.new(0,30,1,0)
    ic.Position=UDim2.new(0,12,0,0)
    ic.BackgroundTransparency=1
    ic.Text=TAB_ICONS[n]or"•"
    ic.TextColor3=T.textDim
    ic.Font=Enum.Font.GothamBold
    ic.TextSize=16
    local lb=Instance.new("TextLabel",b)
    lb.Size=UDim2.new(1,-52,1,0)
    lb.Position=UDim2.new(0,46,0,0)
    lb.BackgroundTransparency=1
    lb.Text=n
    lb.TextColor3=T.textDim
    lb.Font=Enum.Font.GothamMedium
    lb.TextSize=14
    lb.TextXAlignment=Enum.TextXAlignment.Left
    b.MouseEnter:Connect(function()if curTab~=n then b.BackgroundTransparency=.5 end end)
    b.MouseLeave:Connect(function()if curTab~=n then b.BackgroundTransparency=1 end end)
    b.MouseButton1Click:Connect(function()
        if curTab==n then return end
        for _,t in pairs(TABS)do
            t.b.BackgroundTransparency=1
            t.g.Enabled=false
            t.s.Transparency=1
            t.i.TextColor3=T.textDim
            t.l.TextColor3=T.textDim
            t.l.Font=Enum.Font.GothamMedium
        end
        b.BackgroundTransparency=0
        g.Enabled=true
        s.Transparency=.3
        ic.TextColor3=Color3.fromRGB(255,255,255)
        lb.TextColor3=Color3.fromRGB(255,255,255)
        lb.Font=Enum.Font.GothamBold
        curTab=n
        if buildTab then buildTab(n)end
    end)
    TABS[n]={b=b,i=ic,l=lb,g=g,s=s}
end
for i,n in ipairs(TAB_ORDER)do mkTab(n,i)end
local ft2=TABS["Home"]
ft2.b.BackgroundTransparency=0
ft2.g.Enabled=true
ft2.s.Transparency=.3
ft2.i.TextColor3=Color3.fromRGB(255,255,255)
ft2.l.TextColor3=Color3.fromRGB(255,255,255)
ft2.l.Font=Enum.Font.GothamBold

local content=Instance.new("Frame",win)
content.Size=UDim2.new(1,-SW,1,0)
content.Position=UDim2.new(0,SW,0,0)
content.BackgroundColor3=T.content
content.BorderSizePixel=0
Instance.new("UICorner",content).CornerRadius=UDim.new(0,14)

local header=Instance.new("Frame",content)
header.Size=UDim2.new(1,0,0,70)
header.BackgroundTransparency=1
local hT=Instance.new("TextLabel",header)
hT.Size=UDim2.new(1,-100,0,26)
hT.Position=UDim2.new(0,22,0,16)
hT.BackgroundTransparency=1
hT.Text="Welcome back!"
hT.TextColor3=T.text
hT.Font=Enum.Font.GothamBold
hT.TextSize=20
hT.TextXAlignment=Enum.TextXAlignment.Left
local hS=Instance.new("TextLabel",header)
hS.Size=UDim2.new(1,-100,0,16)
hS.Position=UDim2.new(0,22,0,42)
hS.BackgroundTransparency=1
hS.Text="Phantom | 1 на HaLal pozdnyak"
hS.TextColor3=T.textDim
hS.Font=Enum.Font.Gotham
hS.TextSize=12
hS.TextXAlignment=Enum.TextXAlignment.Left
local closeB=Instance.new("TextButton",header)
closeB.Size=UDim2.new(0,32,0,32)
closeB.Position=UDim2.new(1,-46,0,20)
closeB.BackgroundTransparency=1
closeB.Text="✕"
closeB.TextColor3=T.textDim
closeB.Font=Enum.Font.GothamBold
closeB.TextSize=16
closeB.AutoButtonColor=false
closeB.MouseEnter:Connect(function()closeB.TextColor3=Color3.fromRGB(255,80,80)end)
closeB.MouseLeave:Connect(function()closeB.TextColor3=T.textDim end)
closeB.MouseButton1Click:Connect(function()win.Visible=false end)

local body=Instance.new("ScrollingFrame",content)
body.Size=UDim2.new(1,-32,1,-86)
body.Position=UDim2.new(0,16,0,78)
body.BackgroundTransparency=1
body.BorderSizePixel=0
body.ScrollBarThickness=3
body.ScrollBarImageColor3=T.accent
body.CanvasSize=UDim2.new(0,0,0,0)
body.AutomaticCanvasSize=Enum.AutomaticSize.Y
local bLay=Instance.new("UIListLayout",body)
bLay.SortOrder=Enum.SortOrder.LayoutOrder
bLay.Padding=UDim.new(0,6)

local OC=0
local function NO()OC=OC+1 return OC end
local function clearB()
    for _,c in ipairs(body:GetChildren())do
        if not c:IsA("UIListLayout")then c:Destroy()end
    end
    OC=0
end

local function sec(t)
    local f=Instance.new("Frame",body)
    f.Size=UDim2.new(1,-6,0,24)
    f.BackgroundTransparency=1
    f.LayoutOrder=NO()
    local l=Instance.new("TextLabel",f)
    l.Size=UDim2.new(1,0,1,0)
    l.BackgroundTransparency=1
    l.Text="  "..t
    l.TextColor3=T.textFaint
    l.Font=Enum.Font.GothamBold
    l.TextSize=11
    l.TextXAlignment=Enum.TextXAlignment.Left
end

local function tog(label,key,icon)
    local c=Instance.new("Frame",body)
    c.Size=UDim2.new(1,-6,0,52)
    c.BackgroundColor3=T.card
    c.BorderSizePixel=0
    c.LayoutOrder=NO()
    Instance.new("UICorner",c).CornerRadius=UDim.new(0,10)
    local cs=Instance.new("UIStroke",c)
    cs.Color=T.stroke
    cs.Thickness=1
    local ib=Instance.new("Frame",c)
    ib.Size=UDim2.new(0,34,0,34)
    ib.Position=UDim2.new(0,12,.5,-17)
    ib.BackgroundColor3=T.iconBg
    ib.BorderSizePixel=0
    Instance.new("UICorner",ib).CornerRadius=UDim.new(0,8)
    local it=Instance.new("TextLabel",ib)
    it.Size=UDim2.new(1,0,1,0)
    it.BackgroundTransparency=1
    it.Text=icon or"•"
    it.TextColor3=T.text
    it.Font=Enum.Font.GothamBold
    it.TextSize=16
    local lb=Instance.new("TextLabel",c)
    lb.Size=UDim2.new(1,-130,1,0)
    lb.Position=UDim2.new(0,56,0,0)
    lb.BackgroundTransparency=1
    lb.Text=label
    lb.TextColor3=T.text
    lb.Font=Enum.Font.GothamMedium
    lb.TextSize=14
    lb.TextXAlignment=Enum.TextXAlignment.Left
    local sw=Instance.new("Frame",c)
    sw.Size=UDim2.new(0,46,0,26)
    sw.Position=UDim2.new(1,-60,.5,-13)
    sw.BackgroundColor3=F[key]and T.accent or T.toggleOff
    sw.BorderSizePixel=0
    Instance.new("UICorner",sw).CornerRadius=UDim.new(1,0)
    local kn=Instance.new("Frame",sw)
    kn.Size=UDim2.new(0,20,0,20)
    kn.Position=F[key]and UDim2.new(1,-22,.5,-10)or UDim2.new(0,2,.5,-10)
    kn.BackgroundColor3=Color3.fromRGB(255,255,255)
    kn.BorderSizePixel=0
    Instance.new("UICorner",kn).CornerRadius=UDim.new(1,0)
    local b=Instance.new("TextButton",c)
    b.Size=UDim2.new(1,0,1,0)
    b.BackgroundTransparency=1
    b.Text=""
    b.MouseButton1Click:Connect(function()
        F[key]=not F[key]
        local tg=F[key]and T.accent or T.toggleOff
        local kt=F[key]and UDim2.new(1,-22,.5,-10)or UDim2.new(0,2,.5,-10)
        T:Create(sw,TweenInfo.new(.15),{BackgroundColor3=tg}):Play()
        T:Create(kn,TweenInfo.new(.15),{Position=kt}):Play()
    end)
    b.MouseEnter:Connect(function()c.BackgroundColor3=T.cardH end)
    b.MouseLeave:Connect(function()c.BackgroundColor3=T.card end)
end

local function sld(label,key,mn,mx,st,fmt)
    local c=Instance.new("Frame",body)
    c.Size=UDim2.new(1,-6,0,70)
    c.BackgroundColor3=T.card
    c.BorderSizePixel=0
    c.LayoutOrder=NO()
    Instance.new("UICorner",c).CornerRadius=UDim.new(0,10)
    local cs=Instance.new("UIStroke",c)
    cs.Color=T.stroke
    cs.Thickness=1
    local lb=Instance.new("TextLabel",c)
    lb.Size=UDim2.new(1,-140,0,20)
    lb.Position=UDim2.new(0,16,0,8)
    lb.BackgroundTransparency=1
    lb.Text=label
    lb.TextColor3=T.text
    lb.Font=Enum.Font.GothamMedium
    lb.TextSize=13
    lb.TextXAlignment=Enum.TextXAlignment.Left
    local v=Instance.new("TextLabel",c)
    v.Size=UDim2.new(0,120,0,20)
    v.Position=UDim2.new(1,-136,0,8)
    v.BackgroundTransparency=1
    v.Text=fmt and fmt(F[key])or tostring(F[key])
    v.TextColor3=T.accent2
    v.Font=Enum.Font.GothamBold
    v.TextSize=13
    v.TextXAlignment=Enum.TextXAlignment.Right
    local tr=Instance.new("Frame",c)
    tr.Size=UDim2.new(1,-32,0,6)
    tr.Position=UDim2.new(0,16,0,44)
    tr.BackgroundColor3=T.toggleOff
    tr.BorderSizePixel=0
    Instance.new("UICorner",tr).CornerRadius=UDim.new(1,0)
    local ir=(F[key]-mn)/(mx-mn)
    local fl=Instance.new("Frame",tr)
    fl.Size=UDim2.new(ir,0,1,0)
    fl.BackgroundColor3=T.accent
    fl.BorderSizePixel=0
    Instance.new("UICorner",fl).CornerRadius=UDim.new(1,0)
    local fg=Instance.new("UIGradient",fl)
    fg.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,T.accent),ColorSequenceKeypoint.new(1,T.accent2)}
    local kn=Instance.new("Frame",tr)
    kn.Size=UDim2.new(0,16,0,16)
    kn.Position=UDim2.new(ir,-8,.5,-8)
    kn.BackgroundColor3=Color3.fromRGB(255,255,255)
    kn.BorderSizePixel=0
    Instance.new("UICorner",kn).CornerRadius=UDim.new(1,0)
    local dg=false
    local function upd(ip)
        local ta=tr.AbsolutePosition.X
        local tw=tr.AbsoluteSize.X
        local r=math.clamp((ip.X-ta)/tw,0,1)
        local val=mn+(mx-mn)*r
        val=math.floor(val/st+.5)*st
        F[key]=val
        v.Text=fmt and fmt(val)or tostring(val)
        fl.Size=UDim2.new(r,0,1,0)
        kn.Position=UDim2.new(r,-8,.5,-8)
    end
    tr.InputBegan:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then
            dg=true
            upd(i.Position)
        end
    end)
    tr.InputChanged:Connect(function(i)
        if dg and(i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseMovement)then
            upd(i.Position)
        end
    end)
    tr.InputEnded:Connect(function(i)
        if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then
            dg=false
        end
    end)
end

local function ddn(label,key,opts)
    local c=Instance.new("Frame",body)
    c.Size=UDim2.new(1,-6,0,52)
    c.BackgroundColor3=T.card
    c.BorderSizePixel=0
    c.LayoutOrder=NO()
    Instance.new("UICorner",c).CornerRadius=UDim.new(0,10)
    local cs=Instance.new("UIStroke",c)
    cs.Color=T.stroke
    cs.Thickness=1
    local lb=Instance.new("TextLabel",c)
    lb.Size=UDim2.new(.5,0,1,0)
    lb.Position=UDim2.new(0,16,0,0)
    lb.BackgroundTransparency=1
    lb.Text=label
    lb.TextColor3=T.text
    lb.Font=Enum.Font.GothamMedium
    lb.TextSize=13
    lb.TextXAlignment=Enum.TextXAlignment.Left
    local b=Instance.new("TextButton",c)
    b.Size=UDim2.new(.42,0,0,32)
    b.Position=UDim2.new(.55,0,.5,-16)
    b.BackgroundColor3=T.iconBg
    b.Text=tostring(F[key])
    b.TextColor3=T.accent2
    b.Font=Enum.Font.GothamBold
    b.TextSize=12
    b.AutoButtonColor=false
    Instance.new("UICorner",b).CornerRadius=UDim.new(0,8)
    local bs=Instance.new("UIStroke",b)
    bs.Color=T.stroke
    bs.Thickness=1
    local ix=1
    for i,v in ipairs(opts)do
        if v==F[key]then ix=i end
    end
    b.MouseButton1Click:Connect(function()
        ix=ix%#opts+1
        F[key]=opts[ix]
        b.Text=tostring(opts[ix])
    end)
end

local function kbd(label,key)
    local c=Instance.new("Frame",body)
    c.Size=UDim2.new(1,-6,0,52)
    c.BackgroundColor3=T.card
    c.BorderSizePixel=0
    c.LayoutOrder=NO()
    Instance.new("UICorner",c).CornerRadius=UDim.new(0,10)
    local cs=Instance.new("UIStroke",c)
    cs.Color=T.stroke
    cs.Thickness=1
    local lb=Instance.new("TextLabel",c)
    lb.Size=UDim2.new(.5,0,1,0)
    lb.Position=UDim2.new(0,16,0,0)
    lb.BackgroundTransparency=1
    lb.Text=label
    lb.TextColor3=T.text
    lb.Font=Enum.Font.GothamMedium
    lb.TextSize=13
    lb.TextXAlignment=Enum.TextXAlignment.Left
    local b=Instance.new("TextButton",c)
    b.Size=UDim2.new(.42,0,0,32)
    b.Position=UDim2.new(.55,0,.5,-16)
    b.BackgroundColor3=T.iconBg
    b.Text=tostring(F[key]):gsub("Enum.KeyCode.","")
    b.TextColor3=T.accent2
    b.Font=Enum.Font.GothamBold
    b.TextSize=12
    b.AutoButtonColor=false
    Instance.new("UICorner",b).CornerRadius=UDim.new(0,8)
    local bs=Instance.new("UIStroke",b)
    bs.Color=T.stroke
    bs.Thickness=1
    local wt=false
    b.MouseButton1Click:Connect(function()
        wt=true
        b.Text="..."
    end)
    U.InputBegan:Connect(function(i,gp)
        if wt and not gp then
            F[key]=i.KeyCode
            b.Text=tostring(i.KeyCode):gsub("Enum.KeyCode.","")
            wt=false
        end
    end)
end

buildTab=function(name)
    clearB()
    if name=="Home"then
        sec("PHANTOM")
        local w=Instance.new("Frame",body)
        w.Size=UDim2.new(1,-6,0,140)
        w.BackgroundColor3=T.card
        w.BorderSizePixel=0
        w.LayoutOrder=NO()
        Instance.new("UICorner",w).CornerRadius=UDim.new(0,10)
        local ws=Instance.new("UIStroke",w)
        ws.Color=T.stroke
        ws.Thickness=1
        local ic=Instance.new("TextLabel",w)
        ic.Size=UDim2.new(1,0,0,50)
        ic.Position=UDim2.new(0,0,0,20)
        ic.BackgroundTransparency=1
        ic.Text="◆"
        ic.TextColor3=T.accent
        ic.Font=Enum.Font.GothamBold
        ic.TextSize=40
        local tt=Instance.new("TextLabel",w)
        tt.Size=UDim2.new(1,0,0,24)
        tt.Position=UDim2.new(0,0,0,72)
        tt.BackgroundTransparency=1
        tt.Text="PHANTOM"
        tt.TextColor3=T.text
        tt.Font=Enum.Font.GothamBold
        tt.TextSize=22
        local st=Instance.new("TextLabel",w)
        st.Size=UDim2.new(1,0,0,16)
        st.Position=UDim2.new(0,0,0,98)
        st.BackgroundTransparency=1
        st.Text="1 на HaLal pozdnyak"
        st.TextColor3=T.textDim
        st.Font=Enum.Font.Gotham
        st.TextSize=12
        sec("QUICK TOGGLES")
        tog("Aimbot","aim_en","⚔")
        tog("Silent Aim","sil_en","◐")
        tog("ESP","esp_en","👁")
        tog("Chams","ch_en","◆")
        tog("China Hat","china","🎩")
        tog("Speed","spd_en","≫")
        tog("Fly","fly_en","✈")
        tog("Full Bright","fb","☀")
        tog("Fake Lag","fl_en","⏱")
        tog("Anti-AFK","aafk","🤖")
    elseif name=="Combat"then
        sec("AIMBOT")
        tog("Enabled","aim_en","⚔")
        kbd("Key","aim_key")
        ddn("Mode","aim_mode",AMMODES)
        ddn("Aim Type","aim_type",AMT)
        sld("FOV","aim_fov",20,500,5,function(v)return v.."px"end)
        sld("Smooth","aim_smooth",0,1,.05,function(v)return string.format("%.2f",v)end)
        sld("Flick Speed","aim_flick",.01,.3,.01,function(v)return string.format("%.2f",v)end)
        sld("Legit Rnd","aim_lr",0,1,.05,function(v)return string.format("%.2f",v)end)
        sld("Pixel Quant","aim_px",1,20,1,function(v)return v.."px"end)
        sld("Magnet Strength","aim_mag",0,1,.05,function(v)return string.format("%.2f",v)end)
        ddn("Hit Part","aim_part",HITP)
        sld("Max Distance","aim_max",100,3000,50,function(v)return v.."m"end)
        ddn("Priority","aim_pri",AMP)
        sec("CHECKS")
        tog("WallCheck","aim_wall","🧱")
        tog("TeamCheck","aim_team","👥")
        tog("Stagger Check","aim_stag","💫")
        tog("Bone Priority","aim_bone","🦴")
        tog("Prediction","aim_pred","🎯")
        sld("Pred X","aim_predx",0,.5,.01,function(v)return string.format("%.2f",v)end)
        tog("Humanize","aim_hum","👤")
        tog("Nearest Part","aim_hpn","📍")
        tog("Visible Only","aim_vis","👁")
        sec("AUTO SHOOT")
        tog("Auto Shoot","aim_as","🔥")
        sld("RPM","aim_asrpm",60,1200,30,function(v)return v end)
        tog("Trigger Bot","aim_tb","⚡")
        sld("Trigger FOV","aim_tbfov",1,60,1,function(v)return v.."px"end)
        sec("BACKTRACK")
        tog("Enabled","bt_en","⏪")
        sld("Time","bt_t",0,.5,.01,function(v)return string.format("%.2fs",v)end)
        sld("Max MS","bt_ms",50,500,10,function(v)return v.."ms"end)
        tog("Show BT ESP","bt_esp","👁")
    elseif name=="Rage"then
        sec("RAGE AIMBOT")
        tog("Enabled","rage_en","☠")
        tog("Instant Snap","rage_snap","⚡")
        tog("Multi Target","rage_multi","🎯")
        sld("Multi Count","rage_mc",1,10,1,function(v)return v end)
        tog("Ignore Walls","rage_iw","🧱")
        tog("Ignore Vis","rage_iv","👁")
        tog("Headshot Only","rage_hs","💀")
        tog("Auto Fire","rage_af","🔥")
        tog("Instant Trigger","rage_it","⚡")
        tog("Auto Switch","rage_sw","🔄")
        sld("Switch Delay","rage_swd",0,.5,.01,function(v)return string.format("%.2fs",v)end)
        tog("Backtrack","rage_bt","⏪")
        sld("BT Time","rage_btt",0,.5,.01,function(v)return string.format("%.2fs",v)end)
        tog("Ignore Team","rage_it2","👥")
        tog("Ignore Stagger","rage_is","💫")
        tog("Unlimited FOV","rage_uf","♾")
        tog("No Smooth","rage_ns","➡")
        tog("Prediction","rage_pred","🎯")
        sld("Pred Mult","rage_pm",0,1,.05,function(v)return string.format("%.2f",v)end)
        tog("One Tick","rage_1t","⚡")
        tog("Spin Bot","rage_spin","🌀")
        sld("Spin Speed","rage_ss",1,30,1,function(v)return v end)
    elseif name=="Legit"then
        sec("LEGIT AIMBOT")
        tog("Enabled","legit_en","✓")
        sld("Smooth","legit_sm",0,1,.05,function(v)return string.format("%.2f",v)end)
        sld("FOV","legit_fov",20,200,5,function(v)return v.."px"end)
        sld("Max Dist","legit_md",50,1000,50,function(v)return v.."m"end)
        tog("Visible Only","legit_vo","👁")
        tog("No Wall","legit_nw","🧱")
        tog("No Stagger","legit_ns","💫")
        tog("Respect Team","legit_rt","👥")
        tog("Front Only","legit_fo","➡")
        sld("Human Error","legit_he",0,3,.1,function(v)return string.format("%.1f",v)end)
        tog("Jitter","legit_jit","〰")
        sld("Jitter Amp","legit_ja",0,5,.1,function(v)return string.format("%.1f",v)end)
        tog("Delayed Snap","legit_ds","⏱")
        sld("Snap After","legit_sa",.1,3,.1,function(v)return string.format("%.1fs",v)end)
        tog("Smooth Release","legit_sr","↩")
        sld("Release Time","legit_rt2",.1,1,.1,function(v)return string.format("%.1fs",v)end)
        tog("Target Lock","legit_tl","🎯")
        sld("Lock Time","legit_lt",.1,2,.1,function(v)return string.format("%.1fs",v)end)
        tog("Random Hit Part","legit_rhp","🎲")
    elseif name=="AI"then
        sec("AI AIMBOT")
        tog("Enabled","ai_en","◉")
        ddn("Mode","ai_mode",AIM)
        sld("Aggression","ai_aggr",0,1,.05,function(v)return string.format("%.2f",v)end)
        sld("Reaction","ai_react",0,500,10,function(v)return v.."ms"end)
        sld("Lead Mult","ai_lead",0,3,.1,function(v)return string.format("%.1f",v)end)
        sld("Sensitivity","ai_sens",.1,3,.1,function(v)return string.format("%.1f",v)end)
        tog("Hitbox Priority","ai_hbp","📍")
        tog("Target Switch","ai_ts","🔄")
        tog("Adaptive","ai_adap","🎯")
        tog("Dodge Predict","ai_dodge","⚡")
        tog("Threat Model","ai_thr","⚠")
        tog("Recoil Control","ai_rec","🔫")
        sec("HUMANIZATION")
        tog("Jitter","ai_jit","〰")
        sld("Jitter Amp","ai_jita",0,10,.5,function(v)return string.format("%.1f",v)end)
        tog("Snap Mode","ai_snap","⚡")
        sld("Snap Time","ai_snapt",.1,3,.1,function(v)return string.format("%.1fs",v)end)
    elseif name=="Silent"then
        sec("SILENT AIM")
        tog("Enabled","sil_en","◐")
        ddn("Type","sil_type",SILT)
        ddn("Mode","sil_mode",SILMODES)
        sld("FOV","sil_fov",20,600,5,function(v)return v.."px"end)
        sld("Chance","sil_ch",0,100,5,function(v)return v.."%"end)
        sld("Magnetic Speed","sil_mag",.05,1,.05,function(v)return string.format("%.2f",v)end)
        ddn("Hit Part","sil_part",HITP)
        tog("360°","sil_360","♾")
        tog("WallCheck","sil_wall","🧱")
        tog("TeamCheck","sil_team","👥")
        tog("Stagger","sil_stag","💫")
        tog("Prediction","sil_pred","🎯")
        tog("Visible Only","sil_vo","👁")
        tog("Hit Chance","sil_hc","🎲")
        tog("PSIL Mode","sil_psil","👻")
    elseif name=="Visual"then
        sec("CHINA HAT")
        tog("China Hat","china","🎩")
        ddn("Type","china_t",CHINAT)
        sld("Size","china_s",1,6,.1,function(v)return string.format("%.1f",v)end)
        sld("Height","china_h",.5,3,.1,function(v)return string.format("%.1f",v)end)
        sec("HALO")
        tog("Halo","halo","😇")
        ddn("Type","halo_t",HALOT)
        sld("Size","halo_s",1,5,.1,function(v)return string.format("%.1f",v)end)
        sld("Height","halo_h",1,4,.1,function(v)return string.format("%.1f",v)end)
        sec("HEAD/FEET")
        tog("Head Ring","hring","💫")
        sld("Ring Size","hring_s",1,6,.1,function(v)return string.format("%.1f",v)end)
        tog("Feet Circle","fcirc","⭕")
        sld("Circle Size","fcirc_s",2,10,.5,function(v)return string.format("%.1f",v)end)
        sec("AURA")
        tog("Aura","aura","✨")
        ddn("Type","aura_t",AURAT)
        sec("CAPE")
        tog("Cape","cape","🧣")
        ddn("Type","cape_t",CAPET)
        sec("WINGS")
        tog("Wings","wings","🪽")
        ddn("Type","wings_t",WINGST)
        sec("PET ORBIT")
        tog("Orbit","porbit","🪐")
        sld("Count","porbit_n",1,10,1,function(v)return v end)
        sld("Radius","porbit_r",2,10,.5,function(v)return string.format("%.1f",v)end)
        sld("Speed","porbit_s",.5,5,.1,function(v)return string.format("%.1f",v)end)
        sec("TRAIL")
        tog("Trail","trail","🌈")
        sld("Lifetime","trail_lt",.1,3,.1,function(v)return string.format("%.1fs",v)end)
        sec("BODY")
        ddn("Body Effect","body_eff",BODYT)
        ddn("Material","body_mat",{"Neon","ForceField","Glass","Plastic","SmoothPlastic","Metal"})
        sld("Transparency","body_tr",0,1,.05,function(v)return string.format("%.2f",v)end)
    elseif name=="ESP"then
        sec("ESP BOX")
        tog("ESP","esp_en","👁")
        ddn("Box Type","esp_bt",ESPBT)
        sld("Thickness","esp_bth",.5,5,.5,function(v)return string.format("%.1f",v)end)
        tog("Filled","esp_bf","⬛")
        tog("Rainbow","esp_brb","🌈")
        tog("Fade","esp_fade","〰")
        sld("Fade Dist","esp_faded",10,200,10,function(v)return v.."m"end)
        tog("Dist Scale","esp_bds","📏")
        sld("Max Dist","esp_max",100,3000,50,function(v)return v.."m"end)
        sec("SKELETON")
        tog("Skeleton","esp_sk","🦴")
        sld("Thickness","esp_skt",.5,4,.5,function(v)return string.format("%.1f",v)end)
        tog("Bone Dots","esp_bd","•")
        tog("Joints","esp_j","◦")
        tog("Hitboxes","esp_hb","⬜")
        sec("INFO")
        tog("Name","esp_n","📛")
        tog("Distance","esp_d","📏")
        tog("Health","esp_h","❤")
        tog("Armor","esp_a","🛡")
        tog("Weapon","esp_w","🔫")
        tog("Ammo","esp_am","🔢")
        tog("Team","esp_tm","👥")
        tog("Rank","esp_r","🏆")
        tog("Money","esp_m","💰")
        sec("MARKERS")
        tog("Tracer","esp_tr","➡")
        tog("Snapline","esp_sl","↗")
        tog("Head Dot","esp_hd","•")
        tog("Head Circle","esp_hc2","⭕")
        tog("Arrow","esp_ar","➤")
        tog("Offscreen","esp_off","📐")
        tog("Radar","esp_rd","📡")
        sld("Radar Size","esp_rdz",60,300,10,function(v)return v.."px"end)
        sld("Radar Range","esp_rdr",100,2000,50,function(v)return v.."m"end)
    elseif name=="Chams"then
        sec("CHAMS")
        tog("Enabled","ch_en","◆")
        tog("Visible","ch_v","👁")
        tog("Invisible","ch_i","👻")
        sld("Fill","ch_f",0,1,.05,function(v)return string.format("%.2f",v)end)
        tog("Outline","ch_out","⬜")
        tog("Rainbow","ch_rb","🌈")
        tog("Team","ch_t","👥")
        tog("Self","ch_s","🎭")
    elseif name=="AntiAim"then
        sec("ANTI-AIM")
        tog("Enabled","aa_en","✦")
        ddn("Type","aa_type",AAT)
        sld("Jitter Amp","aa_ja",0,90,1,function(v)return v.."°"end)
        sld("Spin Speed","aa_ss",1,30,1,function(v)return v end)
        sec("FAKE ANGLES")
        tog("Enabled","fa_en","🎭")
        ddn("Mode","fa_mode",{"Static","Jitter","Spin"})
        sld("Yaw","fa_yaw",0,360,1,function(v)return v.."°"end)
        sld("Pitch","fa_pitch",0,180,1,function(v)return v.."°"end)
        sld("Jitter","fa_jit",0,90,1,function(v)return v.."°"end)
        sld("Spin Speed","fa_ss",1,30,1,function(v)return v end)
        sec("FAKE LAG")
        tog("Enabled","fl_en","⏱")
        kbd("Key","fl_key")
        ddn("Mode","fl_mode",{"Toggle","Hold","Always"})
        sld("Amount","fl_amt",.01,.5,.01,function(v)return string.format("%.2fs",v)end)
        tog("Jitter","fl_jit","〰")
        sld("Jitter Amp","fl_ja",0,.2,.01,function(v)return string.format("%.2fs",v)end)
        tog("Indicator","fl_indic","📢")
        tog("NetOwnership","fl_no","🌐")
        sec("DESYNC")
        tog("Enabled","ds_en","🎭")
        ddn("Mode","ds_mode",{"Forward","Backward","Left","Right","Random","Spin","Flip"})
        sld("Amount","ds_amt",1,30,1,function(v)return v end)
        sld("Speed","ds_spd",.5,10,.5,function(v)return string.format("%.1f",v)end)
        sld("Reset Dist","ds_rd",5,100,5,function(v)return v end)
        sec("JITTER")
        tog("Position Jitter","pj_en","📍")
        sld("Amp","pj_amp",.5,10,.5,function(v)return string.format("%.1f",v)end)
        sld("Rate","pj_rate",.01,.5,.01,function(v)return string.format("%.2fs",v)end)
        tog("Rotation Jitter","rj_en","🔄")
        sld("Amp","rj_amp",1,90,1,function(v)return v.."°"end)
        sld("Rate","rj_rate",.01,.5,.01,function(v)return string.format("%.2fs",v)end)
        sec("LAG SWITCH")
        tog("Enabled","ls_en","💥")
        kbd("Key","ls_key")
        sld("Duration","ls_dur",.1,3,.1,function(v)return string.format("%.1fs",v)end)
    elseif name=="Fly"then
        sec("FLY")
        tog("Enabled","fly_en","✈")
        kbd("Key","fly_key")
        ddn("Mode","fly_mode",{"Hold","Toggle","Always"})
        ddn("Type","fly_type",FLYT)
        sld("Speed","fly_spd",10,500,10,function(v)return v end)
        tog("Infinite Jump","ijmp","♾")
        tog("No Clip","noclip","👻")
    elseif name=="Speed"then
        sec("SPEED")
        tog("Enabled","spd_en","≫")
        ddn("Type","spd_type",SPDT)
        sld("Value","spd_v",16,500,1,function(v)return v end)
        tog("Bunny Hop","bhop","🐰")
        tog("Auto Bhop","abhop","🐇")
        tog("Strafe","strafe","🏃")
        tog("Infinite Sprint","isprint","♾")
        tog("No Slow","noslow","⚡")
        sec("JUMP")
        tog("Jump Power","jmp_en","⬆")
        sld("Value","jmp_v",50,500,5,function(v)return v end)
    elseif name=="Misc"then
        sec("CHARACTER")
        tog("Full Bright","fb","☀")
        tog("Hitbox Expand","hbe","🔲")
        sld("Hitbox Size","hbs",1,30,1,function(v)return v end)
        tog("Camlock","camlock","🎥")
        tog("Auto Parry","aparry","🛡")
        tog("Auto Block","ablock","🚫")
        sec("ANTI")
        tog("Anti AFK","aafk","🤖")
        tog("Anti Fling","afling","🛡")
        tog("Anti Void","avoid","🕳")
        tog("Auto Respawn","arespawn","♻")
        sec("EXTRA")
        tog("Hit Sound","hs","🔊")
        tog("Kill Sound","ks","💥")
        tog("Hit Effect","he","✨")
        ddn("Hit Effect Type","he_t",HET)
        tog("Kill Effect","ke","💀")
        ddn("Kill Effect Type","ke_t",HET)
        sec("HIT MARKER")
        tog("Hit Marker","hm","❌")
        ddn("Style","hm_s",HMT)
        sec("BULLET TRACERS")
        tog("Tracers","btr","➡")
        sld("Lifetime","btr_lt",.05,.5,.05,function(v)return string.format("%.2fs",v)end)
    elseif name=="World"then
        sec("LIGHTING")
        tog("No Shadows","noshad","🌑")
        tog("No Fog","fog_en","🌫")
        tog("Ambient Changer","amb","💡")
        tog("Time Changer","time_en","🕐")
        sld("Time","time_v",0,24,.5,function(v)return string.format("%.1fh",v)end)
        sec("ENVIRONMENT")
        tog("No Grass","nograss","🌾")
        tog("No Decals","nodec","🏷")
        tog("No Particles","nopart","✨")
        tog("No Sky","nosky","☁")
        tog("No Clouds","noclouds","☁")
        tog("Gravity","grav","🌍")
        sld("Value","grav_v",0,500,5,function(v)return v end)
        sec("PERFORMANCE")
        tog("FPS Unlock","fps_ul","⚡")
        sld("FPS Cap","fps_cap",30,500,10,function(v)return v.."fps"end)
        tog("Low Graphics","lowg","📉")
        tog("Render Distance","rd_en","🎥")
        sld("Value","rd_v",100,5000,100,function(v)return v end)
        sec("VIEW")
        tog("FOV Changer","fov_ch","🔍")
        sld("FOV","fov_v",40,120,5,function(v)return v.."°"end)
        tog("Third Person","tp","👤")
        tog("Freecam","fcam","🎬")
        sld("Freecam Speed","fcam_s",10,500,10,function(v)return v end)
    elseif name=="FPS"then
        sec("FPS BOOST")
        tog("Unlock FPS","fps_ul","⚡")
        sld("FPS Cap","fps_cap",30,500,10,function(v)return v.."fps"end)
        tog("Low Graphics","lowg","📉")
        tog("No Shadows","noshad","🌑")
        tog("No Grass","nograss","🌾")
        tog("No Decals","nodec","🏷")
        tog("No Particles","nopart","✨")
        tog("No Sky","nosky","☁")
        tog("No Clouds","noclouds","☁")
        tog("No PostFX","nopfx","🎨")
        tog("Render Distance","rd_en","🎥")
        sld("Dist","rd_v",100,5000,100,function(v)return v end)
    elseif name=="Config"then
        sec("THEME")
        ddn("Theme","theme",THEMES)
        sld("FAB Size","fab_s",40,100,2,function(v)return v.."px"end)
        tog("Watermark","wm","💧")
        tog("Notifications","notif","🔔")
        sec("ACTIONS")
        local btn=Instance.new("TextButton",body)
        btn.Size=UDim2.new(1,-6,0,40)
        btn.BackgroundColor3=T.card
        btn.Text="Copy Config"
        btn.TextColor3=T.accent2
        btn.Font=Enum.Font.GothamBold
        btn.TextSize=13
        btn.AutoButtonColor=false
        btn.LayoutOrder=NO()
        Instance.new("UICorner",btn).CornerRadius=UDim.new(0,8)
        local bs2=Instance.new("UIStroke",btn)
        bs2.Color=T.stroke
        bs2.Thickness=1
        btn.MouseButton1Click:Connect(function()
            local lines={"-- Phantom CONFIG"}
            for k,v in pairs(F)do
                local val
                if type(v)=="EnumItem"then val="Enum."..tostring(v):gsub("Enum%.","")
                elseif type(v)=="Color3"then val=string.format("Color3.fromRGB(%d,%d,%d)",v.R*255,v.G*255,v.B*255)
                else val=tostring(v)end
                table.insert(lines,"F."..k.."="..val)
            end
            local txt=table.concat(lines,"\n")
            pcall(function()setclipboard(txt)end)
            nt("Config","Copied "..#lines.." lines",2)
        end)
        sec("INFO")
        local inf=Instance.new("TextLabel",body)
        inf.Size=UDim2.new(1,-6,0,60)
        inf.BackgroundColor3=T.card
        inf.TextColor3=T.textDim
        inf.Font=Enum.Font.Gotham
        inf.TextSize=11
        inf.LayoutOrder=NO()
        inf.Text="Phantom v1.0\n1 на HaLal pozdnyak\nloaded from GitHub"
        Instance.new("UICorner",inf).CornerRadius=UDim.new(0,8)
    end
end

buildTab("Home")

local dg,dgs,dgp
header.InputBegan:Connect(function(i)
    if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then
        dg=true
        dgs=i.Position
        dgp=win.Position
    end
end)
header.InputChanged:Connect(function(i)
    if dg and(i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseMovement)then
        local d=i.Position-dgs
        win.Position=UDim2.new(dgp.X.Scale,dgp.X.Offset+d.X,dgp.Y.Scale,dgp.Y.Offset+d.Y)
    end
end)
header.InputEnded:Connect(function(i)
    if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then
        dg=false
    end
end)

local fg,fgs,fgp
fab.InputBegan:Connect(function(i)
    if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then
        fg=true
        fgs=i.Position
        fgp=fab.Position
    end
end)
fab.InputChanged:Connect(function(i)
    if fg and(i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseMovement)then
        local d=i.Position-fgs
        if d.Magnitude>8 then
            fab.Position=UDim2.new(fgp.X.Scale,fgp.X.Offset+d.X,fgp.Y.Scale,fgp.Y.Offset+d.Y)
        end
    end
end)
fab.InputEnded:Connect(function(i)
    if i.UserInputType==Enum.UserInputType.Touch or i.UserInputType==Enum.UserInputType.MouseButton1 then
        if(i.Position-fgs).Magnitude<8 then
            win.Visible=not win.Visible
        end
        fg=false
    end
end)

nt("Phantom","loaded | 1 на HaLal pozdnyak",4)
print("[Phantom] v1.0 loaded | HaLal pozdnyak")
