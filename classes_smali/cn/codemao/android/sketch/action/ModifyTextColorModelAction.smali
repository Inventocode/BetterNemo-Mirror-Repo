.class public Lcn/codemao/android/sketch/action/ModifyTextColorModelAction;
.super Lcn/codemao/android/sketch/action/SketchAction;
.source "ModifyTextColorModelAction.java"


# instance fields
.field private final isBG:Z


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;Z)V
    .registers 3

    .line 21
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    .line 22
    iput-boolean p2, p0, Lcn/codemao/android/sketch/action/ModifyTextColorModelAction;->isBG:Z

    return-void
.end method


# virtual methods
.method public redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 4

    .line 40
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 41
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    check-cast v0, Lcn/codemao/android/sketch/model/StickerTextInfo;

    .line 42
    iget-boolean v1, p0, Lcn/codemao/android/sketch/action/ModifyTextColorModelAction;->isBG:Z

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setHasBackground(Z)V

    .line 43
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->changeColor()V

    .line 44
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->updateTextSelectStatus()V

    .line 45
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
    iget-boolean v1, p0, Lcn/codemao/android/sketch/action/ModifyTextColorModelAction;->isBG:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setHasBackground(Z)V

    .line 31
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->changeColor()V

    .line 32
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->updateTextSelectStatus()V

    .line 33
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method
