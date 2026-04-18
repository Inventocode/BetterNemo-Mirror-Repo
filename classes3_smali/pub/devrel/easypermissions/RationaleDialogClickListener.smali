.class Lpub/devrel/easypermissions/RationaleDialogClickListener;
.super Ljava/lang/Object;
.source "RationaleDialogClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

.field private mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

.field private mHost:Ljava/lang/Object;

.field private mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;


# direct methods
.method constructor <init>(Lpub/devrel/easypermissions/RationaleDialogFragment;Lpub/devrel/easypermissions/RationaleDialogConfig;Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mHost:Ljava/lang/Object;

    .line 44
    iput-object p2, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    .line 45
    iput-object p3, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    .line 46
    iput-object p4, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    return-void
.end method

.method constructor <init>(Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;Lpub/devrel/easypermissions/RationaleDialogConfig;Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;)V
    .registers 6

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_12

    .line 29
    :cond_e
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    :goto_12
    iput-object p1, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mHost:Ljava/lang/Object;

    .line 31
    iput-object p2, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    .line 32
    iput-object p3, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    .line 33
    iput-object p4, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    return-void
.end method

.method private notifyPermissionDenied()V
    .registers 4

    .line 73
    iget-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v0, :cond_11

    .line 74
    iget-object v1, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    iget v2, v1, Lpub/devrel/easypermissions/RationaleDialogConfig;->requestCode:I

    iget-object v1, v1, Lpub/devrel/easypermissions/RationaleDialogConfig;->permissions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;->onPermissionsDenied(ILjava/util/List;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 51
    iget-object p1, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    iget v0, p1, Lpub/devrel/easypermissions/RationaleDialogConfig;->requestCode:I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_36

    .line 53
    iget-object p1, p1, Lpub/devrel/easypermissions/RationaleDialogConfig;->permissions:[Ljava/lang/String;

    .line 54
    iget-object p2, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    if-eqz p2, :cond_10

    .line 55
    invoke-interface {p2, v0}, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;->onRationaleAccepted(I)V

    .line 57
    :cond_10
    iget-object p2, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mHost:Ljava/lang/Object;

    instance-of v1, p2, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_20

    .line 58
    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-static {p2}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroidx/fragment/app/Fragment;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->directRequestPermissions(I[Ljava/lang/String;)V

    goto :goto_40

    .line 59
    :cond_20
    instance-of v1, p2, Landroid/app/Activity;

    if-eqz v1, :cond_2e

    .line 60
    check-cast p2, Landroid/app/Activity;

    invoke-static {p2}, Lpub/devrel/easypermissions/helper/PermissionHelper;->newInstance(Landroid/app/Activity;)Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lpub/devrel/easypermissions/helper/PermissionHelper;->directRequestPermissions(I[Ljava/lang/String;)V

    goto :goto_40

    .line 62
    :cond_2e
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Host must be an Activity or Fragment!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_36
    iget-object p1, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mRationaleCallbacks:Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;

    if-eqz p1, :cond_3d

    .line 66
    invoke-interface {p1, v0}, Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;->onRationaleDenied(I)V

    .line 68
    :cond_3d
    invoke-direct {p0}, Lpub/devrel/easypermissions/RationaleDialogClickListener;->notifyPermissionDenied()V

    :goto_40
    return-void
.end method
