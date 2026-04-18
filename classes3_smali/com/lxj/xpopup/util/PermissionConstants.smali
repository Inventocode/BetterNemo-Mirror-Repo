.class public final Lcom/lxj/xpopup/util/PermissionConstants;
.super Ljava/lang/Object;
.source "PermissionConstants.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field private static final GROUP_STORAGE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 23
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lxj/xpopup/util/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    return-void
.end method

.method public static getPermissions(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "permission"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_6

    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_6
    const-string v1, "STORAGE"

    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p0, v1, v0

    return-object v1

    .line 36
    :cond_14
    sget-object p0, Lcom/lxj/xpopup/util/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    return-object p0
.end method
