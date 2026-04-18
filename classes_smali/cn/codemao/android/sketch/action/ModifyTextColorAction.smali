.class public Lcn/codemao/android/sketch/action/ModifyTextColorAction;
.super Lcn/codemao/android/sketch/action/SketchAction;
.source "ModifyTextColorAction.java"


# instance fields
.field private final lastColor:I

.field private final nowColor:I


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;II)V
    .registers 4

    .line 21
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    .line 22
    iput p2, p0, Lcn/codemao/android/sketch/action/ModifyTextColorAction;->lastColor:I

    .line 23
    iput p3, p0, Lcn/codemao/android/sketch/action/ModifyTextColorAction;->nowColor:I

    return-void
.end method


# virtual methods
.method public redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 4

    .line 37
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 38
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    check-cast v0, Lcn/codemao/android/sketch/model/StickerTextInfo;

    .line 39
    iget v1, p0, Lcn/codemao/android/sketch/action/ModifyTextColorAction;->nowColor:I

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->updateColor(I)V

    .line 40
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method public undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 4

    .line 28
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 29
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    check-cast v0, Lcn/codemao/android/sketch/model/StickerTextInfo;

    .line 30
    iget v1, p0, Lcn/codemao/android/sketch/action/ModifyTextColorAction;->lastColor:I

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->updateColor(I)V

    .line 31
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method
