.class public Lcn/codemao/android/sketch/view/SketchViewV5;
.super Landroid/view/View;
.source "SketchViewV5.java"

# interfaces
.implements Lcn/codemao/android/sketch/view/paint/SketchControll;


# instance fields
.field TouchSlop:I

.field private activity:Lcn/codemao/android/sketch/SketchActivity2;

.field private backGroundPaint:Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

.field private bgBitmap:Landroid/graphics/Bitmap;

.field private canvasHeight:F

.field private canvasPenUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/listener/CanvasPenUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private canvasRect:Landroid/graphics/RectF;

.field private canvasScaleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/listener/CanvasScaleListener;",
            ">;"
        }
    .end annotation
.end field

.field private canvasStrawColorLinteners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/listener/CanvasStrawColorLintener;",
            ">;"
        }
    .end annotation
.end field

.field private canvasTranslateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/listener/CanvasTranslateListener;",
            ">;"
        }
    .end annotation
.end field

.field private canvasVariableWathers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/listener/CanvasVariableWather;",
            ">;"
        }
    .end annotation
.end field

.field private canvasWidth:F

.field private cavasPaint:Landroid/graphics/Paint;

.field private centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

.field private centerX:F

.field private centerY:F

.field private changePaintListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/listener/ChangePaintListener;",
            ">;"
        }
    .end annotation
.end field

.field private curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

.field private currentType:I

.field private drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private figureUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

.field private finalRectF:Landroid/graphics/RectF;

.field private globalUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

.field private initCanvasHeight:F

.field private interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/intercepter/TouchDownIntercepter;",
            ">;"
        }
    .end annotation
.end field

.field private isBGPreviewModel:Z

.field private isCutBitmapModel:Z

.field private isDownConform:Z

.field private isDrawing:Z

.field private isLandscapeStage:Z

.field private isMove:Z

.field private isPickColorModel:Z

.field private isPickMoved:Z

.field private isScaling:Z

.field private isTextInputing:Z

.field private isTuyaing:Z

.field private mDrawingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerFigureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFigureEditList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerFigureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPenBitmap:Landroid/graphics/Bitmap;

.field private mPenCanvas:Landroid/graphics/Canvas;

.field private mStagePaint:Landroid/graphics/Paint;

.field private mTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerTextInfo;",
            ">;"
        }
    .end annotation
.end field

.field private matrix:Landroid/graphics/Matrix;

.field private needUpdatePen:Z

.field private penPaint:Landroid/graphics/Paint;

.field private pickColorPaint:Landroid/graphics/Paint;

.field private pickColorX:F

.field private pickColorY:F

.field private pickColorZoomerPath:Landroid/graphics/Path;

.field private pickZoomerScale:I

.field private reEditBitmap:Landroid/graphics/Bitmap;

.field public reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

.field public reEditPaintRect:Landroid/graphics/RectF;

.field private rectHelper:Lcn/codemao/android/sketch/RectHelper;

.field private selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

.field private selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

.field private shadowPaint:Landroid/graphics/Paint;

.field private srcBitmap:Landroid/graphics/Bitmap;

.field private stageRect:Landroid/graphics/RectF;

.field private startPickColorTime:J

.field private strawColor:I

.field private touchX:F

.field private touchY:F

.field private unitSize:F


# direct methods
.method public static synthetic $r8$lambda$RspR32lnT9IlCNb_dl3QarGrPIE(Lcn/codemao/android/sketch/view/SketchViewV5;)V
    .registers 1

    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->lambda$refresh$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$gk_UdaC7HLesKZlIK6tDpBBfFnI(Lcn/codemao/android/sketch/view/SketchViewV5;Lcn/codemao/android/sketch/model/CutoutBitmapInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/SketchViewV5;->lambda$setCutBitmapModel$2(Lcn/codemao/android/sketch/model/CutoutBitmapInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rZVGxRZTD2QOZhF0ES0leW5NxCw(Lcn/codemao/android/sketch/view/SketchViewV5;)V
    .registers 1

    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->lambda$setCutBitmapModel$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1, p2, v0}, Lcn/codemao/android/sketch/view/SketchViewV5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->TouchSlop:I

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->currentType:I

    .line 83
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isDrawing:Z

    .line 84
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isTuyaing:Z

    .line 87
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->needUpdatePen:Z

    .line 102
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->changePaintListeners:Ljava/util/List;

    .line 103
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasScaleListeners:Ljava/util/List;

    .line 104
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasTranslateListeners:Ljava/util/List;

    .line 105
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasStrawColorLinteners:Ljava/util/List;

    .line 106
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasPenUpdateListeners:Ljava/util/List;

    .line 107
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasVariableWathers:Ljava/util/List;

    .line 108
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->interceptors:Ljava/util/List;

    const/4 p2, 0x2

    .line 114
    iput p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickZoomerScale:I

    .line 140
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isLandscapeStage:Z

    .line 153
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mFigureEditList:Ljava/util/List;

    .line 154
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mDrawingList:Ljava/util/List;

    .line 155
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mTextList:Ljava/util/List;

    .line 157
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->cavasPaint:Landroid/graphics/Paint;

    .line 158
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 159
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->cavasPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 160
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->cavasPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->finalRectF:Landroid/graphics/RectF;

    .line 164
    new-instance p3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    invoke-direct {p3, p1, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 166
    new-instance p1, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->backGroundPaint:Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

    .line 169
    iput p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickZoomerScale:I

    .line 171
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->matrix:Landroid/graphics/Matrix;

    .line 172
    iget p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickZoomerScale:I

    int-to-float p3, p2

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 174
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorZoomerPath:Landroid/graphics/Path;

    .line 178
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    .line 179
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    new-instance p1, Lcn/codemao/android/sketch/model/CenterPointInfo;

    invoke-direct {p1}, Lcn/codemao/android/sketch/model/CenterPointInfo;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    .line 184
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->penPaint:Landroid/graphics/Paint;

    .line 185
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->penPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->penPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 188
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->penPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 190
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->penPaint:Landroid/graphics/Paint;

    const p2, -0x77b015

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->shadowPaint:Landroid/graphics/Paint;

    const/16 p2, 0x99

    .line 194
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 196
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->initStagePaint()V

    .line 198
    new-instance p1, Lcn/codemao/android/sketch/action/UndoRedoManager;

    invoke-direct {p1, p0}, Lcn/codemao/android/sketch/action/UndoRedoManager;-><init>(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->globalUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    .line 199
    new-instance p1, Lcn/codemao/android/sketch/action/UndoRedoManager;

    invoke-direct {p1, p0}, Lcn/codemao/android/sketch/action/UndoRedoManager;-><init>(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->figureUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    return-void
.end method

.method private drawCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .registers 6

    .line 842
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->needUpdatePen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    .line 844
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 848
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v2}, Lcn/codemao/android/sketch/view/SketchViewV5;->drawDrawings(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 852
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1f

    .line 853
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->drawTexts(Landroid/graphics/Canvas;)V

    .line 857
    :cond_1f
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_31

    .line 858
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->drawFigures(Landroid/graphics/Canvas;)V

    goto :goto_31

    .line 862
    :cond_2f
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->needUpdatePen:Z

    .line 867
    :cond_31
    :goto_31
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 869
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->isTuyaing()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 870
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getCurIPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v0

    .line 871
    instance-of v1, v0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    if-eqz v1, :cond_4f

    .line 872
    check-cast v0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    .line 873
    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->getTuyaBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4f
    return-void
.end method

.method private drawCustomCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Z)V
    .registers 12

    .line 785
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    const/4 v0, 0x0

    .line 787
    invoke-virtual {p3, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 789
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->backGroundPaint:Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    move-object v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->drawBG(Landroid/graphics/Canvas;ZLandroid/graphics/RectF;ZZ)V

    .line 791
    iget-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    if-eqz p2, :cond_1a

    .line 792
    invoke-virtual {p2, p1}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->drawMaterial(Landroid/graphics/Canvas;)V

    :cond_1a
    const/4 p2, 0x0

    .line 795
    :goto_1b
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mDrawingList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x1

    if-ge p2, p3, :cond_32

    .line 796
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mDrawingList:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-direct {p0, p1, p3, v0, p4}, Lcn/codemao/android/sketch/view/SketchViewV5;->drawFigure(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1b

    .line 799
    :cond_32
    iget-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    invoke-virtual {p2, v0}, Lcn/codemao/android/sketch/model/SelectTextInfo;->setShowHelper(Z)V

    .line 800
    iget-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    invoke-virtual {p2, v0}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->setShowHelper(Z)V

    .line 802
    iget-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mTextList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_47

    .line 803
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/SketchViewV5;->drawTexts(Landroid/graphics/Canvas;)V

    .line 807
    :cond_47
    iget-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    if-eqz p2, :cond_54

    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result p2

    if-ne p2, p4, :cond_54

    .line 808
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/SketchViewV5;->drawFigures(Landroid/graphics/Canvas;)V

    .line 814
    :cond_54
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    invoke-virtual {p1, p4}, Lcn/codemao/android/sketch/model/SelectTextInfo;->setShowHelper(Z)V

    .line 815
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    invoke-virtual {p1, p4}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->setShowHelper(Z)V

    return-void
.end method

.method private drawDrawings(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .registers 5

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 1100
    :goto_2
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mDrawingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 1101
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mDrawingList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-direct {p0, p1, v1, p2, p2}, Lcn/codemao/android/sketch/view/SketchViewV5;->drawFigure(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_18
    return-void
.end method

.method private drawFigure(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V
    .registers 7

    if-eqz p2, :cond_17

    .line 1107
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_17

    .line 1110
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1112
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcn/codemao/android/sketch/view/paint/IPaint;->onDraw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V

    .line 1114
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_17
    :goto_17
    return-void
.end method

.method private drawFigureHelp(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1021
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->canDrawHelperRect()Z

    move-result v0

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mFigureEditList:Ljava/util/List;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 1022
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/RectHelper;->updateFigureHelpRect(Landroid/graphics/RectF;)V

    .line 1023
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1024
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v2, v2, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1025
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1026
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v0

    const/high16 v1, 0x43340000  # 180.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_92

    .line 1027
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getScaleX()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getScaleY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_b3

    .line 1029
    :cond_92
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getScaleY()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getScaleX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1031
    :goto_b3
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1, v2}, Lcn/codemao/android/sketch/RectHelper;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Canvas;)V

    .line 1034
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcn/codemao/android/sketch/RectHelper;->drawFigureHelp(Landroid/graphics/Canvas;I)V

    .line 1035
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_d2
    return-void
.end method

.method private drawFigures(Landroid/graphics/Canvas;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1010
    :goto_2
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mFigureEditList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 1011
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mFigureEditList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/BaseStickerInfo;

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3, v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->drawFigure(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1013
    :cond_19
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mFigureEditList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_22

    return-void

    .line 1016
    :cond_22
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/SketchViewV5;->drawFigureHelp(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private drawForwardRect(Landroid/graphics/Canvas;)V
    .registers 16

    .line 823
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->stageRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mStagePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 824
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->stageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x1

    cmpg-float v3, v2, v1

    if-gez v3, :cond_34

    .line 825
    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v8}, Lcn/codemao/android/sketch/view/SketchViewV5;->getUnScaledSize(I)I

    move-result v0

    int-to-float v0, v0

    sub-float v4, v1, v0

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v5, v0, v7

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->shadowPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 827
    :cond_34
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->stageRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_57

    .line 828
    invoke-virtual {p0, v8}, Lcn/codemao/android/sketch/view/SketchViewV5;->getUnScaledSize(I)I

    move-result v1

    int-to-float v1, v1

    add-float v9, v0, v1

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    iget v10, v0, Landroid/graphics/RectF;->top:F

    iget v11, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v12, v0, v7

    iget-object v13, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->shadowPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 830
    :cond_57
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->stageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/4 v7, 0x3

    cmpg-float v2, v3, v1

    if-gez v2, :cond_75

    .line 831
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v7}, Lcn/codemao/android/sketch/view/SketchViewV5;->getUnScaledSize(I)I

    move-result v0

    int-to-float v0, v0

    sub-float v5, v1, v0

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->shadowPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 834
    :cond_75
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->stageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_96

    .line 835
    iget v9, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v7}, Lcn/codemao/android/sketch/view/SketchViewV5;->getUnScaledSize(I)I

    move-result v0

    int-to-float v0, v0

    add-float v10, v2, v0

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    iget v11, v0, Landroid/graphics/RectF;->right:F

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v13, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->shadowPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_96
    return-void
.end method

.method private drawPreview(Landroid/graphics/Canvas;)V
    .registers 9

    .line 885
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorX:F

    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorY:F

    invoke-direct {p0, v0, v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->getColorByXY(FF)I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->strawColor:I

    .line 887
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 888
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x1a000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 889
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcn/codemao/android/sketch/view/SketchViewV5;->getUnScaledSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 890
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorX:F

    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorY:F

    const/16 v4, 0x29

    invoke-virtual {p0, v4}, Lcn/codemao/android/sketch/view/SketchViewV5;->getUnScaledSize(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 892
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    const v3, 0x33ffffff

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 893
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorX:F

    iget v4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorY:F

    const/16 v5, 0x28

    invoke-virtual {p0, v5}, Lcn/codemao/android/sketch/view/SketchViewV5;->getUnScaledSize(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 895
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcn/codemao/android/sketch/view/SketchViewV5;->getUnScaledSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 896
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->strawColor:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 897
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorX:F

    iget v4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorY:F

    const/16 v5, 0x25

    invoke-virtual {p0, v5}, Lcn/codemao/android/sketch/view/SketchViewV5;->getUnScaledSize(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 899
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v2}, Lcn/codemao/android/sketch/view/SketchViewV5;->getUnScaledSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 900
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 901
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorX:F

    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorY:F

    const/16 v4, 0x22

    invoke-virtual {p0, v4}, Lcn/codemao/android/sketch/view/SketchViewV5;->getUnScaledSize(I)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 903
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 904
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorX:F

    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorY:F

    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Lcn/codemao/android/sketch/view/SketchViewV5;->getUnScaledSize(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/16 v0, 0x20

    .line 907
    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getUnScaledSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 910
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorZoomerPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 911
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorZoomerPath:Landroid/graphics/Path;

    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorX:F

    iget v4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorY:F

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v4, v0, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 913
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 915
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorZoomerPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 916
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickZoomerScale:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/RectHelper;->getScale()F

    move-result v1

    mul-float v0, v0, v1

    const/4 v1, 0x0

    .line 917
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 918
    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-direct {v1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 919
    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorX:F

    iget v4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorY:F

    invoke-static {v1, v0, v3, v4}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FFF)V

    .line 920
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->backGroundPaint:Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

    invoke-virtual {v3, p1, v2, v1}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->onDraw(Landroid/graphics/Canvas;ZLandroid/graphics/RectF;)V

    .line 922
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 924
    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorX:F

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorY:F

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 926
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    if-eqz v0, :cond_f3

    .line 927
    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->drawMaterial(Landroid/graphics/Canvas;)V

    .line 930
    :cond_f3
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->drawCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 936
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 938
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 939
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x33000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 940
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->getUnScaledSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 941
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorX:F

    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorY:F

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcn/codemao/android/sketch/view/SketchViewV5;->getUnScaledSize(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 942
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 943
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorX:F

    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorY:F

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcn/codemao/android/sketch/view/SketchViewV5;->getUnScaledSize(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTextHelp(Landroid/graphics/Canvas;)V
    .registers 5

    .line 996
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectTextInfo;->canDrawHelperRect()Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mTextList:Ljava/util/List;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 997
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/RectHelper;->updateTextHelpRect(Landroid/graphics/RectF;)V

    .line 998
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 999
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmRotateAngle()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v2, v2, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1000
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v0

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/sketch/RectHelper;->getCenterX()F

    move-result v1

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/sketch/RectHelper;->getCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1001
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcn/codemao/android/sketch/RectHelper;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Canvas;)V

    .line 1002
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/RectHelper;->drawTextHelp(Landroid/graphics/Canvas;)V

    .line 1003
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_77
    return-void
.end method

.method private drawTexts(Landroid/graphics/Canvas;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 982
    :goto_2
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mTextList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 983
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mTextList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-direct {p0, p1, v2, v0, v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->drawFigure(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 985
    :cond_18
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_21

    return-void

    .line 988
    :cond_21
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/SketchViewV5;->drawTextHelp(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getCanvasBitmap(Z)Landroid/graphics/Bitmap;
    .registers 15

    .line 1854
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/RectHelper;->getCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 1855
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/RectHelper;->getCenterY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 1858
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/codemao/android/sketch/RectHelper;->updateAllOffset(FFZZ)V

    .line 1859
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/sketch/RectHelper;->getScale()F

    move-result v2

    .line 1861
    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    const/high16 v6, 0x3f800000  # 1.0f

    div-float v7, v6, v2

    invoke-virtual {v5, v7, v3, v4}, Lcn/codemao/android/sketch/RectHelper;->updateAllScale(FZZ)V

    .line 1863
    iget-boolean v5, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isLandscapeStage:Z

    if-eqz v5, :cond_3a

    const v5, 0x440c8000  # 562.0f

    goto :goto_3c

    :cond_3a
    const/high16 v5, 0x44610000  # 900.0f

    :goto_3c
    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v5, v7

    .line 1865
    new-instance v7, Landroid/graphics/RectF;

    iget-object v8, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    mul-float v8, v8, v5

    iget-object v9, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float v9, v9, v5

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->finalRectF:Landroid/graphics/RectF;

    .line 1867
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    if-eqz p1, :cond_6c

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_6e

    :cond_6c
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_6e
    invoke-static {v7, v8, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1868
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1869
    new-instance v8, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v9, 0x3

    invoke-direct {v8, v4, v9}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1871
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v8

    invoke-virtual {v8, v5, v3, v4}, Lcn/codemao/android/sketch/RectHelper;->updateAllScale(FZZ)V

    .line 1874
    iget-object v8, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v9, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    sub-float/2addr v8, v9

    .line 1875
    iget-object v9, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    iget-object v10, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    sub-float/2addr v9, v10

    .line 1877
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v10

    neg-float v11, v8

    neg-float v12, v9

    invoke-virtual {v10, v11, v12, v3, v4}, Lcn/codemao/android/sketch/RectHelper;->updateAllOffset(FFZZ)V

    .line 1879
    iget-object v10, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    if-eqz v10, :cond_bf

    .line 1880
    new-instance v10, Landroid/graphics/RectF;

    iget-object v11, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    invoke-virtual {v11}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->getStickerFigureInfo()Lcn/codemao/android/sketch/model/StickerFigureInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v10, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaintRect:Landroid/graphics/RectF;

    .line 1883
    :cond_bf
    iget-object v10, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-direct {p0, v7, v10, p1, v4}, Lcn/codemao/android/sketch/view/SketchViewV5;->drawCustomCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Z)V

    .line 1885
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v7

    invoke-virtual {v7, v8, v9, v3, v4}, Lcn/codemao/android/sketch/RectHelper;->updateAllOffset(FFZZ)V

    .line 1887
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v7

    div-float/2addr v6, v5

    invoke-virtual {v7, v6, v3, v4}, Lcn/codemao/android/sketch/RectHelper;->updateAllScale(FZZ)V

    .line 1890
    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v5, v2, v3, v4}, Lcn/codemao/android/sketch/RectHelper;->updateAllScale(FZZ)V

    .line 1891
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/codemao/android/sketch/RectHelper;->updateAllOffset(FFZZ)V

    return-object p1
.end method

.method private getColorByXY(FF)I
    .registers 6

    .line 947
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_14

    .line 948
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    .line 951
    :cond_14
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_28

    .line 952
    iget-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    .line 955
    :cond_28
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenBitmap:Landroid/graphics/Bitmap;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    if-nez v0, :cond_3a

    .line 960
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    if-eqz v1, :cond_3a

    .line 961
    invoke-virtual {v1, p1, p2}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->getColorByXY(FF)I

    move-result v0

    :cond_3a
    if-nez v0, :cond_42

    .line 970
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->backGroundPaint:Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

    invoke-virtual {v0, p1, p2, p0}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->getColorByXy(FFLcn/codemao/android/sketch/view/SketchViewV5;)I

    move-result v0

    .line 976
    :cond_42
    invoke-static {v0}, Lcn/codemao/android/sketch/utils/ColorUtils;->getColorARGB(I)I

    move-result p1

    return p1
.end method

.method private getCutBitmap()Landroid/graphics/Bitmap;
    .registers 14

    .line 1649
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/RectHelper;->getCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 1650
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/RectHelper;->getCenterY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 1653
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3, v3}, Lcn/codemao/android/sketch/RectHelper;->updateAllOffset(FFZZ)V

    .line 1656
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/sketch/RectHelper;->getScale()F

    move-result v2

    .line 1657
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v4

    const/high16 v5, 0x3f800000  # 1.0f

    div-float v6, v5, v2

    invoke-virtual {v4, v6, v3, v3}, Lcn/codemao/android/sketch/RectHelper;->updateAllScale(FZZ)V

    .line 1659
    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->backGroundPaint:Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v6}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->getCutScale(Landroid/graphics/RectF;)F

    move-result v4

    .line 1661
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->finalRectF:Landroid/graphics/RectF;

    .line 1663
    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float v7, v7, v4

    iget-object v8, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    mul-float v8, v8, v4

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1666
    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1667
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1668
    new-instance v8, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-direct {v8, v9, v10}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1671
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v8

    invoke-virtual {v8, v4, v3, v3}, Lcn/codemao/android/sketch/RectHelper;->updateAllScale(FZZ)V

    .line 1680
    iget-object v8, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v9, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    sub-float/2addr v8, v9

    .line 1681
    iget-object v9, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    iget-object v10, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    sub-float/2addr v9, v10

    .line 1684
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v10

    neg-float v11, v8

    neg-float v12, v9

    invoke-virtual {v10, v11, v12, v3, v3}, Lcn/codemao/android/sketch/RectHelper;->updateAllOffset(FFZZ)V

    .line 1686
    iget-object v10, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->finalRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v7, v10, v6, v3}, Lcn/codemao/android/sketch/view/SketchViewV5;->drawCustomCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Z)V

    const/4 v7, 0x0

    .line 1688
    invoke-static {v6, v7}, Lcn/codemao/android/sketch/utils/BitmapUtil;->removeTransparency(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eq v6, v7, :cond_b4

    .line 1691
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1693
    :cond_b4
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v6

    invoke-virtual {v6, v8, v9, v3, v3}, Lcn/codemao/android/sketch/RectHelper;->updateAllOffset(FFZZ)V

    .line 1695
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v6

    div-float/2addr v5, v4

    invoke-virtual {v6, v5, v3, v3}, Lcn/codemao/android/sketch/RectHelper;->updateAllScale(FZZ)V

    .line 1698
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v3}, Lcn/codemao/android/sketch/RectHelper;->updateAllScale(FZZ)V

    .line 1700
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v2

    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {v2, v0, v1, v3, v3}, Lcn/codemao/android/sketch/RectHelper;->updateAllOffset(FFZZ)V

    return-object v7
.end method

.method private init()V
    .registers 7

    .line 511
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isLandscapeStage:Z

    const v1, 0x43bb8000  # 375.0f

    const v2, 0x3f1fdc2c

    if-eqz v0, :cond_31

    const/16 v0, 0xcc

    .line 513
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object v3

    iget-boolean v3, v3, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz v3, :cond_16

    const/16 v0, 0xff

    .line 516
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    int-to-float v0, v0

    invoke-static {v4, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr v3, v0

    int-to-float v0, v3

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasWidth:F

    mul-float v0, v0, v2

    .line 517
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasHeight:F

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->initCanvasHeight:F

    div-float/2addr v0, v1

    .line 518
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->unitSize:F

    goto :goto_46

    .line 520
    :cond_31
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v2

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasWidth:F

    .line 521
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasHeight:F

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->initCanvasHeight:F

    div-float/2addr v0, v1

    .line 522
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->unitSize:F

    .line 525
    :goto_46
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSketchWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasWidth:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    .line 526
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSketchHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasHeight:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 527
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSketchWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasWidth:F

    add-float/2addr v3, v4

    div-float/2addr v3, v1

    .line 528
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSketchHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasHeight:F

    add-float/2addr v4, v5

    div-float/2addr v4, v1

    .line 530
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->stageRect:Landroid/graphics/RectF;

    if-nez v1, :cond_77

    .line 531
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->stageRect:Landroid/graphics/RectF;

    .line 532
    :cond_77
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 534
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->penPaint:Landroid/graphics/Paint;

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->getScaledSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 535
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mStagePaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->getUnScaledSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private initFigureBitmap()V
    .registers 2

    .line 649
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    if-eqz v0, :cond_5

    return-void

    .line 650
    :cond_5
    new-instance v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/SelectFigureInfo;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    .line 651
    invoke-virtual {v0, p0}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->bindSelectFigureInfo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 652
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/RectHelper;->initFigureRect()V

    .line 653
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mFigureEditList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private initRect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 13

    .line 564
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->stageRect:Landroid/graphics/RectF;

    if-nez v0, :cond_5

    return-void

    .line 566
    :cond_5
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    if-nez v0, :cond_10

    .line 567
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    .line 569
    :cond_10
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 571
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->backGroundPaint:Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->stageRect:Landroid/graphics/RectF;

    iget v5, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->currentType:I

    iget-boolean v8, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isLandscapeStage:Z

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v8}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->bindCanvasRect(Landroid/graphics/RectF;Landroid/graphics/RectF;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    .line 573
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->notifyCanvasRectChanged()V

    if-eqz p3, :cond_36

    .line 575
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    if-nez p1, :cond_36

    .line 576
    new-instance p1, Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    invoke-direct {p1, p0}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;-><init>(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    .line 579
    :cond_36
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    if-eqz p1, :cond_41

    .line 580
    iget-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isLandscapeStage:Z

    invoke-virtual {p1, p2, p3, v0}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->bindBitmap(Landroid/graphics/RectF;Landroid/graphics/Bitmap;Z)V

    .line 583
    :cond_41
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    if-nez p1, :cond_50

    .line 584
    new-instance p1, Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcn/codemao/android/sketch/RectHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    .line 586
    :cond_50
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSketchWidth()I

    move-result v2

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSketchHeight()I

    move-result v3

    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->stageRect:Landroid/graphics/RectF;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcn/codemao/android/sketch/RectHelper;->init(Lcn/codemao/android/sketch/view/SketchViewV5;IILandroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 588
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_6c

    .line 589
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    .line 590
    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenBitmap:Landroid/graphics/Bitmap;

    .line 592
    :cond_6c
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSketchWidth()I

    move-result p1

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSketchHeight()I

    move-result p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenBitmap:Landroid/graphics/Bitmap;

    .line 593
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenCanvas:Landroid/graphics/Canvas;

    .line 594
    iget-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 597
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSketchWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000  # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorX:F

    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->centerX:F

    .line 598
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSketchHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorY:F

    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->centerY:F

    .line 601
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->initFigureBitmap()V

    .line 603
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->initTextBitmap()V

    .line 605
    iget-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isBGPreviewModel:Z

    if-eqz p1, :cond_ad

    .line 606
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->updateBGPreviewModel()V

    .line 608
    :cond_ad
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->refresh()V

    return-void
.end method

.method private initStagePaint()V
    .registers 3

    .line 264
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mStagePaint:Landroid/graphics/Paint;

    .line 265
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 266
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mStagePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private initTextBitmap()V
    .registers 2

    .line 660
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    if-eqz v0, :cond_5

    return-void

    .line 661
    :cond_5
    new-instance v0, Lcn/codemao/android/sketch/model/SelectTextInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/SelectTextInfo;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    .line 662
    invoke-virtual {v0, p0}, Lcn/codemao/android/sketch/model/SelectTextInfo;->bindSelectTextInfo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 663
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/RectHelper;->initTextRect()V

    return-void
.end method

.method private synthetic lambda$refresh$0()V
    .registers 1

    .line 1077
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setCutBitmapModel$1()V
    .registers 2

    const/4 v0, 0x4

    .line 1610
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$setCutBitmapModel$2(Lcn/codemao/android/sketch/model/CutoutBitmapInfo;)V
    .registers 5

    .line 1604
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/SketchActivity2;

    .line 1606
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/codemao/android/sketch/activity/ICutActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "cut"

    .line 1607
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 p1, 0x4d3

    .line 1608
    invoke-virtual {v0, v1, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x0

    .line 1609
    invoke-virtual {v0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1610
    new-instance p1, Lcn/codemao/android/sketch/view/SketchViewV5$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcn/codemao/android/sketch/view/SketchViewV5$$ExternalSyntheticLambda1;-><init>(Lcn/codemao/android/sketch/view/SketchViewV5;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private notifyCutBitmapModeChanged()V
    .registers 4

    .line 1592
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasVariableWathers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/listener/CanvasVariableWather;

    .line 1593
    iget-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isCutBitmapModel:Z

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->cutBitmapModelChanged(Z)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method private notifyPenUpdate(Z)V
    .registers 6

    .line 1246
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasPenUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/listener/CanvasPenUpdateListener;

    .line 1247
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->penPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    invoke-interface {v1, v2, v3, p1}, Lcn/codemao/android/sketch/listener/CanvasPenUpdateListener;->onChanged(Landroid/graphics/Paint;Lcn/codemao/android/sketch/view/paint/IPaint;Z)V

    goto :goto_6

    :cond_1a
    return-void
.end method

.method private notifyPickColorModeChanged()V
    .registers 4

    .line 1586
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasVariableWathers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/listener/CanvasVariableWather;

    .line 1587
    iget-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isPickColorModel:Z

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->pickColorModelChanged(Z)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method private notifySizeChange()V
    .registers 4

    .line 489
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->init()V

    .line 490
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->bgBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->srcBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, v2}, Lcn/codemao/android/sketch/view/SketchViewV5;->initRect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 491
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasVariableWathers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/listener/CanvasVariableWather;

    .line 492
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->onReady(Landroid/graphics/RectF;)V

    goto :goto_12

    .line 494
    :cond_24
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->refresh()V

    return-void
.end method

.method private resetSelectFigureInfo()V
    .registers 2

    .line 1429
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->reset()V

    return-void
.end method


# virtual methods
.method public addCanvasPenUpdateListener(Lcn/codemao/android/sketch/listener/CanvasPenUpdateListener;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 1463
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasPenUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1464
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasPenUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public addCanvasScaleListener(Lcn/codemao/android/sketch/listener/CanvasScaleListener;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 704
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasScaleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 705
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasScaleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public addCanvasStrawColorLintener(Lcn/codemao/android/sketch/listener/CanvasStrawColorLintener;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 715
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasStrawColorLinteners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 716
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasStrawColorLinteners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public addCanvasTranslateListener(Lcn/codemao/android/sketch/listener/CanvasTranslateListener;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 710
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasTranslateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 711
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasTranslateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public addCanvasVariableWather(Lcn/codemao/android/sketch/listener/CanvasVariableWather;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 720
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasVariableWathers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 721
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasVariableWathers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public addChangePaintListener(Lcn/codemao/android/sketch/listener/ChangePaintListener;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 698
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->changePaintListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 699
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->changePaintListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public addFigure(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V
    .registers 4

    .line 1281
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->penPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    .line 1283
    invoke-virtual {p0, p1, v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->insertFigureEditList(Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V

    .line 1285
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->updateSelInfo(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    .line 1291
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->refresh()V

    return-void
.end method

.method public addTouchDownIntercepter(Lcn/codemao/android/sketch/view/intercepter/TouchDownIntercepter;)V
    .registers 3

    if-eqz p1, :cond_f

    .line 1457
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1458
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public bindActivity(Lcn/codemao/android/sketch/SketchActivity2;)V
    .registers 2

    .line 2006
    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->activity:Lcn/codemao/android/sketch/SketchActivity2;

    return-void
.end method

.method public bindType(IZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 545
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->currentType:I

    .line 546
    iput-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->bgBitmap:Landroid/graphics/Bitmap;

    .line 547
    iput-object p4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->srcBitmap:Landroid/graphics/Bitmap;

    .line 548
    iput-object p5, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditBitmap:Landroid/graphics/Bitmap;

    .line 549
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isBGPreviewModel:Z

    .line 550
    invoke-direct {p0, p3, p4, p5}, Lcn/codemao/android/sketch/view/SketchViewV5;->initRect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public changeBGBitmap(Z)V
    .registers 4

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    const-string/jumbo v1, "背景预览"

    .line 246
    invoke-virtual {p0, v1, v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 248
    :cond_9
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->backGroundPaint:Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

    invoke-virtual {v0, p1, p0}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->changeBGModel(ZLcn/codemao/android/sketch/view/paint/SketchControll;)V

    return-void
.end method

.method public changeColor(IZZ)V
    .registers 7

    .line 1215
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_11

    .line 1216
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->backGroundPaint:Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->changeBGColor(ILcn/codemao/android/sketch/view/paint/SketchControll;Z)V

    :cond_11
    const-string/jumbo v0, "文字"

    const-string/jumbo v1, "无选中"

    if-eqz p3, :cond_49

    .line 1219
    invoke-static {}, Lcn/codemao/android/sketch/model/ReportParams;->create()Lcn/codemao/android/sketch/model/ReportParams;

    move-result-object p3

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Lcn/codemao/android/sketch/view/paint/IPaint;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectTextInfo;->hasSelected()Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_3a

    :cond_34
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_3a
    :goto_3a
    invoke-virtual {p3, v1}, Lcn/codemao/android/sketch/model/ReportParams;->setMode(Ljava/lang/String;)Lcn/codemao/android/sketch/model/ReportParams;

    move-result-object p3

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/ReportParams;->map()Ljava/util/Map;

    move-result-object p3

    const-string/jumbo v0, "吸色"

    invoke-virtual {p0, v0, p3}, Lcn/codemao/android/sketch/view/SketchViewV5;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_78

    .line 1221
    :cond_49
    invoke-static {}, Lcn/codemao/android/sketch/model/ReportParams;->create()Lcn/codemao/android/sketch/model/ReportParams;

    move-result-object p3

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    if-eqz v2, :cond_6a

    invoke-virtual {v2}, Lcn/codemao/android/sketch/view/paint/IPaint;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectTextInfo;->hasSelected()Z

    move-result v0

    if-nez v0, :cond_64

    goto :goto_6a

    :cond_64
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_6a
    :goto_6a
    invoke-virtual {p3, v1}, Lcn/codemao/android/sketch/model/ReportParams;->setMode(Ljava/lang/String;)Lcn/codemao/android/sketch/model/ReportParams;

    move-result-object p3

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/ReportParams;->map()Ljava/util/Map;

    move-result-object p3

    const-string/jumbo v0, "选色"

    invoke-virtual {p0, v0, p3}, Lcn/codemao/android/sketch/view/SketchViewV5;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 1224
    :goto_78
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->penPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1225
    invoke-direct {p0, p2}, Lcn/codemao/android/sketch/view/SketchViewV5;->notifyPenUpdate(Z)V

    return-void
.end method

.method public changePaineWidth(I)V
    .registers 5

    .line 1232
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->penPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcn/codemao/android/sketch/view/SketchViewV5;->getScaledSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1233
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    if-eqz v0, :cond_46

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "大小"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/codemao/android/sketch/model/ReportParams;->create()Lcn/codemao/android/sketch/model/ReportParams;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcn/codemao/android/sketch/model/ReportParams;->setSize(Ljava/lang/String;)Lcn/codemao/android/sketch/model/ReportParams;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/ReportParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcn/codemao/android/sketch/view/SketchViewV5;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    :cond_46
    return-void
.end method

.method public changePaint(Lcn/codemao/android/sketch/view/paint/IPaint;Z)V
    .registers 4

    .line 1124
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    if-eqz v0, :cond_9

    if-eq v0, p1, :cond_9

    .line 1125
    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->doSomethingBeforeChangeMode(Lcn/codemao/android/sketch/view/paint/IPaint;)V

    .line 1127
    :cond_9
    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    .line 1129
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/SelectTextInfo;->hasSelected()Z

    move-result p1

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_1c

    .line 1130
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/SelectTextInfo;->reset()V

    .line 1134
    :cond_1c
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    if-eqz p1, :cond_45

    .line 1135
    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 1136
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->penPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->bindPaint(Landroid/graphics/Paint;)V

    .line 1138
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    instance-of v0, p1, Lcn/codemao/android/sketch/view/paint/EreaserPaint;

    if-eqz v0, :cond_3c

    .line 1139
    check-cast p1, Lcn/codemao/android/sketch/view/paint/EreaserPaint;

    .line 1140
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->bindReEditPaint(Lcn/codemao/android/sketch/view/paint/ReEditPaint;)V

    .line 1143
    :cond_3c
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcn/codemao/android/sketch/view/paint/IPaint;->whenChangeMyMode(Landroid/content/Context;Z)V

    .line 1149
    :cond_45
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    if-eqz p1, :cond_56

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_56

    .line 1150
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->figureUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/action/UndoRedoManager;->notifyStatus()V

    goto :goto_5b

    .line 1152
    :cond_56
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->globalUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/action/UndoRedoManager;->notifyStatus()V

    .line 1156
    :goto_5b
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->changePaintListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_61
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_73

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/codemao/android/sketch/listener/ChangePaintListener;

    .line 1157
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    invoke-interface {p2, v0}, Lcn/codemao/android/sketch/listener/ChangePaintListener;->changePaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V

    goto :goto_61

    .line 1160
    :cond_73
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public checkFigureTouchType(FFI)I
    .registers 10

    .line 1476
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mFigureEditList:Ljava/util/List;

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcn/codemao/android/sketch/RectHelper;->getFigureTouchType(FFILjava/util/List;Lcn/codemao/android/sketch/model/SelectFigureInfo;)I

    move-result p1

    return p1
.end method

.method public checkReEditTouchType(FFLjava/util/List;Lcn/codemao/android/sketch/model/SelectFigureInfo;)I
    .registers 6
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

    .line 1488
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/codemao/android/sketch/RectHelper;->getReEditTouchType(FFLjava/util/List;Lcn/codemao/android/sketch/model/SelectFigureInfo;)I

    move-result p1

    return p1
.end method

.method public checkTextTouchType(FF)I
    .registers 9

    .line 1469
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mTextList:Ljava/util/List;

    iget-boolean v4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isTextInputing:Z

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcn/codemao/android/sketch/RectHelper;->getTextTouchType(FFLjava/util/List;ZLcn/codemao/android/sketch/model/SelectTextInfo;)I

    move-result p1

    return p1
.end method

.method public conformFigureEditList()V
    .registers 5

    const-string/jumbo v0, "图形保存"

    const/4 v1, 0x0

    .line 1390
    invoke-virtual {p0, v0, v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 1391
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getmFigureEditList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1395
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1f

    .line 1396
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2, v3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setDrawing(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1409
    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_28

    .line 1410
    invoke-virtual {p0, v0, v3}, Lcn/codemao/android/sketch/view/SketchViewV5;->insertDrawingLists(Ljava/util/List;Z)V

    .line 1417
    :cond_28
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1419
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->resetSelectFigureInfo()V

    .line 1420
    invoke-virtual {p0, v3}, Lcn/codemao/android/sketch/view/SketchViewV5;->setNeedUpdatePen(Z)V

    .line 1421
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->figureUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->reset()V

    .line 1422
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->globalUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->notifyStatus()V

    .line 1424
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->resetPaint()V

    .line 1425
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->refresh()V

    return-void
.end method

.method public destroy()V
    .registers 3

    .line 1963
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mFigureEditList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 1964
    invoke-static {v1}, Lcn/codemao/android/sketch/utils/BitmapUtil;->recycleBitmap(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    goto :goto_6

    .line 1967
    :cond_16
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->globalUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    if-eqz v0, :cond_1d

    .line 1968
    invoke-virtual {v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->recycle()V

    .line 1970
    :cond_1d
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1971
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1973
    :cond_2c
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->bgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1974
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->bgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1976
    :cond_3b
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->srcBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 1977
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->srcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4a
    return-void
.end method

.method public dropFigureEditList()V
    .registers 3

    const-string/jumbo v0, "图形取消"

    const/4 v1, 0x0

    .line 1376
    invoke-virtual {p0, v0, v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 1377
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getmFigureEditList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1379
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->resetSelectFigureInfo()V

    const/4 v0, 0x1

    .line 1380
    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->setNeedUpdatePen(Z)V

    .line 1381
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->resetPaint()V

    .line 1382
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->refresh()V

    .line 1384
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->figureUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->reset()V

    .line 1385
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->globalUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->notifyStatus()V

    return-void
.end method

.method public flip(FZZZ)V
    .registers 6

    .line 1499
    iget-object p4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->backGroundPaint:Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

    invoke-virtual {p4, p1, p2, p3, p0}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->flip(FZZLcn/codemao/android/sketch/view/SketchViewV5;)V

    .line 1501
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->notifyCanvasRectChanged()V

    .line 1504
    iget-object p4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mDrawingList:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_e
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 1505
    invoke-virtual {v0, p1, p2, p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->flip(FZZ)V

    goto :goto_e

    .line 1509
    :cond_1e
    iget-object p4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mTextList:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_24
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/StickerTextInfo;

    .line 1510
    invoke-virtual {v0, p1, p2, p3}, Lcn/codemao/android/sketch/model/StickerTextInfo;->flip(FZZ)V

    goto :goto_24

    .line 1514
    :cond_34
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->refresh()V

    return-void
.end method

.method public floorDown()V
    .registers 5

    .line 1205
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->hasSelected()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    const-string/jumbo v1, "图层下移"

    .line 1206
    invoke-virtual {p0, v1, v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 1207
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object v0

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-static {p0, v0}, Lcn/codemao/android/sketch/action/ModifyFloorAction;->downFloor(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    .line 1208
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->figureUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    new-instance v1, Lcn/codemao/android/sketch/action/ModifyFloorAction;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object v2

    iget-object v2, v2, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/codemao/android/sketch/action/ModifyFloorAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;Z)V

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    :cond_2b
    return-void
.end method

.method public floorUp()V
    .registers 5

    .line 1196
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->hasSelected()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    const-string/jumbo v1, "图层上移"

    .line 1197
    invoke-virtual {p0, v1, v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 1198
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object v0

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-static {p0, v0}, Lcn/codemao/android/sketch/action/ModifyFloorAction;->upFloor(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    .line 1199
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->figureUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    new-instance v1, Lcn/codemao/android/sketch/action/ModifyFloorAction;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move-result-object v2

    iget-object v2, v2, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcn/codemao/android/sketch/action/ModifyFloorAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;Z)V

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    :cond_2b
    return-void
.end method

.method public getBGColor()I
    .registers 2

    .line 1623
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->backGroundPaint:Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->getBGColor()I

    move-result v0

    return v0
.end method

.method public getBitmapBackGround()Landroid/graphics/Bitmap;
    .registers 15

    .line 1741
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/RectHelper;->getCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 1742
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/RectHelper;->getCenterY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 1745
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/codemao/android/sketch/RectHelper;->updateAllOffset(FFZZ)V

    .line 1747
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/sketch/RectHelper;->getScale()F

    move-result v2

    .line 1749
    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    const/high16 v6, 0x3f800000  # 1.0f

    div-float v7, v6, v2

    invoke-virtual {v5, v7, v3, v4}, Lcn/codemao/android/sketch/RectHelper;->updateAllScale(FZZ)V

    .line 1752
    iget-boolean v5, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isLandscapeStage:Z

    if-eqz v5, :cond_3a

    const v5, 0x440c8000  # 562.0f

    goto :goto_3c

    :cond_3a
    const/high16 v5, 0x44610000  # 900.0f

    :goto_3c
    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v5, v7

    .line 1754
    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v7, v5, v3, v4}, Lcn/codemao/android/sketch/RectHelper;->updateAllScale(FZZ)V

    .line 1756
    new-instance v7, Landroid/graphics/RectF;

    iget-object v8, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v9, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->finalRectF:Landroid/graphics/RectF;

    .line 1758
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1759
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1760
    new-instance v9, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v10, 0x3

    invoke-direct {v9, v4, v10}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1763
    iget-object v9, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    iget-object v10, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    sub-float/2addr v9, v10

    .line 1764
    iget-object v10, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    iget-object v11, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    sub-float/2addr v10, v11

    .line 1767
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v11

    neg-float v12, v9

    neg-float v13, v10

    invoke-virtual {v11, v12, v13, v3, v4}, Lcn/codemao/android/sketch/RectHelper;->updateAllOffset(FFZZ)V

    .line 1769
    iget-object v11, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-direct {p0, v8, v11, v7, v4}, Lcn/codemao/android/sketch/view/SketchViewV5;->drawCustomCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Bitmap;Z)V

    .line 1771
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v8

    invoke-virtual {v8, v9, v10, v3, v4}, Lcn/codemao/android/sketch/RectHelper;->updateAllOffset(FFZZ)V

    .line 1773
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v8

    div-float/2addr v6, v5

    invoke-virtual {v8, v6, v3, v4}, Lcn/codemao/android/sketch/RectHelper;->updateAllScale(FZZ)V

    .line 1775
    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v5, v2, v3, v4}, Lcn/codemao/android/sketch/RectHelper;->updateAllScale(FZZ)V

    .line 1777
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcn/codemao/android/sketch/RectHelper;->updateAllOffset(FFZZ)V

    .line 1778
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->refresh()V

    return-object v7
.end method

.method public getCanvasActor()Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x1

    .line 1831
    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getCanvasBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1833
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaintRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    .line 1834
    invoke-static {v0}, Lcn/codemao/android/sketch/utils/BitmapUtil;->removeTransparency(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 1836
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    .line 1838
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaintRect:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2}, Lcn/codemao/android/sketch/utils/BitmapUtil;->removeTransparency(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_24

    .line 1841
    :cond_20
    invoke-static {v0}, Lcn/codemao/android/sketch/utils/BitmapUtil;->removeTransparency(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_24
    :goto_24
    if-eq v0, v1, :cond_2f

    .line 1845
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 1846
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2f
    return-object v1
.end method

.method public getCanvasBackGround()Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x1

    .line 1824
    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getCanvasBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1825
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-object v0
.end method

.method public getCanvasRect()Landroid/graphics/RectF;
    .registers 2

    .line 478
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getCanvasScaleListeners()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/listener/CanvasScaleListener;",
            ">;"
        }
    .end annotation

    .line 1917
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasScaleListeners:Ljava/util/List;

    return-object v0
.end method

.method public getCenterPoint()Lcn/codemao/android/sketch/model/CenterPointInfo;
    .registers 2

    .line 1118
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    return-object v0
.end method

.method public getCurIPaint()Lcn/codemao/android/sketch/view/paint/IPaint;
    .registers 2

    .line 256
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    return-object v0
.end method

.method public getCurPaint()Landroid/graphics/Paint;
    .registers 2

    .line 674
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->penPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getCurrentType()I
    .registers 2

    .line 260
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->currentType:I

    return v0
.end method

.method public getCutoutBitmapInfo()Lcn/codemao/android/sketch/model/CutoutBitmapInfo;
    .registers 6

    .line 1518
    new-instance v0, Lcn/codemao/android/sketch/model/CutoutBitmapInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/CutoutBitmapInfo;-><init>()V

    .line 1519
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getCutBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_d

    const/4 v0, 0x0

    return-object v0

    :cond_d
    const/high16 v2, 0x3f800000  # 1.0f

    .line 1524
    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/model/CutoutBitmapInfo;->setScale(F)V

    .line 1525
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->finalRectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    .line 1526
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/model/CutoutBitmapInfo;->setCutOutX(F)V

    .line 1527
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->finalRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/model/CutoutBitmapInfo;->setCutOutY(F)V

    .line 1528
    invoke-static {}, Lcn/codemao/android/sketch/utils/EditorBitmapCache;->getInstance()Lcn/codemao/android/sketch/utils/EditorBitmapCache;

    move-result-object v2

    const-string v3, "INPUT_BITMAP"

    invoke-virtual {v2, v3, v1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getFigureUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;
    .registers 2

    .line 203
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->figureUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    return-object v0
.end method

.method public getGlobalUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;
    .registers 2

    .line 252
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->globalUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    return-object v0
.end method

.method public getPenPaint()Landroid/graphics/Paint;
    .registers 2

    .line 1265
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->penPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getReEditPaint()Lcn/codemao/android/sketch/view/paint/ReEditPaint;
    .registers 2

    .line 1269
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    return-object v0
.end method

.method public getRectHelper()Lcn/codemao/android/sketch/RectHelper;
    .registers 2

    .line 679
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    return-object v0
.end method

.method public getScaledSize(I)I
    .registers 4

    .line 1557
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    if-nez v0, :cond_9

    .line 1558
    invoke-virtual {p0, p1}, Lcn/codemao/android/sketch/view/SketchViewV5;->getUnScaledSize(I)I

    move-result p1

    return p1

    :cond_9
    int-to-float p1, p1

    .line 1560
    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->unitSize:F

    mul-float p1, p1, v1

    invoke-virtual {v0}, Lcn/codemao/android/sketch/RectHelper;->getScale()F

    move-result v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getSelectFigureInfo()Lcn/codemao/android/sketch/model/SelectFigureInfo;
    .registers 2

    .line 1536
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    return-object v0
.end method

.method public getSelectTextInfo()Lcn/codemao/android/sketch/model/SelectTextInfo;
    .registers 2

    .line 1541
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    return-object v0
.end method

.method public getSketchHeight()I
    .registers 3

    .line 1957
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/ScreenUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 1958
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_19

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v1, v0, :cond_15

    goto :goto_19

    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    :cond_19
    :goto_19
    return v0
.end method

.method public getSketchWidth()I
    .registers 3

    .line 1951
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 1952
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_19

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_15

    goto :goto_19

    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_19
    :goto_19
    return v0
.end method

.method public getStageRect()Landroid/graphics/RectF;
    .registers 2

    .line 278
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->stageRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getUnScaledSize(I)I
    .registers 3

    int-to-float p1, p1

    .line 1549
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->unitSize:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getmDrawingList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerFigureInfo;",
            ">;"
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mDrawingList:Ljava/util/List;

    return-object v0
.end method

.method public getmFigureEditList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerFigureInfo;",
            ">;"
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mFigureEditList:Ljava/util/List;

    return-object v0
.end method

.method public getmTextList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerTextInfo;",
            ">;"
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mTextList:Ljava/util/List;

    return-object v0
.end method

.method public hasModify()Z
    .registers 2

    .line 2002
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->globalUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->hasModify()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mFigureEditList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_23

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mDrawingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_23

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method public insertDrawingList(Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 1337
    :cond_3
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPaintType()I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_29

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBindObject()Lcn/codemao/android/sketch/model/StickerFigureInfo;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    if-eqz v0, :cond_29

    .line 1338
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mDrawingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_3b

    .line 1340
    iget-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->globalUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    new-instance v0, Lcn/codemao/android/sketch/action/CreateDrawWhenReEdit;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    invoke-direct {v0, p1, v1}, Lcn/codemao/android/sketch/action/CreateDrawWhenReEdit;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;Lcn/codemao/android/sketch/view/paint/ReEditPaint;)V

    invoke-virtual {p2, v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    goto :goto_3b

    .line 1343
    :cond_29
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mDrawingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_3b

    .line 1345
    iget-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->globalUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    new-instance v0, Lcn/codemao/android/sketch/action/CreateDrawAction;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcn/codemao/android/sketch/action/CreateDrawAction;-><init>(Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V

    invoke-virtual {p2, v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public insertDrawingLists(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerFigureInfo;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 1355
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mDrawingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    if-eqz p2, :cond_14

    .line 1358
    iget-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->globalUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    new-instance v0, Lcn/codemao/android/sketch/action/CreateDrawsAction;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcn/codemao/android/sketch/action/CreateDrawsAction;-><init>(Ljava/util/List;Z)V

    invoke-virtual {p2, v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    :cond_14
    return-void
.end method

.method public insertFigureEditList(Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V
    .registers 5

    if-eqz p1, :cond_7

    .line 1366
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mFigureEditList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz p2, :cond_14

    .line 1369
    iget-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->figureUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    new-instance v0, Lcn/codemao/android/sketch/action/CreateFigureAction;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcn/codemao/android/sketch/action/CreateFigureAction;-><init>(Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V

    invoke-virtual {p2, v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    :cond_14
    return-void
.end method

.method public insertTextList(Lcn/codemao/android/sketch/model/StickerTextInfo;)V
    .registers 5

    .line 625
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->penPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 626
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->updateRect()V

    .line 627
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mTextList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/model/SelectTextInfo;->updateSelInfo(Lcn/codemao/android/sketch/model/StickerTextInfo;)V

    .line 629
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->globalUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    new-instance v1, Lcn/codemao/android/sketch/action/CreateTextAction;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcn/codemao/android/sketch/action/CreateTextAction;-><init>(Lcn/codemao/android/sketch/model/StickerTextInfo;Z)V

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    .line 630
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isTextInputing:Z

    .line 632
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isDrawing()Z
    .registers 2

    .line 1991
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isDrawing:Z

    return v0
.end method

.method public isLandscapeStage()Z
    .registers 2

    .line 498
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isLandscapeStage:Z

    return v0
.end method

.method public isStrawColorModel()Z
    .registers 2

    .line 1632
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isPickColorModel:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isBGPreviewModel:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public isTuyaing()Z
    .registers 2

    .line 1083
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isTuyaing:Z

    return v0
.end method

.method public listenUndoRedoStatus(Lcn/codemao/android/sketch/action/UndoRedoManager$UndoRedoStatusListener;)V
    .registers 3

    .line 1173
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->globalUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addListenUndoRedoStatus(Lcn/codemao/android/sketch/action/UndoRedoManager$UndoRedoStatusListener;)V

    .line 1174
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->figureUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addListenUndoRedoStatus(Lcn/codemao/android/sketch/action/UndoRedoManager$UndoRedoStatusListener;)V

    return-void
.end method

.method public needCreateBitmap(Z)Z
    .registers 5

    .line 1444
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_47

    .line 1445
    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->getStickerFigureInfo()Lcn/codemao/android/sketch/model/StickerFigureInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getScale()F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_45

    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->getStickerFigureInfo()Lcn/codemao/android/sketch/model/StickerFigureInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_45

    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mDrawingList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_45

    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mTextList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_45

    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->getStickerFigureInfo()Lcn/codemao/android/sketch/model/StickerFigureInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result p1

    if-nez p1, :cond_46

    :cond_45
    const/4 v1, 0x1

    :cond_46
    return v1

    :cond_47
    if-eqz p1, :cond_63

    .line 1449
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->backGroundPaint:Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->hasChangeBG()Z

    move-result p1

    if-nez p1, :cond_61

    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mDrawingList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_61

    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mTextList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_62

    :cond_61
    const/4 v1, 0x1

    :cond_62
    return v1

    :cond_63
    return v2
.end method

.method public notifyCanvasRectChanged()V
    .registers 4

    .line 229
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasVariableWathers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/listener/CanvasVariableWather;

    .line 230
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->onCanvasRectChanged(Landroid/graphics/RectF;)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method public declared-synchronized notifyCanvasScale(F)V
    .registers 5

    monitor-enter p0

    .line 726
    :try_start_1
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasScaleListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/listener/CanvasScaleListener;

    .line 727
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-interface {v1, p1, v2}, Lcn/codemao/android/sketch/listener/CanvasScaleListener;->onScale(FLandroid/graphics/RectF;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    goto :goto_7

    .line 729
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized notifyCanvasTranslate(FF)V
    .registers 6

    monitor-enter p0

    .line 739
    :try_start_1
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasTranslateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/listener/CanvasTranslateListener;

    .line 740
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-interface {v1, p1, p2, v2}, Lcn/codemao/android/sketch/listener/CanvasTranslateListener;->onTranslate(FFLandroid/graphics/RectF;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    goto :goto_7

    .line 742
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public notifySaveDrawingPath()V
    .registers 2

    .line 640
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    if-eqz v0, :cond_7

    .line 641
    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->doSomethingBeforeScale()V

    :cond_7
    return-void
.end method

.method public declared-synchronized notifyStrawColor(I)V
    .registers 4

    monitor-enter p0

    .line 732
    :try_start_1
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasStrawColorLinteners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/listener/CanvasStrawColorLintener;

    .line 733
    invoke-interface {v1, p1}, Lcn/codemao/android/sketch/listener/CanvasStrawColorLintener;->onStrawColor(I)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    goto :goto_7

    .line 735
    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .line 747
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 749
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    if-nez v0, :cond_a

    return-void

    .line 751
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_23

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 752
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    goto :goto_37

    :cond_23
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 754
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 757
    :goto_37
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->backGroundPaint:Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

    iget-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isPickColorModel:Z

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, v2, v3}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->onDraw(Landroid/graphics/Canvas;ZLandroid/graphics/RectF;)V

    .line 760
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    if-eqz v1, :cond_47

    .line 761
    invoke-virtual {v1, p1}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->drawMaterial(Landroid/graphics/Canvas;)V

    .line 764
    :cond_47
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->drawCanvas(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 766
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    if-eqz v1, :cond_55

    .line 767
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v1, p1, v2}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->drawHelper(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/RectHelper;)V

    .line 770
    :cond_55
    iget-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isPickColorModel:Z

    if-eqz v1, :cond_5c

    .line 771
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/SketchViewV5;->drawPreview(Landroid/graphics/Canvas;)V

    .line 774
    :cond_5c
    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->currentType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_64

    .line 776
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/SketchViewV5;->drawForwardRect(Landroid/graphics/Canvas;)V

    .line 779
    :cond_64
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, v2}, Lcn/codemao/android/sketch/RectHelper;->drawTranslateRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 781
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 483
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 485
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->notifySizeChange()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 288
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 291
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-boolean v4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isTextInputing:Z

    invoke-virtual {v3, p1, v4}, Lcn/codemao/android/sketch/RectHelper;->checkScale(Landroid/view/MotionEvent;Z)V

    .line 293
    iget-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isScaling:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2f

    iget-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isPickColorModel:Z

    if-nez v3, :cond_2f

    iget-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isBGPreviewModel:Z

    if-nez v3, :cond_2f

    .line 294
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v1}, Lcn/codemao/android/sketch/RectHelper;->handleScale(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V

    goto/16 :goto_1bf

    :cond_2f
    const/4 v3, 0x0

    if-eqz v0, :cond_147

    if-eq v0, v4, :cond_105

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_105

    goto/16 :goto_1bf

    .line 347
    :cond_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->touchX:F

    sub-float/2addr v0, v1

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->touchY:F

    sub-float/2addr v1, v2

    .line 349
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 350
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v2, v2, v2

    mul-float v5, v5, v5

    add-float/2addr v2, v5

    .line 354
    iget v5, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->TouchSlop:I

    mul-int v5, v5, v5

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_61

    const/4 v3, 0x1

    .line 356
    :cond_61
    iget-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isMove:Z

    if-nez v2, :cond_69

    if-nez v3, :cond_69

    goto/16 :goto_1bf

    .line 360
    :cond_69
    iput-boolean v4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isMove:Z

    .line 361
    iget-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isBGPreviewModel:Z

    if-eqz v2, :cond_71

    goto/16 :goto_1bf

    .line 365
    :cond_71
    iget-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isPickColorModel:Z

    if-eqz v2, :cond_dd

    .line 372
    iput-boolean v4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isPickMoved:Z

    .line 374
    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorX:F

    add-float/2addr v2, v0

    iput v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorX:F

    .line 375
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorY:F

    .line 378
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 379
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 380
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 381
    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 383
    iget v5, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorX:F

    cmpg-float v5, v5, v0

    if-gez v5, :cond_b4

    .line 384
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorX:F

    .line 387
    :cond_b4
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorX:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_bc

    .line 388
    iput v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorX:F

    .line 390
    :cond_bc
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorY:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_c4

    .line 391
    iput v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorY:F

    .line 393
    :cond_c4
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_cc

    .line 394
    iput v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorY:F

    .line 398
    :cond_cc
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->touchX:F

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->touchY:F

    .line 400
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->refresh()V

    goto/16 :goto_1bf

    .line 402
    :cond_dd
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    if-nez v0, :cond_fa

    .line 403
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->reset()V

    .line 404
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectTextInfo;->reset()V

    .line 405
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isDownConform:Z

    if-eqz v0, :cond_1bf

    .line 406
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    if-eqz v0, :cond_1bf

    .line 407
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, v1}, Lcn/codemao/android/sketch/view/paint/IPaint;->onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Canvas;)Z

    goto/16 :goto_1bf

    .line 411
    :cond_fa
    iget-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isDownConform:Z

    if-eqz v1, :cond_1bf

    .line 412
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, v1}, Lcn/codemao/android/sketch/view/paint/IPaint;->onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Canvas;)Z

    goto/16 :goto_1bf

    .line 419
    :cond_105
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isDrawing:Z

    .line 420
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isBGPreviewModel:Z

    if-eqz v0, :cond_112

    .line 421
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isBGPreviewModel:Z

    .line 422
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->updateBGPreviewModel()V

    goto/16 :goto_1bf

    .line 426
    :cond_112
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isPickColorModel:Z

    if-eqz v0, :cond_11f

    .line 427
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isPickMoved:Z

    if-nez v0, :cond_1bf

    .line 428
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->quitStrawColor()V

    goto/16 :goto_1bf

    .line 432
    :cond_11f
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    if-nez v0, :cond_13c

    .line 433
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->reset()V

    .line 434
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectTextInfo;->reset()V

    .line 435
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isDownConform:Z

    if-eqz v0, :cond_1bf

    .line 436
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    if-eqz v0, :cond_1bf

    .line 437
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, v1}, Lcn/codemao/android/sketch/view/paint/IPaint;->onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Canvas;)Z

    goto/16 :goto_1bf

    .line 441
    :cond_13c
    iget-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isDownConform:Z

    if-eqz v1, :cond_1bf

    .line 442
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, v1}, Lcn/codemao/android/sketch/view/paint/IPaint;->onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Canvas;)Z

    goto/16 :goto_1bf

    .line 299
    :cond_147
    iput-boolean v4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isDrawing:Z

    .line 300
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isMove:Z

    .line 302
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isBGPreviewModel:Z

    if-eqz v0, :cond_151

    goto/16 :goto_1bf

    .line 305
    :cond_151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->touchX:F

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->touchY:F

    .line 308
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isPickColorModel:Z

    if-eqz v0, :cond_164

    .line 309
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isPickMoved:Z

    goto :goto_1bf

    .line 312
    :cond_164
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isDownConform:Z

    .line 313
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1a5

    .line 314
    iput-boolean v4, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isDownConform:Z

    .line 315
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->interceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_176
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_191

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/view/intercepter/TouchDownIntercepter;

    .line 316
    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    invoke-virtual {v5, v6, v1, v2}, Lcn/codemao/android/sketch/view/intercepter/TouchDownIntercepter;->intercept(Lcn/codemao/android/sketch/view/paint/IPaint;FF)Z

    move-result v6

    if-eqz v6, :cond_176

    .line 317
    invoke-virtual {v5}, Lcn/codemao/android/sketch/view/intercepter/TouchDownIntercepter;->getmPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcn/codemao/android/sketch/view/SketchViewV5;->changePaint(Lcn/codemao/android/sketch/view/paint/IPaint;Z)V

    .line 322
    :cond_191
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    if-eqz v0, :cond_19b

    .line 323
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, v1}, Lcn/codemao/android/sketch/view/paint/IPaint;->onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Canvas;)Z

    goto :goto_1bf

    .line 325
    :cond_19b
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    if-eqz v0, :cond_1bf

    .line 326
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, v1}, Lcn/codemao/android/sketch/view/paint/IPaint;->onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Canvas;)Z

    goto :goto_1bf

    .line 330
    :cond_1a5
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    if-eqz v0, :cond_1b8

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectTextInfo;->hasSelected()Z

    move-result v0

    if-eqz v0, :cond_1b8

    .line 331
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/SelectTextInfo;->reset()V

    .line 332
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->refresh()V

    goto :goto_1bf

    .line 334
    :cond_1b8
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    if-eqz v0, :cond_1bf

    .line 335
    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->onTouchOutside()V

    .line 453
    :cond_1bf
    :goto_1bf
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return v4
.end method

.method public quitStrawColor()V
    .registers 6

    .line 463
    iget-wide v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->startPickColorTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x190

    cmp-long v4, v0, v2

    if-gez v4, :cond_12

    return-void

    :cond_12
    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isPickColorModel:Z

    .line 467
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->centerX:F

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorX:F

    .line 468
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->centerY:F

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->pickColorY:F

    .line 469
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->strawColor:I

    if-nez v0, :cond_24

    const/4 v0, -0x1

    .line 470
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->strawColor:I

    .line 472
    :cond_24
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->notifyPickColorModeChanged()V

    .line 473
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->strawColor:I

    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->notifyStrawColor(I)V

    .line 474
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->refresh()V

    return-void
.end method

.method public redo()V
    .registers 3

    const-string/jumbo v0, "重做"

    const/4 v1, 0x0

    .line 1187
    invoke-virtual {p0, v0, v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 1188
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 1189
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->figureUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->redo()V

    goto :goto_1d

    .line 1191
    :cond_18
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->globalUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->redo()V

    :goto_1d
    return-void
.end method

.method public refresh()V
    .registers 3

    .line 1074
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 1075
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_16

    .line 1077
    :cond_e
    new-instance v0, Lcn/codemao/android/sketch/view/SketchViewV5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/view/SketchViewV5$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/sketch/view/SketchViewV5;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_16
    return-void
.end method

.method public refreshSrcBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 613
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->backGroundPaint:Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

    invoke-virtual {v0, p1, p0}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->refreshSrcBitmap(Landroid/graphics/Bitmap;Lcn/codemao/android/sketch/view/SketchViewV5;)V

    .line 614
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Lcn/codemao/android/sketch/RectHelper;->updateCanvasRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public resetCanvas()V
    .registers 5

    .line 1714
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/RectHelper;->getScale()F

    move-result v0

    .line 1715
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v1

    const/high16 v2, 0x3f800000  # 1.0f

    div-float/2addr v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0, v0}, Lcn/codemao/android/sketch/RectHelper;->updateAllScale(FZZ)V

    .line 1718
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/sketch/RectHelper;->getCanvasLeft()F

    move-result v2

    sub-float/2addr v1, v2

    .line 1719
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcn/codemao/android/sketch/RectHelper;->getCanvasTop()F

    move-result v3

    sub-float/2addr v2, v3

    .line 1721
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0, v0}, Lcn/codemao/android/sketch/RectHelper;->updateAllOffset(FFZZ)V

    .line 1724
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mDrawingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1725
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1726
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->mFigureEditList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1728
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->globalUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->reset()V

    .line 1729
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->figureUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->reset()V

    return-void
.end method

.method public resetPaint()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1568
    invoke-virtual {p0, v0, v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->changePaint(Lcn/codemao/android/sketch/view/paint/IPaint;Z)V

    return-void
.end method

.method public sendReport(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
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

    .line 2012
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->activity:Lcn/codemao/android/sketch/SketchActivity2;

    if-eqz v0, :cond_7

    .line 2013
    invoke-virtual {v0, p1, p2}, Lcn/codemao/android/sketch/SketchActivity2;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    :cond_7
    return-void
.end method

.method public setBGModel()V
    .registers 4

    .line 1640
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->backGroundPaint:Lcn/codemao/android/sketch/view/paint/BackGroundPaint;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->penPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->changeBGColor(ILcn/codemao/android/sketch/view/paint/SketchControll;Z)V

    return-void
.end method

.method public setCutBitmapModel(ZLcn/codemao/android/sketch/model/CutoutBitmapInfo;)V
    .registers 5

    .line 1599
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isCutBitmapModel:Z

    if-eqz p1, :cond_f

    .line 1602
    new-instance p1, Lcn/codemao/android/sketch/view/SketchViewV5$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lcn/codemao/android/sketch/view/SketchViewV5$$ExternalSyntheticLambda2;-><init>(Lcn/codemao/android/sketch/view/SketchViewV5;Lcn/codemao/android/sketch/model/CutoutBitmapInfo;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_13

    :cond_f
    const/4 p1, 0x0

    .line 1615
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1617
    :goto_13
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->notifyCutBitmapModeChanged()V

    return-void
.end method

.method public setDrawing(Z)V
    .registers 2

    .line 1995
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isDrawing:Z

    return-void
.end method

.method public setIsTextInputing(Z)V
    .registers 2

    .line 1094
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isTextInputing:Z

    return-void
.end method

.method public setIsTuyaing(Z)V
    .registers 2

    .line 1088
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isTuyaing:Z

    return-void
.end method

.method public setLandscapeStage(Z)V
    .registers 2

    .line 502
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isLandscapeStage:Z

    .line 503
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->notifySizeChange()V

    return-void
.end method

.method public setNeedUpdatePen(Z)V
    .registers 2

    .line 668
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->needUpdatePen:Z

    return-void
.end method

.method public setOffset(FF)V
    .registers 5

    .line 1253
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Lcn/codemao/android/sketch/RectHelper;->updateAllOffset(FFZZ)V

    .line 1254
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScale(F)V
    .registers 4

    .line 1260
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lcn/codemao/android/sketch/RectHelper;->updateAllScale(FZZ)V

    .line 1261
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScaling(Z)V
    .registers 2

    .line 274
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isScaling:Z

    return-void
.end method

.method public startStrawColor()V
    .registers 3

    .line 1576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->startPickColorTime:J

    const/4 v0, 0x1

    .line 1578
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isPickColorModel:Z

    .line 1580
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->notifyPickColorModeChanged()V

    .line 1582
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV5;->refresh()V

    return-void
.end method

.method public undo()V
    .registers 3

    const-string/jumbo v0, "撤销"

    const/4 v1, 0x0

    .line 1178
    invoke-virtual {p0, v0, v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 1179
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->curPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 1180
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->figureUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->undo()V

    goto :goto_1d

    .line 1182
    :cond_18
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->globalUndoRedoManager:Lcn/codemao/android/sketch/action/UndoRedoManager;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->undo()V

    :goto_1d
    return-void
.end method

.method public updateBGPreviewModel()V
    .registers 4

    .line 238
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasVariableWathers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/listener/CanvasVariableWather;

    .line 239
    iget-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->isBGPreviewModel:Z

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->bgPreviewModelChanged(Z)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method public updateFigureSelectStatus()V
    .registers 4

    .line 211
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasVariableWathers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/listener/CanvasVariableWather;

    .line 212
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->selectFigureChanged(Lcn/codemao/android/sketch/model/SelectFigureInfo;)V

    goto :goto_6

    :cond_18
    return-void
.end method

.method public updateTextSelectStatus()V
    .registers 4

    .line 220
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->canvasVariableWathers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/listener/CanvasVariableWather;

    .line 221
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV5;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/listener/CanvasVariableWather;->selectTextChanged(Lcn/codemao/android/sketch/model/SelectTextInfo;)V

    goto :goto_6

    :cond_18
    return-void
.end method
