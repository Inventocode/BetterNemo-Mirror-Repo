.class public Lcn/codemao/android/sketch/model/SelectFigureInfo;
.super Ljava/lang/Object;
.source "SelectFigureInfo.java"


# instance fields
.field public curSelectFigureIndex:I

.field public curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

.field public lastSelectFigureIndex:I

.field private showHelper:Z

.field private sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureIndex:I

    .line 9
    iput v0, p0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->lastSelectFigureIndex:I

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->showHelper:Z

    return-void
.end method


# virtual methods
.method public bindSelectFigureInfo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    return-void
.end method

.method public canDrawHelperRect()Z
    .registers 2

    .line 38
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->hasSelected()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->showHelper:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public hasSelected()Z
    .registers 2

    .line 33
    iget-object v0, p0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 25
    iget-object v0, p0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->updateFigureSelectStatus()V

    return-void
.end method

.method public setShowHelper(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->showHelper:Z

    return-void
.end method

.method public updateSelInfo(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 19
    iget-object p1, p0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->updateFigureSelectStatus()V

    return-void
.end method
