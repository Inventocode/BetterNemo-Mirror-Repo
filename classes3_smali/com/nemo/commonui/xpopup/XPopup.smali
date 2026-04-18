.class public Lcom/nemo/commonui/xpopup/XPopup;
.super Ljava/lang/Object;
.source "XPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemo/commonui/xpopup/XPopup$Builder;
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

    .line 39
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    const/16 v0, 0x168

    .line 40
    sput v0, Lcom/nemo/commonui/xpopup/XPopup;->animationDuration:I

    const-string v0, "#55000000"

    .line 41
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/nemo/commonui/xpopup/XPopup;->statusBarShadowColor:I

    const-string v0, "#9F000000"

    .line 42
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/nemo/commonui/xpopup/XPopup;->shadowBgColor:I

    return-void
.end method

.method public static getAnimationDuration()I
    .registers 1

    .line 72
    sget v0, Lcom/nemo/commonui/xpopup/XPopup;->animationDuration:I

    return v0
.end method

.method public static getShadowBgColor()I
    .registers 1

    .line 49
    sget v0, Lcom/nemo/commonui/xpopup/XPopup;->shadowBgColor:I

    return v0
.end method
