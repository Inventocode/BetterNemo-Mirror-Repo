.class public Lcn/codemao/android/sketch/view/figure/RoundRectFigure;
.super Lcn/codemao/android/sketch/view/figure/IFigure;
.source "RoundRectFigure.java"


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/figure/IFigure;-><init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V
    .registers 6

    .line 56
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, p3, v0, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getHelpRectVerticlePadding()I
    .registers 2

    const/16 v0, 0xf

    return v0
.end method

.method protected getInitHeight()I
    .registers 2

    const/16 v0, 0x1e

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 49
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_round_rectangle:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 27
    sget v0, Lcn/codemao/android/sketch/R$drawable;->selector_shape_round_rectangle:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
