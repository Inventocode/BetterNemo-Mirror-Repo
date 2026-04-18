.class public Lcn/codemao/android/sketch/action/ModifyColorAction;
.super Lcn/codemao/android/sketch/action/SketchAction;
.source "ModifyColorAction.java"


# instance fields
.field private final lastColor:I

.field private final nowColor:I


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;II)V
    .registers 4

    .line 20
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    .line 21
    iput p2, p0, Lcn/codemao/android/sketch/action/ModifyColorAction;->lastColor:I

    .line 22
    iput p3, p0, Lcn/codemao/android/sketch/action/ModifyColorAction;->nowColor:I

    return-void
.end method


# virtual methods
.method public redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 4

    .line 35
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 36
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/action/ModifyColorAction;->nowColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method public undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 4

    .line 27
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 28
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/action/ModifyColorAction;->lastColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method
