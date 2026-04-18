.class public Lcn/codemao/android/sketch/action/ModifyBGColorAction;
.super Lcn/codemao/android/sketch/action/SketchAction;
.source "ModifyBGColorAction.java"


# instance fields
.field private backGroundPaint:Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

.field private final lastColor:I

.field private final nowColor:I


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/view/paint/BackGroundPaint;II)V
    .registers 5

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/action/SketchAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    .line 23
    iput p2, p0, Lcn/codemao/android/sketch/action/ModifyBGColorAction;->lastColor:I

    .line 24
    iput p3, p0, Lcn/codemao/android/sketch/action/ModifyBGColorAction;->nowColor:I

    .line 25
    iput-object p1, p0, Lcn/codemao/android/sketch/action/ModifyBGColorAction;->backGroundPaint:Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

    return-void
.end method


# virtual methods
.method public redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 5

    .line 37
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 38
    iget-object v0, p0, Lcn/codemao/android/sketch/action/ModifyBGColorAction;->backGroundPaint:Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

    iget v1, p0, Lcn/codemao/android/sketch/action/ModifyBGColorAction;->nowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->changeBGColor(ILcn/codemao/android/sketch/view/paint/SketchControll;Z)V

    return-void
.end method

.method public undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 5

    .line 30
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 31
    iget-object v0, p0, Lcn/codemao/android/sketch/action/ModifyBGColorAction;->backGroundPaint:Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

    iget v1, p0, Lcn/codemao/android/sketch/action/ModifyBGColorAction;->lastColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->changeBGColor(ILcn/codemao/android/sketch/view/paint/SketchControll;Z)V

    return-void
.end method
