.class public final Lcom/codemao/utils/util/CuActivityUtils;
.super Ljava/lang/Object;
.source "CuActivityUtils.java"


# direct methods
.method public static getTopActivity()Landroid/app/Activity;
    .registers 1

    .line 1518
    invoke-static {}, Lcom/codemao/utils/util/CuBridgeUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static isActivityAlive(Landroid/app/Activity;)Z
    .registers 3

    if-eqz p0, :cond_16

    .line 1538
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_14

    .line 1539
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method
