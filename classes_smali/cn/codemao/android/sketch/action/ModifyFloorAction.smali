.class public Lcn/codemao/android/sketch/action/ModifyFloorAction;
.super Lcn/codemao/android/sketch/action/SketchAction;
.source "ModifyFloorAction.java"


# instance fields
.field private isUp:Z


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;Z)V
    .registers 3

    .line 21
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    .line 22
    iput-boolean p2, p0, Lcn/codemao/android/sketch/action/ModifyFloorAction;->isUp:Z

    return-void
.end method

.method public static downFloor(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/model/BaseStickerInfo;)V
    .registers 4

    .line 58
    invoke-interface {p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmFigureEditList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_19

    .line 60
    invoke-interface {p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmFigureEditList()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 61
    invoke-interface {p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->updateFigureSelectStatus()V

    .line 62
    invoke-interface {p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    :cond_19
    return-void
.end method

.method public static upFloor(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/model/BaseStickerInfo;)V
    .registers 4

    .line 48
    invoke-interface {p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmFigureEditList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 49
    invoke-interface {p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmFigureEditList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-le v0, v1, :cond_23

    if-ltz p1, :cond_23

    .line 50
    invoke-interface {p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmFigureEditList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 51
    invoke-interface {p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->updateFigureSelectStatus()V

    .line 52
    invoke-interface {p0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    :cond_23
    return-void
.end method


# virtual methods
.method public redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 3

    .line 38
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 39
    iget-boolean v0, p0, Lcn/codemao/android/sketch/action/ModifyFloorAction;->isUp:Z

    if-nez v0, :cond_d

    .line 40
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-static {p1, v0}, Lcn/codemao/android/sketch/action/ModifyFloorAction;->downFloor(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    goto :goto_12

    .line 42
    :cond_d
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-static {p1, v0}, Lcn/codemao/android/sketch/action/ModifyFloorAction;->upFloor(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    :goto_12
    return-void
.end method

.method public undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 3

    .line 27
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 28
    iget-boolean v0, p0, Lcn/codemao/android/sketch/action/ModifyFloorAction;->isUp:Z

    if-eqz v0, :cond_d

    .line 29
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-static {p1, v0}, Lcn/codemao/android/sketch/action/ModifyFloorAction;->downFloor(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    goto :goto_12

    .line 31
    :cond_d
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-static {p1, v0}, Lcn/codemao/android/sketch/action/ModifyFloorAction;->upFloor(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    :goto_12
    return-void
.end method
