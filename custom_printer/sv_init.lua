AddCSLuaFile('cl_init.lua')
AddCSLuaFile('shared.lua')

include('shared.lua')

function ENT:SpawnFunction( ply, tr )if !tr.Hit thenreturnendlocal e = ents.Create(ClassName)
    e:SetPos(tr.HitPos+tr.HitNormal*16) 
    e:Spawn()
    e:Activate()

    return e
end

function ENT:Initialize()
	print("ENT INIT")
	self:Model('models/props_c17/consolebox01a.mdl')
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)

	local phys =  self:GetPhysicsObject()

	if (IsValid(phys)) then
		
		phys:Wake()
	end


end