.class public interface abstract Lcn/codemao/android/sketch/view/paint/SketchControll;
.super Ljava/lang/Object;
.source "SketchControll.java"


# virtual methods
.method public abstract addCanvasPenUpdateListener(Lcn/codemao/android/sketch/listener/CanvasPenUpdateListener;)V
.end method

.method public abstract addCanvasScaleListener(Lcn/codemao/android/sketch/listener/CanvasScaleListener;)V
.end method

.method public abstract addCanvasStrawColorLintener(Lcn/codemao/android/sketch/listener/CanvasStrawColorLintener;)V
.end method

.method public abstract addCanvasTranslateListener(Lcn/codemao/android/sketch/listener/CanvasTranslateListener;)V
.end method

.method public abstract addCanvasVariableWather(Lcn/codemao/android/sketch/listener/CanvasVariableWather;)V
.end method

.method public abstract addChangePaintListener(Lcn/codemao/android/sketch/listener/ChangePaintListener;)V
.end method

.method public abstract addFigure(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V
.end method

.method public abstract addTouchDownIntercepter(Lcn/codemao/android/sketch/view/intercepter/TouchDownIntercepter;)V
.end method

.method public abstract changeBGBitmap(Z)V
.end method

.method public abstract changeColor(IZZ)V
.end method

.method public abstract changePaineWidth(I)V
.end method

.method public abstract changePaint(Lcn/codemao/android/sketch/view/paint/IPaint;Z)V
.end method

.method public abstract checkFigureTouchType(FFI)I
.end method

.method public abstract checkReEditTouchType(FFLjava/util/List;Lcn/codemao/android/sketch/model/SelectFigureInfo;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerFigureInfo;",
            ">;",
            "Lcn/codemao/android/sketch/model/SelectFigureInfo;",
            ")I"
        }
    .end annotation
.end method

.method public abstract checkTextTouchType(FF)I
.end method

.method public abstract conformFigureEditList()V
.end method

.method public abstract dropFigureEditList()V
.end method

.method public abstract flip(FZZZ)V
.end method

.method public abstract floorDown()V
.end method

.method public abstract floorUp()V
.end method

.method public abstract getBGColor()I
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCutoutBitmapInfo()Lcn/codemao/android/sketch/model/CutoutBitmapInfo;
.end method

.method public abstract getFigureUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;
.end method

.method public abstract getGlobalUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;
.end method

.method public abstract getPenPaint()Landroid/graphics/Paint;
.end method

.method public abstract getReEditPaint()Lcn/codemao/android/sketch/view/paint/ReEditPaint;
.end method

.method public abstract getRectHelper()Lcn/codemao/android/sketch/RectHelper;
.end method

.method public abstract getScaledSize(I)I
.end method

.method public abstract getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;
.end method

.method public abstract getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;
.end method

.method public abstract getSketchHeight()I
.end method

.method public abstract getSketchWidth()I
.end method

.method public abstract getUnScaledSize(I)I
.end method

.method public abstract getmDrawingList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerFigureInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getmFigureEditList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerFigureInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getmTextList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerTextInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertDrawingList(Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V
.end method

.method public abstract insertTextList(Lcn/codemao/android/sketch/model/StickerTextInfo;)V
.end method

.method public abstract isDrawing()Z
.end method

.method public abstract isStrawColorModel()Z
.end method

.method public abstract listenUndoRedoStatus(Lcn/codemao/android/sketch/action/UndoRedoManager$UndoRedoStatusListener;)V
.end method

.method public abstract redo()V
.end method

.method public abstract refresh()V
.end method

.method public abstract resetPaint()V
.end method

.method public abstract sendReport(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setBGModel()V
.end method

.method public abstract setCutBitmapModel(ZLcn/codemao/android/sketch/model/CutoutBitmapInfo;)V
.end method

.method public abstract setIsTextInputing(Z)V
.end method

.method public abstract setIsTuyaing(Z)V
.end method

.method public abstract setNeedUpdatePen(Z)V
.end method

.method public abstract setOffset(FF)V
.end method

.method public abstract setScale(F)V
.end method

.method public abstract startStrawColor()V
.end method

.method public abstract undo()V
.end method

.method public abstract updateFigureSelectStatus()V
.end method

.method public abstract updateTextSelectStatus()V
.end method
