.class public Lcn/codemao/android/sketch/view/paint/ClipPaint;
.super Lcn/codemao/android/sketch/view/paint/IPaint;
.source "ClipPaint.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;-><init>()V

    return-void
.end method

.method private goCutActivity()V
    .registers 4

    .line 55
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getCutoutBitmapInfo()Lcn/codemao/android/sketch/model/CutoutBitmapInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 57
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->setCutBitmapModel(ZLcn/codemao/android/sketch/model/CutoutBitmapInfo;)V

    goto :goto_26

    .line 59
    :cond_13
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/SketchActivity2;

    .line 60
    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_canvas_empty:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/SketchActivity2;->showToast(Ljava/lang/String;)V

    :goto_26
    return-void
.end method


# virtual methods
.method public canAnim()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getMode()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 26
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_image_cutout:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 31
    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icon_clip:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V
    .registers 5

    return-void
.end method

.method public whenChangeMyMode(Landroid/content/Context;Z)V
    .registers 3

    .line 47
    invoke-super {p0, p1, p2}, Lcn/codemao/android/sketch/view/paint/IPaint;->whenChangeMyMode(Landroid/content/Context;Z)V

    if-eqz p2, :cond_8

    .line 50
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/ClipPaint;->goCutActivity()V

    :cond_8
    return-void
.end method
