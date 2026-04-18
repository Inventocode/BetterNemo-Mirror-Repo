.class public final Lcom/blankj/utilcode/util/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method public static getColor(I)I
    .registers 2

    .line 32
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method
