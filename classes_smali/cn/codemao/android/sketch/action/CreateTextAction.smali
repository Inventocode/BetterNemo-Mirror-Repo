.class public Lcn/codemao/android/sketch/action/CreateTextAction;
.super Lcn/codemao/android/sketch/action/SketchAction;
.source "CreateTextAction.java"


# instance fields
.field private isAdd:Z


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/model/StickerTextInfo;Z)V
    .registers 3

    .line 20
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    .line 21
    iput-boolean p2, p0, Lcn/codemao/android/sketch/action/CreateTextAction;->isAdd:Z

    return-void
.end method


# virtual methods
.method public redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 3

    .line 43
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 45
    iget-boolean v0, p0, Lcn/codemao/android/sketch/action/CreateTextAction;->isAdd:Z

    if-eqz v0, :cond_13

    .line 46
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmTextList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    check-cast v0, Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 48
    :cond_13
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmTextList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_1c
    return-void
.end method

.method public undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 4

    .line 27
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 28
    iget-boolean v0, p0, Lcn/codemao/android/sketch/action/CreateTextAction;->isAdd:Z

    if-eqz v0, :cond_22

    .line 29
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object v0

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    iget-object v1, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    if-ne v0, v1, :cond_18

    .line 30
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectTextInfo;->reset()V

    .line 32
    :cond_18
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmTextList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 34
    :cond_22
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmTextList()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    check-cast v0, Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2d
    return-void
.end method
