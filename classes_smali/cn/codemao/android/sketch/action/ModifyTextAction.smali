.class public Lcn/codemao/android/sketch/action/ModifyTextAction;
.super Lcn/codemao/android/sketch/action/SketchAction;
.source "ModifyTextAction.java"


# instance fields
.field private final endSize:F

.field private final lastColor:Ljava/lang/String;

.field private final nowColor:Ljava/lang/String;

.field private final startSize:F


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;Ljava/lang/String;Ljava/lang/String;F)V
    .registers 5

    .line 23
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    .line 24
    iput-object p2, p0, Lcn/codemao/android/sketch/action/ModifyTextAction;->lastColor:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcn/codemao/android/sketch/action/ModifyTextAction;->nowColor:Ljava/lang/String;

    .line 26
    iput p4, p0, Lcn/codemao/android/sketch/action/ModifyTextAction;->startSize:F

    .line 27
    check-cast p1, Lcn/codemao/android/sketch/model/StickerTextInfo;

    .line 28
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/action/ModifyTextAction;->endSize:F

    return-void
.end method


# virtual methods
.method public redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 5

    .line 44
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 45
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    check-cast v0, Lcn/codemao/android/sketch/model/StickerTextInfo;

    .line 46
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcn/codemao/android/sketch/action/ModifyTextAction;->endSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 47
    iget-object v1, p0, Lcn/codemao/android/sketch/action/ModifyTextAction;->nowColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setmText(Ljava/lang/String;)V

    .line 48
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method public undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 5

    .line 34
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 35
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    check-cast v0, Lcn/codemao/android/sketch/model/StickerTextInfo;

    .line 36
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcn/codemao/android/sketch/action/ModifyTextAction;->startSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 37
    iget-object v1, p0, Lcn/codemao/android/sketch/action/ModifyTextAction;->lastColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setmText(Ljava/lang/String;)V

    .line 38
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method
