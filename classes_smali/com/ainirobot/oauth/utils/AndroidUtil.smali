.class public Lcom/ainirobot/oauth/utils/AndroidUtil;
.super Ljava/lang/Object;
.source "AndroidUtil.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static getSn()Ljava/lang/String;
    .registers 2

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 16
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0

    .line 18
    :cond_9
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method
