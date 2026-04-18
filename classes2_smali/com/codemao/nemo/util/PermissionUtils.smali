.class public Lcom/codemao/nemo/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# direct methods
.method public static checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 5

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_10

    .line 16
    invoke-static {p0, p1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    return v1

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    return v1
.end method

.method public static getImagesStoragePermissions()[Ljava/lang/String;
    .registers 2

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_d

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 29
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_d
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 31
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0
.end method
