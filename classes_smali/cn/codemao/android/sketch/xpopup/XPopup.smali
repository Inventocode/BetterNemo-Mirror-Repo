.class public Lcn/codemao/android/sketch/xpopup/XPopup;
.super Ljava/lang/Object;
.source "XPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/sketch/xpopup/XPopup$Builder;
    }
.end annotation


# static fields
.field private static animationDuration:I

.field private static shadowBgColor:I

.field public static statusBarShadowColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "#121212"

    .line 32
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    const/16 v0, 0x168

    .line 33
    sput v0, Lcn/codemao/android/sketch/xpopup/XPopup;->animationDuration:I

    const-string v0, "#55000000"

    .line 34
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/codemao/android/sketch/xpopup/XPopup;->statusBarShadowColor:I

    const-string v0, "#9F000000"

    .line 35
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/codemao/android/sketch/xpopup/XPopup;->shadowBgColor:I

    return-void
.end method

.method public static getAnimationDuration()I
    .registers 1

    .line 65
    sget v0, Lcn/codemao/android/sketch/xpopup/XPopup;->animationDuration:I

    return v0
.end method

.method public static getShadowBgColor()I
    .registers 1

    .line 42
    sget v0, Lcn/codemao/android/sketch/xpopup/XPopup;->shadowBgColor:I

    return v0
.end method
