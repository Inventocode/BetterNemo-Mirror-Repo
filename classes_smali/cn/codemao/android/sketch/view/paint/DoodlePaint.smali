.class public Lcn/codemao/android/sketch/view/paint/DoodlePaint;
.super Lcn/codemao/android/sketch/view/paint/IPaint;
.source "DoodlePaint.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;-><init>()V

    return-void
.end method


# virtual methods
.method public getMode()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 22
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_paint_bucket:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 27
    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icon_doodle:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V
    .registers 5

    return-void
.end method

.method public whenChangeMyMode(Landroid/content/Context;Z)V
    .registers 3

    .line 37
    invoke-super {p0, p1, p2}, Lcn/codemao/android/sketch/view/paint/IPaint;->whenChangeMyMode(Landroid/content/Context;Z)V

    .line 38
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->setBGModel()V

    return-void
.end method
