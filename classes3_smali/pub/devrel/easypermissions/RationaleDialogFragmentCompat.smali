.class public Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "RationaleDialogFragmentCompat.java"


# instance fields
.field private mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

.field private mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;
    .registers 15

    .line 33
    new-instance v0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;

    invoke-direct {v0}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;-><init>()V

    .line 36
    new-instance v8, Lpub/devrel/easypermissions/RationaleDialogConfig;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lpub/devrel/easypermissions/RationaleDialogConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V

    .line 38
    invoke-virtual {v8}, Lpub/devrel/easypermissions/RationaleDialogConfig;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .registers 3

    .line 57
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v0, :cond_19

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    .line 62
    :cond_19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    if-eqz v0, :cond_29

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    .line 67
    :cond_29
    instance-of v0, p1, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v0, :cond_32

    .line 68
    move-object v0, p1

    check-cast v0, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    .line 71
    :cond_32
    instance-of v0, p1, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    if-eqz v0, :cond_3a

    .line 72
    check-cast p1, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    iput-object p1, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    :cond_3a
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5

    const/4 p1, 0x0

    .line 87
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 90
    new-instance p1, Lpub/devrel/easypermissions/RationaleDialogConfig;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p1, v0}, Lpub/devrel/easypermissions/RationaleDialogConfig;-><init>(Landroid/os/Bundle;)V

    .line 91
    new-instance v0, Lpub/devrel/easypermissions/RationaleDialogClickListener;

    iget-object v1, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    invoke-direct {v0, p0, p1, v1, v2}, Lpub/devrel/easypermissions/RationaleDialogClickListener;-><init>(Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;Lpub/devrel/easypermissions/RationaleDialogConfig;Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;)V

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lpub/devrel/easypermissions/RationaleDialogConfig;->createSupportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .registers 2

    .line 78
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    .line 80
    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    return-void
.end method

.method public showAllowingStateLoss(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .registers 4

    .line 48
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 52
    :cond_7
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
