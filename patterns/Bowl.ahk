StepSize := 3
rightDrift := 2
rightOff := 2
downDrift := 1
downOff := 3
digistops:=0
PassiveFDC := 0.3
; ^^^ Passive field drift comp, recommend having it low.
Send("{" RotUp " 4}"), Sleep(50)
one(type:=0, digi:=0) {
    nm_Walk(StepSize*size, BackKey)
    nm_Walk(StepSize*size, RightKey)
    nm_Walk(StepSize*size, FwdKey)
    if(type=1){
        nm_cameraRotation("left", 2), Sleep(50)
        nm_Walk(rightDrift+rightOff, BackKey)
        nm_Walk(rightOff, FwdKey)
        DS(800, digi)
        nm_cameraRotation("right", 2), Sleep(50)
    }
    nm_Walk(StepSize*size*2, LeftKey)
    DS(850, digi)
    nm_cameraRotation("left", 1), Sleep(50)
    nm_Walk(StepSize*size, BackKey, LeftKey)
    if (type=2){
        nm_cameraRotation("left", 1), Sleep(50)
        nm_Walk(downDrift+downOff, LeftKey)
        nm_Walk(downOff, RightKey)
        nm_cameraRotation("right", 1), Sleep(50)
    }
    nm_Walk(StepSize*size, BackKey, RightKey)
    nm_Walk(StepSize*size*2, FwdKey, RightKey)
    nm_cameraRotation("right", 1), Sleep(50)
    nm_Walk(StepSize*size, LeftKey)
    DS(850, digi)
    nm_Walk(StepSize*size, BackKey)
    nm_Walk(StepSize*size*2, RightKey)
    nm_cameraRotation("left", 1), Sleep(50)
    nm_Walk(StepSize*size, FwdKey, RightKey)
    ;DS(850, digi) ; duplicate
    nm_Walk(StepSize*size, FwdKey, LeftKey)
    nm_Walk(StepSize*size, BackKey, LeftKey)
    nm_cameraRotation("right", 1), Sleep(50)
}
two(digi:=0) {
    nm_Walk(StepSize*size+PassiveFDC, BackKey, RightKey)
    DS(850, digi)
    nm_Walk(StepSize*size, FwdKey, RightKey)
    nm_Walk(StepSize*size, FwdKey, LeftKey)
    ;if(type=1){
    ;    nm_cameraRotation("left", 2), Sleep(50)
    ;    nm_Walk(rightDrift+rightOff, BackKey)
    ;    nm_Walk(rightOff, FwdKey)
    ;    nm_cameraRotation("right", 2), Sleep(50)
    ;}
    nm_Walk(StepSize*size*2, BackKey, LeftKey)
    nm_cameraRotation("left", 1), Sleep(50)
    nm_Walk(StepSize*size+PassiveFDC, BackKey)
    ;if (type=2){
    ;    nm_cameraRotation("left", 1), Sleep(50)
    ;    nm_Walk(downDrift+downOff, LeftKey)
    ;    nm_Walk(downOff, RigthKey)
    ;    nm_cameraRotation("right", 1), Sleep(50)
    ;}
    nm_Walk(StepSize*size, RightKey)
    ;DS(850, digi) ; duplicate
    nm_Walk(StepSize*size*2, FwdKey)
    nm_cameraRotation("right", 1), Sleep(50)
    nm_Walk(StepSize*size, BackKey, LeftKey)
    DS(850, digi)
    nm_Walk(StepSize*size+PassiveFDC, BackKey, RightKey)
    nm_Walk(StepSize*size*2, FwdKey, RightKey)
    nm_cameraRotation("left", 1), Sleep(50)
    nm_Walk(StepSize*size, FwdKey)
    DS(850,digi)
    nm_Walk(StepSize*size, LeftKey)
    nm_Walk(StepSize*size+PassiveFDC, BackKey)
    nm_cameraRotation("right", 1), Sleep(50)
}
DS(ms,digi)=>(digistops&&digi)?(HyperSleep(ms),1):0
one(1,1),two(1),one(2),two()
Send("{" RotDown " 4}"), Sleep(50)
; made by dully176 with care
