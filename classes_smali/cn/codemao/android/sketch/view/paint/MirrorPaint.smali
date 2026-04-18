.class public Lcn/codemao/android/sketch/view/paint/MirrorPaint;
.super Lcn/codemao/android/sketch/view/paint/IPaint;
.source "MirrorPaint.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;-><init>()V

    return-void
.end method

.method private saveDrawingPath()V
    .registers 1

    return-void
.end method


# virtual methods
.method protected doMotionEventDown(FFLandroid/graphics/Canvas;)V
    .registers 4

    .line 23
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventDown(FFLandroid/graphics/Canvas;)V

    return-void
.end method

.method protected doMotionEventMove(FFLandroid/graphics/Canvas;)V
    .registers 4

    .line 30
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventMove(FFLandroid/graphics/Canvas;)V

    return-void
.end method

.method protected doMotionEventUp(FFLandroid/graphics/Canvas;)V
    .registers 4

    .line 43
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventUp(FFLandroid/graphics/Canvas;)V

    .line 44
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/MirrorPaint;->saveDrawingPath()V

    return-void
.end method

.method public doSomethingBeforeChangeMode(Lcn/codemao/android/sketch/view/paint/IPaint;)V
    .registers 2

    .line 37
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->doSomethingBeforeChangeMode(Lcn/codemao/android/sketch/view/paint/IPaint;)V

    .line 38
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/MirrorPaint;->saveDrawingPath()V

    return-void
.end method

.method public getMode()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 55
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_image_flip:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 60
    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icon_backg:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V
    .registers 5

    return-void
.end method
