.class public Lcom/lxj/xpopup/XPopup;
.super Ljava/lang/Object;
.source "XPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lxj/xpopup/XPopup$Builder;
    }
.end annotation


# static fields
.field private static animationDuration:I

.field public static isLightNavigationBar:I

.field public static isLightStatusBar:I

.field public static longClickPoint:Landroid/graphics/PointF;

.field private static navigationBarColor:I

.field private static primaryColor:I

.field private static shadowBgColor:I

.field private static statusBarBgColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "#121212"

    .line 46
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lxj/xpopup/XPopup;->primaryColor:I

    const/16 v0, 0x12c

    .line 47
    sput v0, Lcom/lxj/xpopup/XPopup;->animationDuration:I

    const-string v0, "#55000000"

    .line 48
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/lxj/xpopup/XPopup;->statusBarBgColor:I

    const/4 v0, 0x0

    .line 49
    sput v0, Lcom/lxj/xpopup/XPopup;->navigationBarColor:I

    const-string v1, "#7F000000"

    .line 50
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/lxj/xpopup/XPopup;->shadowBgColor:I

    .line 51
    sput v0, Lcom/lxj/xpopup/XPopup;->isLightStatusBar:I

    .line 52
    sput v0, Lcom/lxj/xpopup/XPopup;->isLightNavigationBar:I

    const/4 v0, 0x0

    .line 138
    sput-object v0, Lcom/lxj/xpopup/XPopup;->longClickPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public static getAnimationDuration()I
    .registers 1

    .line 131
    sget v0, Lcom/lxj/xpopup/XPopup;->animationDuration:I

    return v0
.end method

.method public static getNavigationBarColor()I
    .registers 1

    .line 88
    sget v0, Lcom/lxj/xpopup/XPopup;->navigationBarColor:I

    return v0
.end method

.method public static getPrimaryColor()I
    .registers 1

    .line 101
    sget v0, Lcom/lxj/xpopup/XPopup;->primaryColor:I

    return v0
.end method

.method public static getShadowBgColor()I
    .registers 1

    .line 62
    sget v0, Lcom/lxj/xpopup/XPopup;->shadowBgColor:I

    return v0
.end method

.method public static getStatusBarBgColor()I
    .registers 1

    .line 75
    sget v0, Lcom/lxj/xpopup/XPopup;->statusBarBgColor:I

    return v0
.end method
