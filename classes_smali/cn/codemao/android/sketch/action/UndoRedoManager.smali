.class public Lcn/codemao/android/sketch/action/UndoRedoManager;
.super Ljava/lang/Object;
.source "UndoRedoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/sketch/action/UndoRedoManager$UndoRedoStatusListener;
    }
.end annotation


# instance fields
.field private handOffsetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private handScaleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/codemao/android/sketch/action/UndoRedoManager$UndoRedoStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private redoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/action/SketchAction;",
            ">;"
        }
    .end annotation
.end field

.field private sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

.field private undoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/action/SketchAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->undoList:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->redoList:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->listeners:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->handScaleList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->handOffsetList:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    return-void
.end method

.method private clearRedo()V
    .registers 4

    .line 58
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->redoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/action/SketchAction;

    .line 59
    invoke-virtual {v1}, Lcn/codemao/android/sketch/action/SketchAction;->getBaseStickerInfo()Lcn/codemao/android/sketch/model/BaseStickerInfo;

    move-result-object v1

    .line 60
    instance-of v2, v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz v2, :cond_6

    .line 61
    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 62
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 63
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 64
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x0

    .line 65
    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 71
    :cond_38
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->redoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private handOffset(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/RectHelper;FFLcn/codemao/android/sketch/action/SketchAction;)V
    .registers 9

    .line 117
    invoke-virtual {p5}, Lcn/codemao/android/sketch/action/SketchAction;->getBaseStickerInfo()Lcn/codemao/android/sketch/model/BaseStickerInfo;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_42

    .line 120
    instance-of p2, p5, Lcn/codemao/android/sketch/action/CreateDrawsAction;

    if-eqz p2, :cond_99

    .line 121
    move-object p2, p5

    check-cast p2, Lcn/codemao/android/sketch/action/CreateDrawsAction;

    .line 122
    invoke-virtual {p2}, Lcn/codemao/android/sketch/action/CreateDrawsAction;->getStickerFigureInfo()Ljava/util/List;

    move-result-object p2

    .line 123
    iget-object v1, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->handOffsetList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_99

    .line 124
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmDrawingList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 125
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 126
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v2

    invoke-virtual {v2, v1, p3, p4, v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->onCanvasMoved(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFZ)V

    goto :goto_28

    .line 130
    :cond_3c
    iget-object p1, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->handOffsetList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_99

    .line 137
    :cond_42
    iget-object v1, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->handOffsetList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_99

    .line 138
    instance-of v1, p2, Lcn/codemao/android/sketch/model/StickerTextInfo;

    if-eqz v1, :cond_65

    .line 139
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmTextList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_99

    .line 140
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4, v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->onCanvasMoved(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFZ)V

    .line 141
    iget-object p1, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->handOffsetList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_99

    .line 144
    :cond_65
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->isDrawing()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 145
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmDrawingList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_99

    .line 146
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4, v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->onCanvasMoved(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFZ)V

    .line 147
    iget-object p1, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->handOffsetList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_99

    .line 151
    :cond_82
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmFigureEditList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_99

    .line 152
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->onCanvasMoved(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFZ)V

    .line 153
    iget-object p1, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->handOffsetList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_99
    :goto_99
    invoke-virtual {p5, p3, p4}, Lcn/codemao/android/sketch/action/SketchAction;->updateAllOffset(FF)V

    return-void
.end method

.method private handScale(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/RectHelper;FLcn/codemao/android/sketch/action/SketchAction;)V
    .registers 9

    .line 170
    invoke-virtual {p4}, Lcn/codemao/android/sketch/action/SketchAction;->getBaseStickerInfo()Lcn/codemao/android/sketch/model/BaseStickerInfo;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_42

    .line 172
    instance-of p2, p4, Lcn/codemao/android/sketch/action/CreateDrawsAction;

    if-eqz p2, :cond_9c

    .line 173
    move-object p2, p4

    check-cast p2, Lcn/codemao/android/sketch/action/CreateDrawsAction;

    .line 174
    invoke-virtual {p2}, Lcn/codemao/android/sketch/action/CreateDrawsAction;->getStickerFigureInfo()Ljava/util/List;

    move-result-object p2

    .line 175
    iget-object v1, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->handScaleList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 176
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmDrawingList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 177
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 178
    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v3

    invoke-virtual {v3, v2, p3, v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->onCanvasScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FZ)V

    goto :goto_28

    .line 181
    :cond_3c
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->handScaleList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 186
    :cond_42
    iget-object v1, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->handScaleList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 187
    instance-of v1, p2, Lcn/codemao/android/sketch/model/StickerTextInfo;

    if-eqz v1, :cond_68

    .line 188
    move-object v1, p2

    check-cast v1, Lcn/codemao/android/sketch/model/StickerTextInfo;

    .line 189
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmTextList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 190
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->onCanvasScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FZ)V

    .line 193
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->handScaleList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 196
    :cond_68
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->isDrawing()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 197
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmDrawingList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 198
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->onCanvasScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FZ)V

    .line 199
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->handScaleList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 203
    :cond_85
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getmFigureEditList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    .line 205
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcn/codemao/android/sketch/view/paint/IPaint;->onCanvasScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FZ)V

    .line 206
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->handScaleList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_9c
    :goto_9c
    invoke-virtual {p4, p3, p1}, Lcn/codemao/android/sketch/action/SketchAction;->updateAllScaled(FLcn/codemao/android/sketch/view/paint/SketchControll;)V

    return-void
.end method


# virtual methods
.method public addListenUndoRedoStatus(Lcn/codemao/android/sketch/action/UndoRedoManager$UndoRedoStatusListener;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 268
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 269
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->clearRedo()V

    if-eqz p1, :cond_a

    .line 49
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->undoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_a
    invoke-virtual {p0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->notifyStatus()V

    return-void
.end method

.method public hasModify()Z
    .registers 2

    .line 289
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->redoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_13

    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->undoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public notifyStatus()V
    .registers 7

    .line 258
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/action/UndoRedoManager$UndoRedoStatusListener;

    .line 259
    iget-object v2, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->undoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    iget-object v5, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->redoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_28

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    :goto_29
    invoke-interface {v1, v2, v3}, Lcn/codemao/android/sketch/action/UndoRedoManager$UndoRedoStatusListener;->updateStatus(ZZ)V

    goto :goto_6

    :cond_2d
    return-void
.end method

.method public recycle()V
    .registers 4

    .line 273
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->undoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/action/SketchAction;

    .line 274
    invoke-virtual {v1}, Lcn/codemao/android/sketch/action/SketchAction;->getBaseStickerInfo()Lcn/codemao/android/sketch/model/BaseStickerInfo;

    move-result-object v2

    instance-of v2, v2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz v2, :cond_6

    .line 275
    invoke-virtual {v1}, Lcn/codemao/android/sketch/action/SketchAction;->getBaseStickerInfo()Lcn/codemao/android/sketch/model/BaseStickerInfo;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-static {v1}, Lcn/codemao/android/sketch/utils/BitmapUtil;->recycleBitmap(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    goto :goto_6

    .line 279
    :cond_24
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->redoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/action/SketchAction;

    .line 280
    invoke-virtual {v1}, Lcn/codemao/android/sketch/action/SketchAction;->getBaseStickerInfo()Lcn/codemao/android/sketch/model/BaseStickerInfo;

    move-result-object v2

    instance-of v2, v2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz v2, :cond_2a

    .line 281
    invoke-virtual {v1}, Lcn/codemao/android/sketch/action/SketchAction;->getBaseStickerInfo()Lcn/codemao/android/sketch/model/BaseStickerInfo;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-static {v1}, Lcn/codemao/android/sketch/utils/BitmapUtil;->recycleBitmap(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    goto :goto_2a

    :cond_48
    return-void
.end method

.method public redo()V
    .registers 3

    .line 224
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->redoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 225
    :cond_9
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->redoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/action/SketchAction;

    .line 227
    iget-object v1, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/action/SketchAction;->redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 229
    iget-object v1, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->undoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {p0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->notifyStatus()V

    .line 233
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method public reset()V
    .registers 2

    .line 299
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->undoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 300
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->redoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 302
    invoke-virtual {p0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->notifyStatus()V

    return-void
.end method

.method public undo()V
    .registers 3

    .line 241
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->undoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 242
    :cond_9
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->undoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/action/SketchAction;

    .line 244
    iget-object v1, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/action/SketchAction;->undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 246
    iget-object v1, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->redoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {p0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->notifyStatus()V

    .line 250
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->sketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method public updateAllOffset(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/RectHelper;FF)V
    .registers 13

    .line 83
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->handOffsetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->undoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcn/codemao/android/sketch/action/SketchAction;

    .line 86
    invoke-virtual {v7}, Lcn/codemao/android/sketch/action/SketchAction;->needScaleAndTrans()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 87
    invoke-direct/range {v2 .. v7}, Lcn/codemao/android/sketch/action/UndoRedoManager;->handOffset(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/RectHelper;FFLcn/codemao/android/sketch/action/SketchAction;)V

    goto :goto_b

    .line 90
    :cond_27
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->redoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2d
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcn/codemao/android/sketch/action/SketchAction;

    .line 91
    invoke-virtual {v7}, Lcn/codemao/android/sketch/action/SketchAction;->needScaleAndTrans()Z

    move-result v1

    if-eqz v1, :cond_2d

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 92
    invoke-direct/range {v2 .. v7}, Lcn/codemao/android/sketch/action/UndoRedoManager;->handOffset(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/RectHelper;FFLcn/codemao/android/sketch/action/SketchAction;)V

    goto :goto_2d

    :cond_49
    return-void
.end method

.method public updateAllScale(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/RectHelper;F)V
    .registers 7

    .line 103
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->handScaleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->undoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/action/SketchAction;

    .line 106
    invoke-virtual {v1}, Lcn/codemao/android/sketch/action/SketchAction;->needScaleAndTrans()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 107
    invoke-direct {p0, p1, p2, p3, v1}, Lcn/codemao/android/sketch/action/UndoRedoManager;->handScale(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/RectHelper;FLcn/codemao/android/sketch/action/SketchAction;)V

    goto :goto_b

    .line 110
    :cond_21
    iget-object v0, p0, Lcn/codemao/android/sketch/action/UndoRedoManager;->redoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/action/SketchAction;

    .line 111
    invoke-virtual {v1}, Lcn/codemao/android/sketch/action/SketchAction;->needScaleAndTrans()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 112
    invoke-direct {p0, p1, p2, p3, v1}, Lcn/codemao/android/sketch/action/UndoRedoManager;->handScale(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/RectHelper;FLcn/codemao/android/sketch/action/SketchAction;)V

    goto :goto_27

    :cond_3d
    return-void
.end method
