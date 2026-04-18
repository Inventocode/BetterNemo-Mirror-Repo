.class public Lcn/codemao/android/sketch/model/SelectTextInfo;
.super Ljava/lang/Object;
.source "SelectTextInfo.java"


# instance fields
.field public curSelectTextIndex:I

.field public curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

.field private showHelper:Z

.field private sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextIndex:I

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcn/codemao/android/sketch/model/SelectTextInfo;->showHelper:Z

    return-void
.end method


# virtual methods
.method public bindSelectTextInfo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcn/codemao/android/sketch/model/SelectTextInfo;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    return-void
.end method

.method public canDrawHelperRect()Z
    .registers 2

    .line 40
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/SelectTextInfo;->hasSelected()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcn/codemao/android/sketch/model/SelectTextInfo;->showHelper:Z

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

    .line 31
    iget-object v0, p0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

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
    iput-object v0, p0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    .line 25
    iget-object v0, p0, Lcn/codemao/android/sketch/model/SelectTextInfo;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    if-eqz v0, :cond_a

    .line 26
    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->updateTextSelectStatus()V

    :cond_a
    return-void
.end method

.method public setShowHelper(Z)V
    .registers 2

    .line 36
    iput-boolean p1, p0, Lcn/codemao/android/sketch/model/SelectTextInfo;->showHelper:Z

    return-void
.end method

.method public updateSelInfo(Lcn/codemao/android/sketch/model/StickerTextInfo;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    .line 19
    iget-object p1, p0, Lcn/codemao/android/sketch/model/SelectTextInfo;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->updateTextSelectStatus()V

    return-void
.end method
