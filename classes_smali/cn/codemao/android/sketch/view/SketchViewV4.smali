.class public Lcn/codemao/android/sketch/view/SketchViewV4;
.super Landroid/view/View;
.source "SketchViewV4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;
    }
.end annotation


# instance fields
.field private backDrawBitmap:Landroid/graphics/Bitmap;

.field private backDrawCavas:Landroid/graphics/Canvas;

.field private backGroundColor:I

.field private backGroundPaint:Landroid/graphics/Paint;

.field private backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

.field private backLeftTop:Lcn/codemao/android/sketch/model/PointInfo;

.field private backRightBottom:Lcn/codemao/android/sketch/model/PointInfo;

.field private backRightTop:Lcn/codemao/android/sketch/model/PointInfo;

.field private canTouch:Z

.field private canvasBottom:F

.field private canvasDx:F

.field private canvasDy:F

.field private canvasHeight:F

.field private canvasLeft:F

.field private canvasRect:Landroid/graphics/RectF;

.field private canvasRight:F

.field private canvasTop:F

.field private canvasWidth:F

.field private cavasPaint:Landroid/graphics/Paint;

.field private centerPaint:Landroid/graphics/Paint;

.field private centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

.field private centerPointBitmap:Landroid/graphics/Bitmap;

.field private clearMode:Landroid/graphics/Xfermode;

.field private context:Landroid/content/Context;

.field private drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

.field private figureColor:I

.field private figureMode:I

.field private figureStartTimeHelper:Lcn/codemao/android/sketch/utils/TimerHelper;

.field private finalRectF:Landroid/graphics/RectF;

.field private helpPaint:Landroid/graphics/Paint;

.field private isAddingView:Z

.field public isBackground:Z

.field private isBackgroundDraw:Z

.field private isCenterEdited:Z

.field private isClick:Z

.field private isDrawingLine:Z

.field private isDrawingPen:Z

.field private isEditBitmapInit:Z

.field private isFigureSlectClick:Z

.field private isInit:Z

.field private isScaling:Z

.field private isShowFigureHelp:Z

.field private isShowTextHelp:Z

.field private isShowToolbar:Z

.field private isTextInputing:Z

.field private isTextMoving:Z

.field private lastX:F

.field private lastY:F

.field private lineInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

.field private linePath:Landroid/graphics/Path;

.field private mBackgroundVO:Lcn/codemao/android/sketch/model/BackgroundVO;

.field private mCanEraser:Z

.field private mDrawingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerFigureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEraserSize:I

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

.field private mPenSize:I

.field private mSrcBitmap:Landroid/graphics/Bitmap;

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

.field private mTimerHelper:Lcn/codemao/android/sketch/utils/TimerHelper;

.field private mode:I

.field private movePathUtils:Lcn/codemao/android/sketch/utils/MovePathUtils;

.field private moveStartIsShow:Z

.field private needUpdatePen:Z

.field private onTouchClickListener:Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;

.field private paintType:I

.field private penPaint:Landroid/graphics/Paint;

.field private penPath:Landroid/graphics/Path;

.field private penPointInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/PointInfo;",
            ">;"
        }
    .end annotation
.end field

.field private rectHelper:Lcn/codemao/android/sketch/RectHelper;

.field private scale:F

.field private screenHeight:I

.field private screenWitdh:I

.field private selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

.field private selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

.field private stageHeight:I

.field private stageRect:Landroid/graphics/RectF;

.field private stageWidth:I

.field private startX:F

.field private startY:F

.field private textBackGroundColor:I

.field private textColor:I

.field private textColorType:I

.field private textMode:I

.field private translatePaint:Landroid/graphics/Paint;


# direct methods
.method public static synthetic $r8$lambda$9G3E9089Fx2gqQ2jxDVRwhAr_S4(Lcn/codemao/android/sketch/view/SketchViewV4;)V
    .registers 1

    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->lambda$init$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$uw7U3ymNHwzYv0JhVWwP8w2Rhew(Lcn/codemao/android/sketch/view/SketchViewV4;)V
    .registers 1

    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->lambda$init$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0xfa0

    .line 48
    iput p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textColorType:I

    const/4 p2, 0x0

    .line 49
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isCenterEdited:Z

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    const/16 v1, 0x3e9

    .line 51
    iput v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->paintType:I

    const/16 v1, 0x7d1

    .line 52
    iput v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    const/16 v1, 0x7530

    .line 53
    iput v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textMode:I

    .line 64
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingLine:Z

    .line 65
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isTextInputing:Z

    .line 67
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isBackgroundDraw:Z

    const v1, -0x80ad33

    .line 69
    iput v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureColor:I

    .line 70
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backGroundColor:I

    const/high16 v0, -0x1000000

    .line 71
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textColor:I

    .line 72
    iput p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textBackGroundColor:I

    .line 73
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isScaling:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    .line 75
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowFigureHelp:Z

    .line 76
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    const/high16 v0, 0x3f800000  # 1.0f

    .line 77
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->scale:F

    .line 78
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->needUpdatePen:Z

    .line 79
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingPen:Z

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDx:F

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDy:F

    .line 82
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mCanEraser:Z

    const/16 v0, 0x232

    .line 98
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageWidth:I

    const/16 v0, 0x384

    .line 99
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageHeight:I

    .line 101
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isEditBitmapInit:Z

    .line 103
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backLeftTop:Lcn/codemao/android/sketch/model/PointInfo;

    .line 104
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backRightTop:Lcn/codemao/android/sketch/model/PointInfo;

    .line 105
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    .line 106
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backRightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isInit:Z

    .line 108
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowToolbar:Z

    .line 116
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isClick:Z

    .line 117
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->moveStartIsShow:Z

    .line 118
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isTextMoving:Z

    .line 119
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isFigureSlectClick:Z

    .line 120
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canTouch:Z

    .line 121
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isAddingView:Z

    .line 134
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 138
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0xfa0

    .line 48
    iput p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textColorType:I

    const/4 p2, 0x0

    .line 49
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isCenterEdited:Z

    const/4 p3, -0x1

    .line 50
    iput p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    const/16 v0, 0x3e9

    .line 51
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->paintType:I

    const/16 v0, 0x7d1

    .line 52
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    const/16 v0, 0x7530

    .line 53
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textMode:I

    .line 64
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingLine:Z

    .line 65
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isTextInputing:Z

    .line 67
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isBackgroundDraw:Z

    const v0, -0x80ad33

    .line 69
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureColor:I

    .line 70
    iput p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backGroundColor:I

    const/high16 p3, -0x1000000

    .line 71
    iput p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textColor:I

    .line 72
    iput p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textBackGroundColor:I

    .line 73
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isScaling:Z

    .line 74
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    .line 75
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowFigureHelp:Z

    .line 76
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    const/high16 p3, 0x3f800000  # 1.0f

    .line 77
    iput p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->scale:F

    .line 78
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->needUpdatePen:Z

    .line 79
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingPen:Z

    const/4 p3, 0x0

    .line 81
    iput p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDx:F

    iput p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDy:F

    .line 82
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mCanEraser:Z

    const/16 p3, 0x232

    .line 98
    iput p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageWidth:I

    const/16 p3, 0x384

    .line 99
    iput p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageHeight:I

    .line 101
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isEditBitmapInit:Z

    .line 103
    new-instance p3, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {p3}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    iput-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backLeftTop:Lcn/codemao/android/sketch/model/PointInfo;

    .line 104
    new-instance p3, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {p3}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    iput-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backRightTop:Lcn/codemao/android/sketch/model/PointInfo;

    .line 105
    new-instance p3, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {p3}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    iput-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    .line 106
    new-instance p3, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {p3}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    iput-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backRightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    const/4 p3, 0x1

    .line 107
    iput-boolean p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isInit:Z

    .line 108
    iput-boolean p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowToolbar:Z

    .line 116
    iput-boolean p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isClick:Z

    .line 117
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->moveStartIsShow:Z

    .line 118
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isTextMoving:Z

    .line 119
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isFigureSlectClick:Z

    .line 120
    iput-boolean p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canTouch:Z

    .line 121
    iput-boolean p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isAddingView:Z

    .line 139
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/sketch/view/SketchViewV4;)Lcn/codemao/android/sketch/model/SelectFigureInfo;
    .registers 1

    .line 47
    iget-object p0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcn/codemao/android/sketch/view/SketchViewV4;)Lcn/codemao/android/sketch/utils/TimerHelper;
    .registers 1

    .line 47
    iget-object p0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureStartTimeHelper:Lcn/codemao/android/sketch/utils/TimerHelper;

    return-object p0
.end method

.method static synthetic access$202(Lcn/codemao/android/sketch/view/SketchViewV4;Z)Z
    .registers 2

    .line 47
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isAddingView:Z

    return p1
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .registers 14

    .line 466
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 467
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 468
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 469
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 470
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mBackgroundVO:Lcn/codemao/android/sketch/model/BackgroundVO;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/BackgroundVO;->getRotate()F

    move-result v3

    const/high16 v4, 0x43870000  # 270.0f

    const/high16 v5, 0x42b40000  # 90.0f

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mBackgroundVO:Lcn/codemao/android/sketch/model/BackgroundVO;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/BackgroundVO;->getRotate()F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_71

    .line 471
    :cond_39
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 472
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 473
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    add-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 474
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    add-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 479
    :cond_71
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backLeftTop:Lcn/codemao/android/sketch/model/PointInfo;

    iget v6, v3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backRightTop:Lcn/codemao/android/sketch/model/PointInfo;

    iget v8, v7, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    const/high16 v9, 0x3f800000  # 1.0f

    const/high16 v10, -0x40800000  # -1.0f

    cmpl-float v11, v6, v8

    if-nez v11, :cond_a0

    .line 480
    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    cmpg-float v4, v6, v4

    if-gez v4, :cond_93

    const/4 v4, 0x0

    .line 482
    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v5, v7, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_bc

    goto :goto_9d

    :cond_93
    const/high16 v4, 0x43340000  # 180.0f

    .line 487
    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v5, v7, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_bc

    :goto_9d
    const/high16 v9, -0x40800000  # -1.0f

    goto :goto_bc

    :cond_a0
    cmpg-float v6, v6, v8

    if-gez v6, :cond_b1

    .line 493
    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpg-float v3, v3, v4

    const/high16 v4, 0x42b40000  # 90.0f

    if-gez v3, :cond_bc

    goto :goto_be

    .line 498
    :cond_b1
    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v5, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_bc

    goto :goto_be

    :cond_bc
    :goto_bc
    const/high16 v10, 0x3f800000  # 1.0f

    .line 502
    :goto_be
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v0, v9, v10, v3, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 503
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v0, v4, v3, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 504
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 505
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mSrcBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 506
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawFigure(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V
    .registers 10

    if-nez p2, :cond_3

    return-void

    .line 570
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 573
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v0

    if-nez v0, :cond_33

    .line 574
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->screenHeight:I

    div-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    .line 575
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v0

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_52

    .line 577
    :cond_33
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_52
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p3, :cond_97

    .line 581
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 582
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v3

    const/high16 v4, 0x43340000  # 180.0f

    rem-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_81

    .line 583
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->isFlipX()Z

    move-result v3

    if-nez v3, :cond_73

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->isFlipY()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 584
    :cond_73
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v3

    add-float/2addr v3, v4

    invoke-virtual {p2, v3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setCavasRotate(F)V

    .line 585
    invoke-virtual {p2, v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setFlipX(Z)V

    .line 586
    invoke-virtual {p2, v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setFlipY(Z)V

    .line 590
    :cond_81
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 591
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 593
    :cond_97
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_a0

    if-eqz p3, :cond_b7

    .line 594
    :cond_a0
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v2

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p1, v2, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 596
    :cond_b7
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v2

    if-eqz v2, :cond_1f6

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1d0

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1c4

    const/4 v5, 0x4

    if-eq v2, v5, :cond_1b8

    if-eq v2, v3, :cond_ca

    goto/16 :goto_201

    .line 611
    :cond_ca
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->linePath:Landroid/graphics/Path;

    if-nez v2, :cond_d5

    .line 612
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->linePath:Landroid/graphics/Path;

    :cond_d5
    if-eqz p3, :cond_135

    .line 615
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->linePath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 616
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->linePath:Landroid/graphics/Path;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 617
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->linePath:Landroid/graphics/Path;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 618
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->linePath:Landroid/graphics/Path;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 619
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->linePath:Landroid/graphics/Path;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 620
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->linePath:Landroid/graphics/Path;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_201

    .line 623
    :cond_135
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->linePath:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 624
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->linePath:Landroid/graphics/Path;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 625
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->linePath:Landroid/graphics/Path;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 626
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->linePath:Landroid/graphics/Path;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/PointInfo;

    iget v0, v0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p3, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 627
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->linePath:Landroid/graphics/Path;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/PointInfo;

    iget v0, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 628
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->linePath:Landroid/graphics/Path;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_201

    .line 601
    :cond_1b8
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_201

    .line 604
    :cond_1c4
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_201

    .line 607
    :cond_1d0
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    float-to-double v0, p3

    const-wide/high16 v2, 0x3fd0000000000000L  # 0.25

    mul-double v0, v0, v2

    double-to-float p3, v0

    .line 608
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, v0, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_201

    .line 598
    :cond_1f6
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 633
    :goto_201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawFigureHelp(Landroid/graphics/Canvas;)V
    .registers 6

    .line 637
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    if-eqz v0, :cond_c2

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz v0, :cond_c2

    .line 638
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/codemao/android/sketch/RectHelper;->updateFigureHelpRect(Landroid/graphics/RectF;)V

    .line 639
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 640
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v2, v2, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 641
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

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

    .line 642
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v0

    const/high16 v1, 0x43340000  # 180.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_82

    .line 643
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getScaleX()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

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

    goto :goto_a3

    .line 645
    :cond_82
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getScaleY()F

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

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

    .line 646
    :goto_a3
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->helpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 647
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->helpPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2}, Lcn/codemao/android/sketch/RectHelper;->drawFigureHelp(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 648
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c2
    return-void
.end method

.method private drawFigures()V
    .registers 5

    const/4 v0, 0x0

    .line 556
    :goto_1
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 557
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawFigure(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 559
    :cond_1a
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowFigureHelp:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_29

    goto :goto_2e

    .line 562
    :cond_29
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawFigureHelp(Landroid/graphics/Canvas;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method private drawPens(Landroid/graphics/Canvas;)V
    .registers 14

    .line 511
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 512
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isBackground:Z

    if-eqz v0, :cond_e

    .line 513
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawBackground(Landroid/graphics/Canvas;)V

    goto :goto_2e

    .line 514
    :cond_e
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz v0, :cond_2e

    .line 515
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 516
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmapRect()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 517
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    .line 520
    :goto_2f
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_239

    .line 521
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_22a

    .line 522
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 523
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 524
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v3

    const/high16 v4, 0x43340000  # 180.0f

    rem-float/2addr v3, v4

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_ad

    .line 525
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->isFlipX()Z

    move-result v3

    if-nez v3, :cond_7f

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->isFlipY()Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 526
    :cond_7f
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v5}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v5

    add-float/2addr v5, v4

    invoke-virtual {v3, v5}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setCavasRotate(F)V

    .line 527
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3, v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setFlipX(Z)V

    .line 528
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3, v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setFlipY(Z)V

    .line 531
    :cond_ad
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    const/4 v3, 0x0

    .line 532
    :goto_bd
    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_19f

    if-nez v3, :cond_10c

    .line 534
    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v5}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v5, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    .line 535
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v6}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/model/PointInfo;

    iget v6, v6, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    .line 534
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    goto/16 :goto_19b

    .line 537
    :cond_10c
    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v4

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v5}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v5, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    .line 538
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v6}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/model/PointInfo;

    iget v6, v6, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v7}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/codemao/android/sketch/model/PointInfo;

    iget v7, v7, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v8, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v8}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/codemao/android/sketch/model/PointInfo;

    iget v8, v8, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000  # 2.0f

    div-float/2addr v7, v8

    iget-object v10, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v10}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/codemao/android/sketch/model/PointInfo;

    iget v10, v10, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget-object v11, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v11}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/codemao/android/sketch/model/PointInfo;

    iget v9, v9, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr v10, v9

    div-float/2addr v10, v8

    .line 537
    invoke-virtual {v4, v5, v6, v7, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_19b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_bd

    .line 541
    :cond_19f
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 542
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 543
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    .line 544
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v3

    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v5}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getTextScale()F

    move-result v5

    mul-float v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 545
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v3

    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 546
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 547
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_235

    .line 549
    :cond_22a
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-direct {p0, p1, v2, v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawFigure(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V

    :goto_235
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2f

    :cond_239
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerTextInfo;)V
    .registers 11

    .line 665
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getStrings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_db

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getStrings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_db

    .line 669
    :cond_12
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p2, Lcn/codemao/android/sketch/model/StickerTextInfo;->textSize:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 670
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->updateRect()V

    .line 671
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 672
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 675
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getScale()F

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_49

    .line 676
    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->screenWitdh:I

    div-int/lit8 v2, v2, 0x32

    int-to-float v2, v2

    goto :goto_59

    .line 678
    :cond_49
    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->screenWitdh:I

    div-int/lit8 v2, v2, 0x32

    int-to-float v2, v2

    const/high16 v4, 0x40000000  # 2.0f

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getScale()F

    move-result v5

    add-float/2addr v5, v3

    div-float/2addr v3, v5

    sub-float/2addr v4, v3

    mul-float v2, v2, v4

    .line 680
    :goto_59
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v2

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v2

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v2

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 681
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 682
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmRotateAngle()F

    move-result v2

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 684
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 685
    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v2, v0

    .line 686
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v0, p1, p2}, Lcn/codemao/android/sketch/RectHelper;->drawTextBackGround(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerTextInfo;)V

    const/4 v0, 0x0

    .line 687
    :goto_b2
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getStrings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_d8

    .line 688
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getStrings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    int-to-float v3, v1

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_b2

    .line 691
    :cond_d8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_db
    :goto_db
    return-void
.end method

.method private drawTextHelp()V
    .registers 5

    .line 695
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    if-eqz v0, :cond_5c

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    if-eqz v0, :cond_5c

    .line 696
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/codemao/android/sketch/RectHelper;->updateTextHelpRect(Landroid/graphics/RectF;)V

    .line 697
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 698
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmRotateAngle()F

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v2, v2, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v3, v3, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 699
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->helpPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 700
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isTextMoving:Z

    if-nez v0, :cond_57

    .line 701
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->helpPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcn/codemao/android/sketch/RectHelper;->drawTextHelp(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 703
    :cond_57
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :cond_5c
    return-void
.end method

.method private drawTexts()V
    .registers 4

    const/4 v0, 0x0

    .line 654
    :goto_1
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 655
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-direct {p0, v1, v2}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawText(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerTextInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 657
    :cond_19
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_28

    goto :goto_2b

    .line 660
    :cond_28
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawTextHelp()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method private drawTranslateRect(Landroid/graphics/Canvas;)V
    .registers 10

    .line 708
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 709
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->translatePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 711
    :cond_1a
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v5, v1

    if-lez v0, :cond_2f

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 712
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->translatePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 715
    :cond_2f
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_51

    .line 716
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->translatePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 719
    :cond_51
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_73

    const/4 v2, 0x0

    .line 720
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->translatePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_73
    return-void
.end method

.method private fitFlip(F)V
    .registers 6

    const/high16 v0, 0x43340000  # 180.0f

    rem-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_15

    .line 439
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 440
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_21

    .line 442
    :cond_15
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 443
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_21
    int-to-float p1, p1

    int-to-float v0, v0

    .line 446
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcn/codemao/android/sketch/utils/CaculatorUtil;->getZoom(FFFF)F

    move-result v1

    mul-float p1, p1, v1

    float-to-int p1, p1

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-float p1, p1

    .line 449
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasWidth:F

    int-to-float p1, v0

    .line 450
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasHeight:F

    .line 451
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasWidth:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasLeft:F

    .line 452
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasHeight:F

    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasTop:F

    .line 453
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasWidth:F

    add-float/2addr p1, v1

    div-float/2addr p1, v0

    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRight:F

    .line 454
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasHeight:F

    add-float/2addr p1, v1

    div-float/2addr p1, v0

    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasBottom:F

    .line 455
    iget p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRight:F

    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasLeft:F

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    .line 456
    invoke-direct {p0, p1, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllScale(FZ)V

    .line 457
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr p1, v1

    .line 458
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v1, v2

    neg-float p1, p1

    neg-float v1, v1

    .line 459
    invoke-direct {p0, p1, v1, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllOffset(FFZ)V

    const/high16 p1, 0x3f800000  # 1.0f

    .line 460
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->scale:F

    .line 461
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasLeft:F

    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasTop:F

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRight:F

    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasBottom:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private getCutBitmap()Landroid/graphics/Bitmap;
    .registers 7

    .line 1674
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPointBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 1675
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/codemao/android/sketch/R$mipmap;->icn_center_point:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPointBitmap:Landroid/graphics/Bitmap;

    .line 1676
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget-object v2, v2, Lcn/codemao/android/sketch/model/CenterPointInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v1, v1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1678
    :cond_24
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingPen:Z

    .line 1679
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    .line 1680
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->scale:F

    const/high16 v2, 0x3f800000  # 1.0f

    div-float v0, v2, v0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllScale(FZ)V

    .line 1681
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasLeft:F

    sub-float/2addr v4, v5

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasTop:F

    sub-float/2addr v0, v5

    invoke-direct {p0, v4, v0, v3}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllOffset(FFZ)V

    .line 1682
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->getFinalBitmapRect()V

    .line 1683
    iput v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->scale:F

    const/4 v0, 0x0

    .line 1684
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDx:F

    .line 1685
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDy:F

    .line 1686
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_8c

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v0, v2, v0

    if-nez v0, :cond_60

    goto :goto_8c

    .line 1690
    :cond_60
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_67

    .line 1691
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->initPenBitmap()V

    .line 1693
    :cond_67
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawPens(Landroid/graphics/Canvas;)V

    .line 1694
    :goto_6c
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_84

    .line 1695
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-direct {p0, v0, v2}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawText(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerTextInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 1697
    :cond_84
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawTranslateRect(Landroid/graphics/Canvas;)V

    .line 1698
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenBitmap:Landroid/graphics/Bitmap;

    return-object v0

    :cond_8c
    :goto_8c
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFinalBitmapRect()V
    .registers 10

    .line 1489
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->finalRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1490
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isBackgroundDraw:Z

    if-eqz v0, :cond_17

    return-void

    :cond_17
    const/4 v0, 0x0

    .line 1493
    :goto_18
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 1494
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-direct {p0, v1, v2}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawText(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerTextInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_30
    const/4 v0, 0x1

    .line 1496
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->needUpdatePen:Z

    .line 1497
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->finalRectF:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/BitmapUtil;->getFinalBitmapRect(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 1498
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_98

    .line 1499
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isCenterEdited:Z

    const/high16 v1, 0x40000000  # 2.0f

    if-nez v0, :cond_73

    .line 1500
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->finalRectF:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v6

    div-float/2addr v5, v1

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v0

    div-float/2addr v6, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcn/codemao/android/sketch/RectHelper;->updateCenterPotin(Lcn/codemao/android/sketch/model/CenterPointInfo;Landroid/graphics/RectF;FFII)V

    .line 1502
    :cond_73
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget v2, v0, Lcn/codemao/android/sketch/model/CenterPointInfo;->x:F

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->finalRectF:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/model/CenterPointInfo;->setFinalX(F)V

    .line 1503
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget v2, v0, Lcn/codemao/android/sketch/model/CenterPointInfo;->y:F

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->finalRectF:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    neg-float v1, v2

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/CenterPointInfo;->setFinalY(F)V

    :cond_98
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 8

    .line 143
    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->context:Landroid/content/Context;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->screenWitdh:I

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->screenHeight:I

    .line 146
    new-instance v0, Lcn/codemao/android/sketch/RectHelper;

    invoke-direct {v0, p1}, Lcn/codemao/android/sketch/RectHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    .line 147
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->finalRectF:Landroid/graphics/RectF;

    .line 148
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPaint:Landroid/graphics/Paint;

    .line 149
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 152
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 153
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 154
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPath:Landroid/graphics/Path;

    .line 156
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backGroundPaint:Landroid/graphics/Paint;

    const/16 v0, 0xa

    .line 157
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenSize:I

    const/16 v0, 0x28

    .line 158
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mEraserSize:I

    .line 159
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->clearMode:Landroid/graphics/Xfermode;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    .line 163
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->translatePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    .line 164
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->translatePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->clearMode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPaint:Landroid/graphics/Paint;

    const v3, -0x661f1d1c

    .line 167
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_13c

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 169
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 170
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 171
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->screenWitdh:I

    div-int/lit16 v3, v3, 0x12c

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    new-instance v0, Lcn/codemao/android/sketch/model/CenterPointInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/CenterPointInfo;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    .line 173
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->helpPaint:Landroid/graphics/Paint;

    const v3, -0x1f1d1c

    .line 174
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->helpPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->helpPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 177
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->helpPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->screenWitdh:I

    div-int/lit16 v3, v3, 0xc8

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 178
    new-instance v0, Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-direct {v0, p1, p0}, Lcn/codemao/android/sketch/utils/MovePathUtils;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->movePathUtils:Lcn/codemao/android/sketch/utils/MovePathUtils;

    .line 179
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->cavasPaint:Landroid/graphics/Paint;

    .line 180
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->cavasPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->cavasPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    new-instance p1, Lcn/codemao/android/sketch/model/BackgroundVO;

    invoke-direct {p1}, Lcn/codemao/android/sketch/model/BackgroundVO;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mBackgroundVO:Lcn/codemao/android/sketch/model/BackgroundVO;

    .line 184
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->initStagePaint()V

    .line 185
    new-instance p1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v0, 0x3

    invoke-direct {p1, v2, v0}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 187
    new-instance p1, Lcn/codemao/android/sketch/utils/TimerHelper;

    new-instance v0, Lcn/codemao/android/sketch/view/SketchViewV4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/view/SketchViewV4$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/sketch/view/SketchViewV4;)V

    const-wide/16 v1, 0x1f4

    invoke-direct {p1, v1, v2, v0}, Lcn/codemao/android/sketch/utils/TimerHelper;-><init>(JLcn/codemao/android/sketch/utils/TimerHelper$TimeProcessor;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTimerHelper:Lcn/codemao/android/sketch/utils/TimerHelper;

    return-void

    nop

    :array_13c
    .array-data 4
        0x41a00000  # 20.0f
        0x41400000  # 12.0f
    .end array-data
.end method

.method private initBackGroundBitmap()V
    .registers 7

    .line 404
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageRect:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000  # 2.0f

    if-nez v0, :cond_47

    .line 405
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageRect:Landroid/graphics/RectF;

    .line 406
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageHeight:I

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f666666  # 0.9f

    invoke-static {v0, v2, v3, v4, v5}, Lcn/codemao/android/sketch/utils/CaculatorUtil;->getZoomSpace(FFFFF)F

    move-result v0

    .line 407
    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    .line 408
    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    .line 409
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 410
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    div-float/2addr v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 412
    :cond_47
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcn/codemao/android/sketch/utils/CaculatorUtil;->getZoom(FFFF)F

    move-result v0

    .line 413
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 414
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v0, v3

    int-to-float v2, v2

    .line 415
    iput v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasWidth:F

    int-to-float v0, v0

    .line 416
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasHeight:F

    .line 417
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasWidth:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasLeft:F

    .line 418
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasHeight:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasTop:F

    .line 419
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasWidth:F

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRight:F

    .line 420
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasHeight:F

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasBottom:F

    .line 421
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasLeft:F

    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasTop:F

    iget v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRight:F

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 422
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backLeftTop:Lcn/codemao/android/sketch/model/PointInfo;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iput v2, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 423
    iget v3, v1, Landroid/graphics/RectF;->top:F

    iput v3, v0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    .line 424
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backRightTop:Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iput v4, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 425
    iput v3, v0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    .line 426
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    iput v2, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 427
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    .line 428
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backRightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    iput v4, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 429
    iput v1, v0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    return-void
.end method

.method private initFigureBitmap()V
    .registers 2

    .line 217
    new-instance v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/SelectFigureInfo;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    .line 218
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/RectHelper;->initFigureRect()V

    .line 219
    new-instance v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/SelectFigureInfo;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    .line 220
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private initPenBitmap()V
    .registers 4

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenBitmap:Landroid/graphics/Bitmap;

    .line 207
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    .line 208
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 209
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->initFigureBitmap()V

    .line 210
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->initTextBitmap()V

    .line 211
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isBackground:Z

    if-eqz v0, :cond_2b

    .line 212
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->initBackGroundBitmap()V

    :cond_2b
    return-void
.end method

.method private initStagePaint()V
    .registers 5

    .line 197
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mStagePaint:Landroid/graphics/Paint;

    .line 198
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mStagePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 200
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mStagePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mStagePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_2c

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void

    nop

    :array_2c
    .array-data 4
        0x41200000  # 10.0f
        0x41000000  # 8.0f
    .end array-data
.end method

.method private initTextBitmap()V
    .registers 2

    .line 225
    new-instance v0, Lcn/codemao/android/sketch/model/SelectTextInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/SelectTextInfo;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    .line 226
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/RectHelper;->initTextRect()V

    return-void
.end method

.method private synthetic lambda$init$0()V
    .registers 2

    .line 190
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchClickListener:Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;->onUP()V

    return-void
.end method

.method private synthetic lambda$init$1()V
    .registers 4

    .line 188
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchClickListener:Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 189
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowToolbar:Z

    .line 190
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcn/codemao/android/sketch/view/SketchViewV4$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcn/codemao/android/sketch/view/SketchViewV4$$ExternalSyntheticLambda1;-><init>(Lcn/codemao/android/sketch/view/SketchViewV4;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 191
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowToolbar:Z

    .line 192
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTimerHelper:Lcn/codemao/android/sketch/utils/TimerHelper;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/utils/TimerHelper;->stopTime()V

    return-void
.end method

.method private onTouchEventDown(FF)V
    .registers 13

    .line 906
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    const/4 v1, -0x1

    const/16 v2, 0x7531

    const/4 v3, 0x2

    if-eq v0, v1, :cond_a2

    if-eqz v0, :cond_78

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4c

    if-eq v0, v3, :cond_11

    goto/16 :goto_b6

    .line 939
    :cond_11
    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    iget-boolean v8, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isTextInputing:Z

    iget-object v9, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    move v5, p1

    move v6, p2

    invoke-virtual/range {v4 .. v9}, Lcn/codemao/android/sketch/RectHelper;->getTextTouchType(FFLjava/util/List;ZLcn/codemao/android/sketch/model/SelectTextInfo;)I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textMode:I

    const/16 v1, 0x7537

    if-ne v0, v1, :cond_b6

    .line 941
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingPen:Z

    if-eqz v0, :cond_b6

    .line 942
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 943
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 944
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    new-instance v1, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v1, p1, p2}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 p1, 0x0

    .line 946
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    .line 947
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 948
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    goto/16 :goto_b6

    .line 927
    :cond_4c
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    move v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcn/codemao/android/sketch/RectHelper;->getFigureTouchType(FFILjava/util/List;Lcn/codemao/android/sketch/model/SelectFigureInfo;)I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    const/16 p2, 0x7d8

    if-ne p1, p2, :cond_69

    .line 929
    iget-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingLine:Z

    if-eqz p1, :cond_b6

    const/16 p1, 0x4e32

    .line 930
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    goto :goto_b6

    :cond_69
    const/16 p2, 0x7d7

    if-ne p1, p2, :cond_b6

    .line 933
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget p2, p1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->lastSelectFigureIndex:I

    iget p1, p1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureIndex:I

    if-ne p2, p1, :cond_b6

    .line 934
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isFigureSlectClick:Z

    goto :goto_b6

    .line 916
    :cond_78
    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    iget-boolean v8, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isTextInputing:Z

    iget-object v9, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    move v5, p1

    move v6, p2

    invoke-virtual/range {v4 .. v9}, Lcn/codemao/android/sketch/RectHelper;->getTextTouchType(FFLjava/util/List;ZLcn/codemao/android/sketch/model/SelectTextInfo;)I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textMode:I

    if-ne v0, v2, :cond_8d

    .line 918
    iput v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    goto :goto_b6

    .line 920
    :cond_8d
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 921
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    new-instance v1, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v1, p1, p2}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_b6

    .line 909
    :cond_a2
    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    iget-boolean v8, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isTextInputing:Z

    iget-object v9, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    move v5, p1

    move v6, p2

    invoke-virtual/range {v4 .. v9}, Lcn/codemao/android/sketch/RectHelper;->getTextTouchType(FFLjava/util/List;ZLcn/codemao/android/sketch/model/SelectTextInfo;)I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textMode:I

    if-ne p1, v2, :cond_b6

    .line 911
    iput v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    :cond_b6
    :goto_b6
    return-void
.end method

.method private onTouchEventMove(FF)V
    .registers 15

    .line 957
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2cb

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_16d

    if-eq v0, v3, :cond_75

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    goto/16 :goto_2cf

    .line 1070
    :cond_13
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v8}, Lcn/codemao/android/sketch/RectHelper;->updateCenterPotin(Lcn/codemao/android/sketch/model/CenterPointInfo;Landroid/graphics/RectF;FFII)V

    .line 1071
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2cf

    .line 1048
    :cond_2b
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    .line 1049
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textMode:I

    const/16 v1, 0x7531

    const/16 v2, 0x7532

    if-eq v0, v1, :cond_5b

    if-ne v0, v2, :cond_38

    goto :goto_5b

    :cond_38
    const v1, 0x493ea

    if-ne v0, v1, :cond_43

    .line 1058
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isTextMoving:Z

    .line 1061
    iput v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textMode:I

    goto/16 :goto_2cf

    :cond_43
    const/16 v1, 0x7533

    if-ne v0, v1, :cond_2cf

    .line 1063
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lastX:F

    sub-float/2addr p1, v0

    .line 1064
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lastY:F

    sub-float/2addr p2, v0

    .line 1065
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {v0, v1, p1, p2}, Lcn/codemao/android/sketch/RectHelper;->updateRotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V

    .line 1066
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2cf

    .line 1050
    :cond_5b
    :goto_5b
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isTextMoving:Z

    .line 1052
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lastX:F

    sub-float/2addr p1, v0

    .line 1053
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lastY:F

    sub-float/2addr p2, v0

    .line 1054
    iput v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textMode:I

    .line 1055
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 1056
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2cf

    .line 990
    :cond_75
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    const/16 v1, 0x7d7

    const/16 v4, 0x4e32

    const/16 v5, 0x7d3

    if-ne v0, v1, :cond_ab

    .line 991
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget v1, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureIndex:I

    iget v6, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->lastSelectFigureIndex:I

    if-ne v1, v6, :cond_96

    .line 992
    iput v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    .line 993
    iput v1, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->lastSelectFigureIndex:I

    .line 994
    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iput-object v1, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    goto :goto_ab

    .line 995
    :cond_96
    iget-boolean v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingLine:Z

    if-eqz v6, :cond_9d

    .line 996
    iput v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    goto :goto_ab

    .line 998
    :cond_9d
    iput v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    .line 999
    iput v1, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->lastSelectFigureIndex:I

    .line 1000
    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iput-object v1, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 1003
    :cond_ab
    :goto_ab
    iget v8, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    if-ne v8, v4, :cond_10e

    .line 1005
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowFigureHelp:Z

    .line 1006
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchClickListener:Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;

    if-eqz v0, :cond_ba

    .line 1007
    invoke-interface {v0}, Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;->onMove()V

    .line 1008
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowToolbar:Z

    .line 1010
    :cond_ba
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lineInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-nez v0, :cond_f9

    .line 1011
    new-instance v0, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-direct {v0, v2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;-><init>(I)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lineInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 1012
    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->screenWitdh:I

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setLineSize(I)V

    .line 1013
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lineInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1014
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lineInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1015
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureIndex:I

    .line 1016
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget v1, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureIndex:I

    iput v1, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->lastSelectFigureIndex:I

    .line 1017
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iput-object v1, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 1019
    :cond_f9
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v3, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->startX:F

    iget v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->startY:F

    const/4 v8, 0x0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v2 .. v8}, Lcn/codemao/android/sketch/RectHelper;->caculatorLineRect(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFFFZ)V

    .line 1020
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2cf

    :cond_10e
    if-ne v8, v5, :cond_12c

    .line 1022
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowFigureHelp:Z

    .line 1023
    iput v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    .line 1024
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lastX:F

    sub-float/2addr p1, v0

    .line 1025
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lastY:F

    sub-float/2addr p2, v0

    .line 1026
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz v0, :cond_127

    .line 1027
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 1029
    :cond_127
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2cf

    :cond_12c
    const/16 v0, 0x7d4

    if-ne v8, v0, :cond_14e

    .line 1031
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowFigureHelp:Z

    .line 1032
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    .line 1033
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lastX:F

    sub-float v0, p1, v0

    .line 1034
    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lastY:F

    sub-float v1, p2, v1

    .line 1035
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v3, v3, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2, v3, v0, v1}, Lcn/codemao/android/sketch/RectHelper;->upDateRotate(Lcn/codemao/android/sketch/model/StickerFigureInfo;FF)V

    .line 1036
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1037
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lastX:F

    .line 1038
    iput p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lastY:F

    goto/16 :goto_2cf

    :cond_14e
    const/16 v0, 0x4e2a

    if-lt v8, v0, :cond_2cf

    const/16 v0, 0x4e31

    if-gt v8, v0, :cond_2cf

    .line 1040
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowFigureHelp:Z

    .line 1041
    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v7, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v11, 0x0

    move v9, p1

    move v10, p2

    invoke-virtual/range {v6 .. v11}, Lcn/codemao/android/sketch/RectHelper;->updateFigureScale(Lcn/codemao/android/sketch/model/StickerFigureInfo;IFFI)V

    .line 1042
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1043
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lastX:F

    .line 1044
    iput p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lastY:F

    goto/16 :goto_2cf

    .line 964
    :cond_16d
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    .line 965
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_176

    .line 966
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->initPenBitmap()V

    .line 968
    :cond_176
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->paintType:I

    const/16 v4, 0x3ea

    if-ne v0, v4, :cond_182

    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mCanEraser:Z

    if-nez v0, :cond_182

    goto/16 :goto_2cf

    .line 972
    :cond_182
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2cf

    .line 973
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 974
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/PointInfo;

    iget v0, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1b5

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/PointInfo;

    iget v0, v0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2cf

    .line 975
    :cond_1b5
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v4, 0x40000000  # 2.0f

    if-le v0, v3, :cond_24a

    .line 976
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v5, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/model/PointInfo;

    iget v6, v6, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v5, v6

    div-float/2addr v5, v4

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/model/PointInfo;

    iget v6, v6, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr v6, v1

    div-float/2addr v6, v4

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 977
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v5, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/model/PointInfo;

    iget v6, v6, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v6, p1

    div-float/2addr v6, v4

    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr v3, p2

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v5, v6, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_2b2

    .line 979
    :cond_24a
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v5, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 980
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v5, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/model/PointInfo;

    iget v6, v6, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v6, p1

    div-float/2addr v6, v4

    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr v3, p2

    div-float/2addr v3, v4

    invoke-virtual {v0, v1, v5, v6, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 982
    :goto_2b2
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 983
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    new-instance v1, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v1, p1, p2}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->needUpdatePen:Z

    .line 985
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2cf

    .line 960
    :cond_2cb
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowFigureHelp:Z

    .line 961
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    :cond_2cf
    :goto_2cf
    return-void
.end method

.method private onTouchEventUp(FF)V
    .registers 16

    .line 1079
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_125

    const/4 v3, 0x1

    if-eqz v0, :cond_10d

    if-eq v0, v3, :cond_a0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    goto/16 :goto_129

    .line 1165
    :cond_13
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isCenterEdited:Z

    .line 1166
    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    move v7, p1

    move v8, p2

    invoke-virtual/range {v4 .. v10}, Lcn/codemao/android/sketch/RectHelper;->updateCenterPotin(Lcn/codemao/android/sketch/model/CenterPointInfo;Landroid/graphics/RectF;FFII)V

    .line 1167
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_129

    .line 1131
    :cond_2d
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isTextInputing:Z

    .line 1132
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isTextMoving:Z

    .line 1133
    iget p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textMode:I

    const/16 p2, 0x7532

    if-ne p1, p2, :cond_3e

    .line 1134
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    .line 1135
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_129

    :cond_3e
    const/16 p2, 0x7538

    if-ne p1, p2, :cond_49

    .line 1137
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    .line 1138
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->copyTextView()V

    goto/16 :goto_129

    :cond_49
    const/16 p2, 0x7534

    if-ne p1, p2, :cond_55

    .line 1140
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->clearTextContent()V

    .line 1141
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_129

    :cond_55
    const p2, 0x493ea

    if-ne p1, p2, :cond_76

    .line 1143
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isTextInputing:Z

    .line 1144
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1145
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchClickListener:Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;

    if-eqz p1, :cond_129

    iget-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v0, p2, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    if-eqz v0, :cond_129

    .line 1146
    iget p2, p2, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextIndex:I

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-interface {p1, p2, v0}, Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;->onShowKeyBoard(IF)V

    goto/16 :goto_129

    :cond_76
    const/16 p2, 0x7531

    if-ne p1, p2, :cond_81

    .line 1149
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    .line 1150
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_129

    :cond_81
    const/16 p2, 0x7537

    if-ne p1, p2, :cond_129

    .line 1152
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    .line 1153
    iget-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingPen:Z

    if-eqz p1, :cond_8e

    .line 1154
    iput v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    goto :goto_90

    .line 1156
    :cond_8e
    iput v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    .line 1158
    :goto_90
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1159
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchClickListener:Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;

    if-eqz p1, :cond_129

    .line 1160
    iget-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget p2, p2, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextIndex:I

    invoke-interface {p1, p2}, Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;->onHideKeyBoard(I)V

    goto/16 :goto_129

    .line 1094
    :cond_a0
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    const/16 v4, 0x4e32

    const/4 v5, 0x0

    const/16 v6, 0x7d2

    if-ne v0, v4, :cond_ca

    .line 1095
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowFigureHelp:Z

    .line 1096
    iput v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    .line 1097
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lineInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz v0, :cond_c2

    .line 1099
    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v7, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget v8, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->startX:F

    iget v9, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->startY:F

    const/4 v12, 0x1

    move v10, p1

    move v11, p2

    invoke-virtual/range {v6 .. v12}, Lcn/codemao/android/sketch/RectHelper;->caculatorLineRect(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFFFZ)V

    goto :goto_c4

    .line 1101
    :cond_c2
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowFigureHelp:Z

    .line 1103
    :goto_c4
    iput-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lineInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 1104
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_129

    :cond_ca
    const/16 p1, 0x7d3

    if-ne v0, p1, :cond_d3

    .line 1106
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowFigureHelp:Z

    .line 1107
    iput v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    goto :goto_129

    :cond_d3
    const/16 p1, 0x7d7

    if-ne v0, p1, :cond_ef

    .line 1109
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowFigureHelp:Z

    .line 1111
    iput v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    .line 1112
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget p2, p1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureIndex:I

    iput p2, p1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->lastSelectFigureIndex:I

    .line 1113
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iput-object p2, p1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 1114
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_129

    :cond_ef
    const/16 p1, 0x7d8

    if-ne v0, p1, :cond_105

    .line 1116
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowFigureHelp:Z

    const/16 p1, 0x7d1

    .line 1117
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    .line 1118
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iput v1, p1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->lastSelectFigureIndex:I

    .line 1119
    iput v1, p1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureIndex:I

    .line 1120
    iput-object v5, p1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 1121
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_129

    .line 1123
    :cond_105
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowFigureHelp:Z

    .line 1124
    iput v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    .line 1125
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_129

    .line 1085
    :cond_10d
    iget p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->paintType:I

    const/16 p2, 0x3e9

    if-eq p1, p2, :cond_117

    iget-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mCanEraser:Z

    if-eqz p1, :cond_11f

    .line 1086
    :cond_117
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->saveDrawingPath()V

    .line 1087
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->needUpdatePen:Z

    .line 1088
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1090
    :cond_11f
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    goto :goto_129

    .line 1081
    :cond_125
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowFigureHelp:Z

    .line 1082
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    :cond_129
    :goto_129
    return-void
.end method

.method private reset()V
    .registers 4

    .line 1272
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1273
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1274
    :cond_7
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 1275
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1276
    :cond_e
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    if-eqz v0, :cond_15

    .line 1277
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_15
    const/4 v0, 0x0

    .line 1279
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    .line 1280
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingPen:Z

    const/16 v0, 0x7d1

    .line 1281
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    const/4 v0, -0x1

    .line 1282
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    .line 1283
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    .line 1284
    iput-object v2, v1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 1285
    iput v0, v1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->lastSelectFigureIndex:I

    .line 1286
    iput v0, v1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureIndex:I

    .line 1288
    :cond_2c
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    if-eqz v1, :cond_34

    .line 1289
    iput-object v2, v1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    .line 1290
    iput v0, v1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextIndex:I

    :cond_34
    return-void
.end method

.method private saveDrawingPath()V
    .registers 6

    .line 1362
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 1363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    .line 1365
    :cond_b
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_15

    return-void

    .line 1368
    :cond_15
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTimerHelper:Lcn/codemao/android/sketch/utils/TimerHelper;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcn/codemao/android/sketch/utils/TimerHelper;->startDelayTime(J)V

    .line 1369
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/4 v1, 0x1

    .line 1370
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1371
    new-instance v2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/16 v3, 0x63

    invoke-direct {v2, v3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;-><init>(I)V

    .line 1372
    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1373
    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->paintType:I

    invoke-virtual {v2, v3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setPaintType(I)V

    .line 1374
    invoke-virtual {v2, v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmPaint(Landroid/graphics/Paint;)V

    .line 1375
    invoke-static {v2}, Lcn/codemao/android/sketch/utils/RectUtil;->getPathRect(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    .line 1376
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1377
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mCanEraser:Z

    return-void
.end method

.method private startFigureAnimition()V
    .registers 5

    .line 1782
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureStartTimeHelper:Lcn/codemao/android/sketch/utils/TimerHelper;

    if-nez v0, :cond_12

    .line 1783
    new-instance v0, Lcn/codemao/android/sketch/utils/TimerHelper;

    const-wide/16 v1, 0x14

    new-instance v3, Lcn/codemao/android/sketch/view/SketchViewV4$1;

    invoke-direct {v3, p0}, Lcn/codemao/android/sketch/view/SketchViewV4$1;-><init>(Lcn/codemao/android/sketch/view/SketchViewV4;)V

    invoke-direct {v0, v1, v2, v3}, Lcn/codemao/android/sketch/utils/TimerHelper;-><init>(JLcn/codemao/android/sketch/utils/TimerHelper$TimeProcessor;)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureStartTimeHelper:Lcn/codemao/android/sketch/utils/TimerHelper;

    .line 1806
    :cond_12
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureStartTimeHelper:Lcn/codemao/android/sketch/utils/TimerHelper;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/utils/TimerHelper;->startTime()V

    return-void
.end method

.method private toggerShow()V
    .registers 2

    .line 895
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowToolbar:Z

    if-eqz v0, :cond_d

    .line 896
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchClickListener:Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;->onMove()V

    const/4 v0, 0x0

    .line 897
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowToolbar:Z

    goto :goto_15

    .line 899
    :cond_d
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchClickListener:Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;->onUP()V

    const/4 v0, 0x1

    .line 900
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowToolbar:Z

    :goto_15
    return-void
.end method

.method private updateAllOffset(FFZ)V
    .registers 13

    .line 1174
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDx:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDx:F

    .line 1175
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDy:F

    add-float/2addr v0, p2

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDy:F

    const/4 v0, 0x1

    .line 1176
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->needUpdatePen:Z

    .line 1177
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 1181
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v2

    const/high16 v3, 0x42b40000  # 90.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2d

    neg-float v2, p1

    move v3, v2

    move v2, p2

    goto :goto_49

    .line 1185
    :cond_2d
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v2

    const/high16 v3, 0x43340000  # 180.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3a

    neg-float v2, p1

    neg-float v3, p2

    goto :goto_49

    .line 1188
    :cond_3a
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v2

    const/high16 v3, 0x43870000  # 270.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_47

    neg-float v2, p2

    move v3, p1

    goto :goto_49

    :cond_47
    move v2, p1

    move v3, p2

    .line 1193
    :goto_49
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v4

    const/16 v5, 0x63

    if-eq v4, v5, :cond_63

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_59

    goto :goto_63

    .line 1199
    :cond_59
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    neg-float v2, v2

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_13

    .line 1194
    :cond_63
    :goto_63
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    const/4 v4, 0x0

    .line 1195
    :goto_6b
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_13

    .line 1196
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/model/PointInfo;

    iget v6, v6, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v6, v2

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/codemao/android/sketch/model/PointInfo;

    iget v7, v7, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v7, v3

    invoke-virtual {v5, v6, v7}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    .line 1202
    :cond_9f
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 1203
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    neg-float v2, p1

    neg-float v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_a5

    :cond_bb
    if-eqz p3, :cond_d9

    .line 1206
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_c3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d9

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/StickerTextInfo;

    .line 1207
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    neg-float v1, p1

    neg-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_c3

    .line 1210
    :cond_d9
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz p3, :cond_e6

    .line 1211
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    neg-float v0, p1

    neg-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 1213
    :cond_e6
    iget-object p3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    neg-float v0, p1

    neg-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 1214
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget p3, v3, Lcn/codemao/android/sketch/model/CenterPointInfo;->x:F

    sub-float v5, p3, p1

    iget p1, v3, Lcn/codemao/android/sketch/model/CenterPointInfo;->y:F

    sub-float v6, p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcn/codemao/android/sketch/RectHelper;->updateCenterPotin(Lcn/codemao/android/sketch/model/CenterPointInfo;Landroid/graphics/RectF;FFII)V

    return-void
.end method

.method private updateAllScale(FZ)V
    .registers 14

    const/4 v0, 0x1

    .line 1219
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->needUpdatePen:Z

    .line 1220
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    const/high16 v3, 0x40000000  # 2.0f

    if-eqz v1, :cond_94

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 1222
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v4

    const/16 v5, 0x63

    if-eq v4, v5, :cond_39

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_29

    goto :goto_39

    .line 1229
    :cond_29
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v1, p1, v2, v3}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FII)V

    goto :goto_9

    .line 1223
    :cond_39
    :goto_39
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getTextScale()F

    move-result v4

    mul-float v4, v4, p1

    invoke-virtual {v1, v4}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setTextScale(F)V

    .line 1224
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    const/4 v4, 0x0

    .line 1225
    :goto_4a
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 1226
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/model/PointInfo;

    iget v6, v6, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    mul-float v6, v6, p1

    sub-float v7, p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v7

    div-float/2addr v8, v3

    sub-float/2addr v6, v8

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/codemao/android/sketch/model/PointInfo;

    iget v8, v8, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    mul-float v8, v8, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v7, v7, v9

    div-float/2addr v7, v3

    sub-float/2addr v8, v7

    invoke-virtual {v5, v6, v8}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 1233
    :cond_94
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 1234
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v1, p1, v4, v5}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FII)V

    goto :goto_9a

    :cond_b6
    if-eqz p2, :cond_dd

    .line 1237
    iget-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_be
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dd

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/StickerTextInfo;

    .line 1238
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v1, p1, v4, v5}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FII)V

    .line 1239
    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setScale(F)V

    goto :goto_be

    .line 1242
    :cond_dd
    iget-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz p2, :cond_f0

    .line 1243
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p2, p1, v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FII)V

    .line 1245
    :cond_f0
    iget-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p2, p1, v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FII)V

    .line 1246
    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget p2, v5, Lcn/codemao/android/sketch/model/CenterPointInfo;->x:F

    mul-float p2, p2, p1

    sub-float v0, p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    div-float/2addr v1, v3

    sub-float v7, p2, v1

    iget-object p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget p2, p2, Lcn/codemao/android/sketch/model/CenterPointInfo;->y:F

    mul-float p1, p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float v0, v0, p2

    div-float/2addr v0, v3

    sub-float v8, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lcn/codemao/android/sketch/RectHelper;->updateCenterPotin(Lcn/codemao/android/sketch/model/CenterPointInfo;Landroid/graphics/RectF;FFII)V

    return-void
.end method


# virtual methods
.method public addEditBitmap(Landroid/graphics/Bitmap;)V
    .registers 6

    .line 1427
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_23

    .line 1428
    new-instance v0, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/16 v2, 0xb

    invoke-direct {v0, v2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;-><init>(I)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 1429
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmapRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1430
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->initBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_71

    .line 1432
    :cond_23
    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1433
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmapRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1434
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 1435
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 1436
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 1437
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v2

    .line 1438
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 p1, 0x1

    .line 1439
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->needUpdatePen:Z

    .line 1440
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->reset()V

    .line 1441
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_71
    return-void
.end method

.method public addFigure(I)V
    .registers 9

    .line 1381
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isAddingView:Z

    if-nez v0, :cond_d2

    const/4 v0, 0x1

    .line 1382
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isAddingView:Z

    .line 1383
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowFigureHelp:Z

    const/16 v1, 0x7d2

    .line 1384
    iput v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    const/4 v1, 0x0

    .line 1385
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingLine:Z

    .line 1386
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchClickListener:Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;

    if-eqz v1, :cond_17

    .line 1387
    invoke-interface {v1}, Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;->onStopDrawingLine()V

    .line 1389
    :cond_17
    new-instance v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-direct {v1, p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;-><init>(I)V

    .line 1390
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureColor:I

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1391
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result p1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_6f

    .line 1392
    iget p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->screenWitdh:I

    int-to-double v2, p1

    const-wide v4, 0x3fd3333333333333L  # 0.3

    mul-double v2, v2, v4

    double-to-float p1, v2

    const/high16 v2, 0x41000000  # 8.0f

    div-float/2addr p1, v2

    float-to-double v2, p1

    const-wide v4, 0x3febb645a1cac083L  # 0.866

    mul-double v2, v2, v4

    double-to-float v2, v2

    .line 1394
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr p1, v5

    sub-float/2addr v4, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    div-float/2addr v2, v5

    sub-float/2addr v6, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr p1, v2

    invoke-virtual {v3, v4, v6, v5, p1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_a6

    .line 1396
    :cond_6f
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->screenWitdh:I

    div-int/lit8 v3, v3, 0x40

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->screenWitdh:I

    div-int/lit8 v4, v4, 0x40

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->screenWitdh:I

    div-int/lit8 v5, v5, 0x40

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->screenWitdh:I

    div-int/lit8 v6, v6, 0x40

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1399
    :goto_a6
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureIndex:I

    .line 1401
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    iput v1, p1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->lastSelectFigureIndex:I

    .line 1402
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    iget v1, p1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iput-object v0, p1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 1403
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->startFigureAnimition()V

    :cond_d2
    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .registers 6

    .line 1411
    new-instance v0, Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->screenWitdh:I

    div-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcn/codemao/android/sketch/model/StickerTextInfo;-><init>(Ljava/lang/String;FFF)V

    .line 1412
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1413
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getBackGroundPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textBackGroundColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1414
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->updateRect()V

    .line 1415
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1416
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextIndex:I

    .line 1417
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    iget v2, p1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/StickerTextInfo;

    iput-object v0, p1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    const/4 p1, 0x2

    .line 1418
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    .line 1419
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    .line 1420
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isTextInputing:Z

    const/4 p1, 0x0

    .line 1421
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingPen:Z

    .line 1422
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public checkCenterBitmap()Z
    .registers 7

    .line 1472
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPointBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 1473
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/codemao/android/sketch/R$mipmap;->icn_center_point:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPointBitmap:Landroid/graphics/Bitmap;

    .line 1474
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget-object v2, v2, Lcn/codemao/android/sketch/model/CenterPointInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v1, v1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1476
    :cond_24
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingPen:Z

    .line 1477
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    .line 1478
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->scale:F

    const/high16 v2, 0x3f800000  # 1.0f

    div-float v0, v2, v0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllScale(FZ)V

    .line 1479
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasLeft:F

    sub-float/2addr v4, v5

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasTop:F

    sub-float/2addr v0, v5

    invoke-direct {p0, v4, v0, v3}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllOffset(FFZ)V

    .line 1480
    iput v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->scale:F

    const/4 v0, 0x0

    .line 1481
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDx:F

    .line 1482
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDy:F

    .line 1483
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->getFinalBitmapRect()V

    .line 1484
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_60

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_60

    const/4 v1, 0x1

    :cond_60
    return v1
.end method

.method public clearAllPath()V
    .registers 4

    .line 1257
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1258
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_11

    .line 1259
    iput v2, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureIndex:I

    .line 1260
    iput v2, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->lastSelectFigureIndex:I

    .line 1261
    iput-object v1, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 1263
    :cond_11
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    if-eqz v0, :cond_19

    .line 1264
    iput v2, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextIndex:I

    .line 1265
    iput-object v1, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    :cond_19
    const/4 v0, 0x0

    .line 1267
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowFigureHelp:Z

    .line 1268
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public clearTextContent()V
    .registers 3

    const/4 v0, 0x0

    .line 1250
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    .line 1251
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1252
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    const/4 v1, -0x1

    iput v1, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextIndex:I

    const/4 v1, 0x0

    .line 1253
    iput-object v1, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    return-void
.end method

.method public copyTextView()V
    .registers 4

    .line 1351
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    if-eqz v0, :cond_2e

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    if-eqz v0, :cond_2e

    .line 1352
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->copy()Lcn/codemao/android/sketch/model/StickerTextInfo;

    move-result-object v0

    .line 1353
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1354
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextIndex:I

    .line 1355
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    iget v2, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerTextInfo;

    iput-object v1, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    .line 1356
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2e
    return-void
.end method

.method public deleteFigure()V
    .registers 3

    .line 1811
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isAddingView:Z

    if-eqz v0, :cond_5

    return-void

    .line 1814
    :cond_5
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    const/16 v1, 0x7d2

    if-ne v0, v1, :cond_3f

    .line 1815
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureIndex:I

    if-ltz v0, :cond_3f

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 1816
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingLine:Z

    if-eqz v0, :cond_22

    const/16 v0, 0x4e32

    .line 1817
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    goto :goto_26

    :cond_22
    const/16 v0, 0x7d1

    .line 1819
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    .line 1821
    :goto_26
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1822
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v1, -0x1

    .line 1823
    iput v1, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureIndex:I

    .line 1824
    iput v1, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->lastSelectFigureIndex:I

    const/4 v0, 0x0

    .line 1825
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowFigureHelp:Z

    .line 1826
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3f
    return-void
.end method

.method public flip(FZZ)V
    .registers 11

    .line 339
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mBackgroundVO:Lcn/codemao/android/sketch/model/BackgroundVO;

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/model/BackgroundVO;->setRotate(F)V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_5f

    .line 342
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mBackgroundVO:Lcn/codemao/android/sketch/model/BackgroundVO;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BackgroundVO;->getRotate()F

    move-result v0

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->fitFlip(F)V

    .line 344
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backLeftTop:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v0, v1, v2, p1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 345
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v0, v1, v2, p1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 346
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backRightTop:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v0, v1, v2, p1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 347
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backRightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v0, v1, v2, p1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    :cond_5f
    if-eqz p2, :cond_a2

    .line 351
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mBackgroundVO:Lcn/codemao/android/sketch/model/BackgroundVO;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BackgroundVO;->setScaleX()V

    .line 352
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXRectf(Landroid/graphics/RectF;F)V

    .line 353
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backLeftTop:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 354
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backRightTop:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 355
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 356
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backRightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    :cond_a2
    if-eqz p3, :cond_e5

    .line 361
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mBackgroundVO:Lcn/codemao/android/sketch/model/BackgroundVO;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BackgroundVO;->setScaleY()V

    .line 362
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYRectf(Landroid/graphics/RectF;F)V

    .line 363
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backLeftTop:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 364
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backRightTop:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 365
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 366
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backRightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 370
    :cond_e5
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_eb
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v2, 0x6

    const/16 v3, 0x63

    if-eqz p2, :cond_144

    .line 373
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setScaleX()V

    .line 374
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXRectf(Landroid/graphics/RectF;F)V

    .line 375
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v4

    if-eq v4, v3, :cond_125

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_11a

    goto :goto_125

    :cond_11a
    const/high16 v4, 0x43340000  # 180.0f

    .line 380
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v4}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmRotateAngle(F)V

    goto :goto_144

    .line 376
    :cond_125
    :goto_125
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_144

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/PointInfo;

    .line 377
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    goto :goto_12d

    .line 384
    :cond_144
    :goto_144
    invoke-virtual {v1, p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setFlipX(Z)V

    const/high16 v4, 0x43b40000  # 360.0f

    if-eqz p3, :cond_192

    .line 386
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setScaleY()V

    .line 387
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYRectf(Landroid/graphics/RectF;F)V

    .line 388
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v5

    if-eq v5, v3, :cond_173

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_169

    goto :goto_173

    .line 393
    :cond_169
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v2

    sub-float v2, v4, v2

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmRotateAngle(F)V

    goto :goto_192

    .line 389
    :cond_173
    :goto_173
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_192

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    .line 390
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-static {v3, v5}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    goto :goto_17b

    .line 396
    :cond_192
    :goto_192
    invoke-virtual {v1, p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setFlipY(Z)V

    .line 397
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v2

    add-float/2addr v2, p1

    rem-float/2addr v2, v4

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setCavasRotate(F)V

    goto/16 :goto_eb

    :cond_1a0
    const/4 p1, 0x1

    .line 399
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->needUpdatePen:Z

    return-void
.end method

.method public getCenterPoint()Lcn/codemao/android/sketch/model/CenterPointInfo;
    .registers 2

    .line 1867
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    return-object v0
.end method

.method public getCutoutBitmapInfo()Lcn/codemao/android/sketch/model/CutoutBitmapInfo;
    .registers 5

    .line 1584
    new-instance v0, Lcn/codemao/android/sketch/model/CutoutBitmapInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/CutoutBitmapInfo;-><init>()V

    .line 1585
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->getCutBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_d

    const/4 v0, 0x0

    return-object v0

    .line 1589
    :cond_d
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/model/CutoutBitmapInfo;->setScale(F)V

    .line 1590
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->finalRectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v2, v2, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    .line 1591
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/model/CutoutBitmapInfo;->setCutOutX(F)V

    .line 1592
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->finalRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/model/CutoutBitmapInfo;->setCutOutY(F)V

    .line 1593
    invoke-static {}, Lcn/codemao/android/sketch/utils/EditorBitmapCache;->getInstance()Lcn/codemao/android/sketch/utils/EditorBitmapCache;

    move-result-object v2

    invoke-static {v1}, Lcn/codemao/android/sketch/utils/BitmapUtil;->removeTransparency(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v3, "INPUT_BITMAP"

    invoke-virtual {v2, v3, v1}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getEditCenterPoint()Lcn/codemao/android/sketch/model/CenterPointInfo;
    .registers 5

    .line 1858
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget v1, v0, Lcn/codemao/android/sketch/model/CenterPointInfo;->x:F

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/CenterPointInfo;->setFinalX(F)V

    .line 1859
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget v1, v0, Lcn/codemao/android/sketch/model/CenterPointInfo;->y:F

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/CenterPointInfo;->setFinalY(F)V

    .line 1860
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmapRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 1861
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget v2, v1, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalX:F

    mul-float v2, v2, v0

    iput v2, v1, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalX:F

    .line 1862
    iget v2, v1, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalY:F

    mul-float v2, v2, v0

    iput v2, v1, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalY:F

    return-object v1
.end method

.method public getFinalBackGroud()Lcn/codemao/android/sketch/model/FinalBgEditInfo;
    .registers 11

    .line 1703
    new-instance v0, Lcn/codemao/android/sketch/model/FinalBgEditInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/FinalBgEditInfo;-><init>()V

    .line 1704
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/FinalBgEditInfo;->setStageRect(Landroid/graphics/RectF;)V

    .line 1705
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 1706
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    .line 1707
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const v4, 0x440c8000  # 562.0f

    div-float/2addr v4, v3

    .line 1708
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v3, v3, v4

    .line 1709
    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v5, v5, v4

    mul-float v1, v1, v4

    .line 1710
    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/FinalBgEditInfo;->setDx(F)V

    mul-float v2, v2, v4

    .line 1711
    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/model/FinalBgEditInfo;->setDy(F)V

    float-to-int v1, v3

    float-to-int v2, v5

    .line 1712
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1713
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1714
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    const/4 v3, 0x1

    .line 1715
    invoke-direct {p0, v4, v3}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllScale(FZ)V

    .line 1716
    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget v7, v6, Landroid/graphics/RectF;->left:F

    neg-float v7, v7

    .line 1717
    iget v6, v6, Landroid/graphics/RectF;->top:F

    neg-float v6, v6

    neg-float v8, v7

    neg-float v9, v6

    .line 1718
    invoke-direct {p0, v8, v9, v3}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllOffset(FFZ)V

    .line 1719
    invoke-direct {p0, v2}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawBackground(Landroid/graphics/Canvas;)V

    .line 1720
    invoke-direct {p0, v2}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawPens(Landroid/graphics/Canvas;)V

    .line 1721
    :goto_76
    iget-object v8, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_8c

    .line 1722
    iget-object v8, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-direct {p0, v2, v8}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawText(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerTextInfo;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_76

    .line 1724
    :cond_8c
    invoke-direct {p0, v7, v6, v3}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllOffset(FFZ)V

    const/high16 v2, 0x3f800000  # 1.0f

    div-float/2addr v2, v4

    .line 1725
    invoke-direct {p0, v2, v3}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllScale(FZ)V

    .line 1726
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1727
    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/FinalBgEditInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public getFinalBackGroundDrawBitmap()Landroid/graphics/Bitmap;
    .registers 14

    const/4 v0, 0x0

    .line 1640
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingPen:Z

    .line 1641
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    .line 1642
    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasWidth:F

    const v2, 0x440c8000  # 562.0f

    div-float/2addr v2, v1

    const/high16 v1, 0x3f800000  # 1.0f

    mul-float v3, v2, v1

    .line 1645
    iget v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->scale:F

    div-float/2addr v3, v4

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllScale(FZ)V

    .line 1646
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasLeft:F

    iget v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRight:F

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasTop:F

    iget v8, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasBottom:F

    div-float/2addr v8, v7

    add-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-direct {p0, v3, v5, v4}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllOffset(FFZ)V

    .line 1647
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3c

    .line 1648
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->initPenBitmap()V

    .line 1650
    :cond_3c
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v3}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawPens(Landroid/graphics/Canvas;)V

    const/4 v3, 0x0

    .line 1651
    :goto_42
    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5a

    .line 1652
    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-direct {p0, v5, v6}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawText(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerTextInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 1654
    :cond_5a
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v3}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawTranslateRect(Landroid/graphics/Canvas;)V

    .line 1655
    iput v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->scale:F

    const/4 v3, 0x0

    .line 1656
    iput v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDx:F

    .line 1657
    iput v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDy:F

    .line 1659
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backDrawBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_88

    const/16 v3, 0x232

    const/16 v5, 0x384

    .line 1660
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backDrawBitmap:Landroid/graphics/Bitmap;

    .line 1661
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backDrawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backDrawCavas:Landroid/graphics/Canvas;

    .line 1662
    new-instance v5, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v6, 0x3

    invoke-direct {v5, v0, v6}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1664
    :cond_88
    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backDrawCavas:Landroid/graphics/Canvas;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, 0x440c8000  # 562.0f

    const/high16 v11, 0x44610000  # 900.0f

    iget-object v12, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->cavasPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1665
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backDrawCavas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    neg-float v6, v6

    iget v5, v5, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v6, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    div-float/2addr v1, v2

    .line 1666
    invoke-direct {p0, v1, v4}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllScale(FZ)V

    .line 1667
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0, v0, v1, v4}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllOffset(FFZ)V

    .line 1668
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1669
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backDrawBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFinalSkectchBitmap()Landroid/graphics/Bitmap;
    .registers 10

    .line 1600
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPointBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 1601
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/codemao/android/sketch/R$mipmap;->icn_center_point:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPointBitmap:Landroid/graphics/Bitmap;

    .line 1602
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget-object v2, v2, Lcn/codemao/android/sketch/model/CenterPointInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v1, v1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1604
    :cond_24
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingPen:Z

    .line 1605
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    const v0, 0x440c8000  # 562.0f

    .line 1606
    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasWidth:F

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000  # 1.0f

    mul-float v3, v0, v2

    .line 1608
    iget v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->scale:F

    div-float/2addr v3, v4

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllScale(FZ)V

    .line 1609
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasLeft:F

    iget v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRight:F

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasTop:F

    iget v8, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasBottom:F

    div-float/2addr v8, v7

    add-float/2addr v6, v8

    sub-float/2addr v5, v6

    invoke-direct {p0, v3, v5, v4}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllOffset(FFZ)V

    .line 1611
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5f

    .line 1612
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->initPenBitmap()V

    .line 1614
    :cond_5f
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v3}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawPens(Landroid/graphics/Canvas;)V

    .line 1615
    :goto_64
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7c

    .line 1616
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-direct {p0, v3, v5}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawText(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerTextInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 1618
    :cond_7c
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawTranslateRect(Landroid/graphics/Canvas;)V

    .line 1619
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->getFinalBitmapRect()V

    .line 1620
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_cd

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_9a

    goto :goto_cd

    .line 1629
    :cond_9a
    iput v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->scale:F

    .line 1630
    iput v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDx:F

    .line 1631
    iput v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDy:F

    div-float/2addr v2, v0

    .line 1632
    invoke-direct {p0, v2, v4}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllScale(FZ)V

    .line 1633
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0, v0, v1, v4}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllOffset(FFZ)V

    .line 1634
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1635
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcn/codemao/android/sketch/utils/BitmapUtil;->removeTransparency(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1621
    :cond_cd
    :goto_cd
    iput v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->scale:F

    .line 1622
    iput v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDx:F

    .line 1623
    iput v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDy:F

    div-float/2addr v2, v0

    .line 1624
    invoke-direct {p0, v2, v4}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllScale(FZ)V

    .line 1625
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0, v0, v1, v4}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllOffset(FFZ)V

    .line 1626
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPaintType()I
    .registers 2

    .line 1580
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->paintType:I

    return v0
.end method

.method public getSelectText()Lcn/codemao/android/sketch/model/StickerTextInfo;
    .registers 2

    .line 1576
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    return-object v0
.end method

.method public initCavasSize(FF)V
    .registers 3

    .line 1771
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasWidth:F

    .line 1772
    iput p2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasHeight:F

    return-void
.end method

.method public initEditBitmapSize()V
    .registers 13

    .line 231
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz v0, :cond_ff

    .line 233
    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasWidth:F

    const v2, 0x440c8000  # 562.0f

    div-float/2addr v1, v2

    .line 234
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 235
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    int-to-float v2, v0

    .line 237
    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasWidth:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_32

    int-to-float v2, v1

    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasHeight:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_81

    .line 238
    :cond_32
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit16 v0, v0, 0x384

    div-int/lit16 v0, v0, 0x232

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_67

    .line 239
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasHeight:F

    float-to-int v1, v0

    .line 240
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int v0, v0, v1

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 241
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/2addr v0, v2

    goto :goto_81

    .line 243
    :cond_67
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasWidth:F

    float-to-int v0, v0

    .line 244
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v1, v1, v0

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    .line 247
    :cond_81
    :goto_81
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v0, v0

    add-float v3, v2, v0

    .line 249
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v1, v1

    add-float/2addr v1, v4

    .line 252
    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v5}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 253
    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget v5, v6, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalX:F

    mul-float v5, v5, v0

    iput v5, v6, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalX:F

    .line 254
    iget v5, v6, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalY:F

    mul-float v5, v5, v0

    iput v5, v6, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalY:F

    .line 255
    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v8, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget v8, v8, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalX:F

    add-float/2addr v8, v0

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v9, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget v9, v9, Lcn/codemao/android/sketch/model/CenterPointInfo;->finalY:F

    sub-float v9, v0, v9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-virtual/range {v5 .. v11}, Lcn/codemao/android/sketch/RectHelper;->updateCenterPotin(Lcn/codemao/android/sketch/model/CenterPointInfo;Landroid/graphics/RectF;FFII)V

    .line 256
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmapRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v5}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v6}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 257
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_ff
    return-void
.end method

.method public isDrawingLine()Z
    .registers 2

    .line 1871
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingLine:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 4

    .line 1732
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isBackgroundDraw:Z

    const/4 v1, 0x0

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isBackground:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz v0, :cond_e

    goto :goto_20

    .line 1735
    :cond_e
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_20

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_20

    const/4 v1, 0x1

    :cond_20
    :goto_20
    return v1
.end method

.method public onDestroy()V
    .registers 2

    .line 1891
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 1892
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1894
    :cond_7
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backDrawBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    .line 1895
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1898
    :cond_e
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPointBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    .line 1899
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1901
    :cond_15
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->rectHelper:Lcn/codemao/android/sketch/RectHelper;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/RectHelper;->onDestroy()V

    .line 1902
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTimerHelper:Lcn/codemao/android/sketch/utils/TimerHelper;

    if-eqz v0, :cond_21

    .line 1903
    invoke-virtual {v0}, Lcn/codemao/android/sketch/utils/TimerHelper;->stopTime()V

    .line 1904
    :cond_21
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureStartTimeHelper:Lcn/codemao/android/sketch/utils/TimerHelper;

    if-eqz v0, :cond_28

    .line 1905
    invoke-virtual {v0}, Lcn/codemao/android/sketch/utils/TimerHelper;->stopTime()V

    :cond_28
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .line 263
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->drawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 265
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    if-nez v0, :cond_4d

    .line 266
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    .line 267
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isBackground:Z

    if-nez v0, :cond_4d

    .line 268
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasWidth:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasLeft:F

    .line 269
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasHeight:F

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasTop:F

    .line 270
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasWidth:F

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRight:F

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasHeight:F

    add-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasBottom:F

    .line 272
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasLeft:F

    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasTop:F

    iget v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRight:F

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 276
    :cond_4d
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isBackground:Z

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-nez v0, :cond_5c

    .line 277
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->cavasPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 279
    :cond_5c
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->editImageInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_6c

    .line 280
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isEditBitmapInit:Z

    if-nez v0, :cond_6c

    .line 281
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isEditBitmapInit:Z

    .line 282
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->needUpdatePen:Z

    .line 283
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->initEditBitmapSize()V

    .line 286
    :cond_6c
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_73

    .line 287
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->initPenBitmap()V

    .line 291
    :cond_73
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isBackground:Z

    if-eqz v0, :cond_80

    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isInit:Z

    if-eqz v0, :cond_80

    .line 292
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawBackground(Landroid/graphics/Canvas;)V

    .line 295
    :cond_80
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->needUpdatePen:Z

    if-eqz v0, :cond_8a

    .line 296
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawPens(Landroid/graphics/Canvas;)V

    goto :goto_8c

    .line 298
    :cond_8a
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->needUpdatePen:Z

    .line 301
    :goto_8c
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_97

    .line 302
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawTexts()V

    .line 305
    :cond_97
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    if-ne v0, v1, :cond_9e

    .line 306
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawFigures()V

    .line 309
    :cond_9e
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->drawTranslateRect(Landroid/graphics/Canvas;)V

    .line 311
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 313
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_de

    .line 314
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/CenterPointInfo;->leftPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 315
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/CenterPointInfo;->topPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 316
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/CenterPointInfo;->rightPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 317
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/CenterPointInfo;->bottomPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 318
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPointBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget-object v3, v1, Lcn/codemao/android/sketch/model/CenterPointInfo;->rect:Landroid/graphics/Rect;

    iget-object v1, v1, Lcn/codemao/android/sketch/model/CenterPointInfo;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 321
    :cond_de
    iget-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isBackground:Z

    if-eqz v0, :cond_143

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mSrcBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_143

    .line 322
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mStagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 323
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backGroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 324
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageRect:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backGroundPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v9, 0x0

    .line 325
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageRect:Landroid/graphics/RectF;

    iget v10, v0, Landroid/graphics/RectF;->top:F

    iget v11, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v1, 0x3f800000  # 1.0f

    add-float v12, v0, v1

    iget-object v13, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backGroundPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 326
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v6, v0, v1

    iget-object v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backGroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 327
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v11, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v12, v0

    iget-object v13, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backGroundPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_143
    const/4 p1, 0x0

    .line 329
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isInit:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    .line 727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 728
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 729
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 730
    iget-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canTouch:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1f

    if-ne v0, v4, :cond_1e

    .line 732
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchClickListener:Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;

    if-eqz p1, :cond_1e

    const/16 v0, -0x63

    .line 733
    invoke-interface {p1, v0}, Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;->onHideKeyBoard(I)V

    :cond_1e
    return v4

    :cond_1f
    const/4 v3, 0x5

    if-ne v0, v3, :cond_4c

    .line 742
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v4, :cond_4c

    iget-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isTextInputing:Z

    if-nez v3, :cond_4c

    .line 743
    iput-boolean v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isScaling:Z

    .line 744
    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    if-nez v3, :cond_4c

    .line 745
    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->paintType:I

    const/16 v5, 0x3e9

    if-eq v3, v5, :cond_3c

    iget-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mCanEraser:Z

    if-eqz v3, :cond_47

    .line 746
    :cond_3c
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPointInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_47

    .line 747
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->saveDrawingPath()V

    .line 749
    :cond_47
    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 755
    :cond_4c
    iget-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isScaling:Z

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/high16 v8, 0x40000000  # 2.0f

    if-eqz v3, :cond_15f

    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    if-eq v3, v5, :cond_15f

    .line 756
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->movePathUtils:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/utils/MovePathUtils;->getGestureDetector()Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 757
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->movePathUtils:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/utils/MovePathUtils;->getScaleDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    if-eq v0, v4, :cond_7c

    if-eq v0, v6, :cond_71

    goto/16 :goto_21e

    .line 813
    :cond_71
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchClickListener:Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;

    if-eqz p1, :cond_21e

    .line 814
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;->onMove()V

    .line 815
    iput-boolean v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowToolbar:Z

    goto/16 :goto_21e

    .line 761
    :cond_7c
    iget-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isBackground:Z

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    if-nez p1, :cond_ea

    .line 762
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasWidth:F

    mul-float v3, v2, v8

    cmpl-float p1, p1, v3

    if-lez p1, :cond_a0

    .line 763
    iput v8, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->scale:F

    mul-float v2, v2, v8

    .line 764
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v2, p1

    invoke-direct {p0, v2, v4}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllScale(FZ)V

    goto :goto_b8

    .line 765
    :cond_a0
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasWidth:F

    cmpg-float p1, p1, v2

    if-gez p1, :cond_b8

    .line 766
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->scale:F

    .line 767
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v2, p1

    invoke-direct {p0, v2, v4}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllScale(FZ)V

    .line 770
    :cond_b8
    :goto_b8
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasLeft:F

    cmpl-float v3, v0, v2

    if-lez v3, :cond_c4

    :goto_c2
    sub-float/2addr v0, v2

    goto :goto_ce

    .line 772
    :cond_c4
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRight:F

    cmpg-float v3, v0, v2

    if-gez v3, :cond_cd

    goto :goto_c2

    :cond_cd
    const/4 v0, 0x0

    .line 776
    :goto_ce
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasTop:F

    cmpl-float v5, v2, v3

    if-lez v5, :cond_d9

    sub-float v1, v2, v3

    goto :goto_e3

    .line 778
    :cond_d9
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasBottom:F

    cmpg-float v3, p1, v2

    if-gez v3, :cond_e3

    sub-float v1, p1, v2

    .line 781
    :cond_e3
    :goto_e3
    invoke-direct {p0, v0, v1, v4}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllOffset(FFZ)V

    .line 782
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_152

    .line 784
    :cond_ea
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasWidth:F

    mul-float v3, v2, v8

    cmpl-float p1, p1, v3

    if-lez p1, :cond_107

    .line 785
    iput v8, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->scale:F

    mul-float v2, v2, v8

    .line 786
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v2, p1

    invoke-direct {p0, v2, v4}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllScale(FZ)V

    goto :goto_11f

    .line 787
    :cond_107
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iget v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasWidth:F

    cmpg-float p1, p1, v2

    if-gez p1, :cond_11f

    .line 788
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->scale:F

    .line 789
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v2, p1

    invoke-direct {p0, v2, v4}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllScale(FZ)V

    .line 792
    :cond_11f
    :goto_11f
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->stageRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v0, v3

    if-lez v5, :cond_12d

    :goto_12b
    sub-float/2addr v0, v3

    goto :goto_137

    .line 794
    :cond_12d
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v5, v0, v3

    if-gez v5, :cond_136

    goto :goto_12b

    :cond_136
    const/4 v0, 0x0

    .line 797
    :goto_137
    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v3, v5

    if-lez v6, :cond_142

    sub-float v1, v3, v5

    goto :goto_14c

    .line 799
    :cond_142
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, p1, v2

    if-gez v3, :cond_14c

    sub-float v1, p1, v2

    .line 802
    :cond_14c
    :goto_14c
    invoke-direct {p0, v0, v1, v4}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllOffset(FFZ)V

    .line 803
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 806
    :goto_152
    iput-boolean v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isScaling:Z

    .line 807
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchClickListener:Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;

    if-eqz p1, :cond_21e

    .line 808
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;->onUP()V

    .line 809
    iput-boolean v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowToolbar:Z

    goto/16 :goto_21e

    :cond_15f
    if-eqz v0, :cond_20a

    if-eq v0, v4, :cond_19b

    if-eq v0, v6, :cond_167

    goto/16 :goto_21a

    .line 831
    :cond_167
    iget p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->startX:F

    sub-float p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v8

    if-gez p1, :cond_185

    iget p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->startY:F

    sub-float p1, v2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v8

    if-gez p1, :cond_185

    iget-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isClick:Z

    if-eqz p1, :cond_185

    goto/16 :goto_21a

    .line 834
    :cond_185
    iput-boolean v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isClick:Z

    .line 836
    iget p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    if-eqz p1, :cond_18d

    if-ne p1, v5, :cond_196

    .line 837
    :cond_18d
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchClickListener:Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;

    if-eqz p1, :cond_196

    .line 838
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;->onMove()V

    .line 839
    iput-boolean v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowToolbar:Z

    .line 842
    :cond_196
    invoke-direct {p0, v1, v2}, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchEventMove(FF)V

    goto/16 :goto_21a

    .line 846
    :cond_19b
    iget-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isClick:Z

    const/16 v0, 0x4e32

    const/4 v3, -0x1

    if-eqz p1, :cond_1c6

    .line 847
    iget p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    if-eq p1, v3, :cond_1a8

    if-nez p1, :cond_1ab

    .line 848
    :cond_1a8
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->toggerShow()V

    .line 850
    :cond_1ab
    iget p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    if-ne p1, v4, :cond_1f7

    .line 851
    iget p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    const/16 v3, 0x7d8

    if-eq p1, v3, :cond_1c2

    iget-boolean v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isFigureSlectClick:Z

    if-eqz v6, :cond_1ba

    goto :goto_1c2

    :cond_1ba
    if-ne p1, v0, :cond_1f7

    .line 854
    iput v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    .line 855
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->toggerShow()V

    goto :goto_1f7

    .line 852
    :cond_1c2
    :goto_1c2
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->toggerShow()V

    goto :goto_1f7

    .line 859
    :cond_1c6
    iget p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    if-ne p1, v3, :cond_1dd

    .line 860
    iget-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->moveStartIsShow:Z

    if-eqz p1, :cond_1d6

    .line 861
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchClickListener:Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;->onUP()V

    .line 862
    iput-boolean v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowToolbar:Z

    goto :goto_1dd

    .line 864
    :cond_1d6
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchClickListener:Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;->onMove()V

    .line 865
    iput-boolean v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowToolbar:Z

    .line 868
    :cond_1dd
    :goto_1dd
    iget p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    if-ne p1, v6, :cond_1e8

    .line 869
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchClickListener:Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;->onUP()V

    .line 870
    iput-boolean v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowToolbar:Z

    .line 872
    :cond_1e8
    iget p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    if-ne p1, v4, :cond_1f7

    .line 873
    iget p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    if-ne p1, v0, :cond_1f7

    .line 874
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTimerHelper:Lcn/codemao/android/sketch/utils/TimerHelper;

    const-wide/16 v8, 0x1f4

    invoke-virtual {p1, v8, v9}, Lcn/codemao/android/sketch/utils/TimerHelper;->startDelayTime(J)V

    .line 878
    :cond_1f7
    :goto_1f7
    iget p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    if-ne p1, v5, :cond_202

    .line 879
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchClickListener:Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;->onUP()V

    .line 880
    iput-boolean v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowToolbar:Z

    .line 882
    :cond_202
    invoke-direct {p0, v1, v2}, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchEventUp(FF)V

    .line 883
    iput-boolean v7, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isFigureSlectClick:Z

    .line 884
    iput-boolean v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isClick:Z

    goto :goto_21a

    .line 823
    :cond_20a
    iget-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowToolbar:Z

    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->moveStartIsShow:Z

    .line 824
    iput v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->startX:F

    .line 825
    iput v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->startY:F

    .line 826
    invoke-direct {p0, v1, v2}, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchEventDown(FF)V

    .line 827
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mTimerHelper:Lcn/codemao/android/sketch/utils/TimerHelper;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/utils/TimerHelper;->stopTime()V

    .line 887
    :goto_21a
    iput v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lastX:F

    .line 888
    iput v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->lastY:F

    :cond_21e
    :goto_21e
    return v4
.end method

.method public revokePen()V
    .registers 5

    .line 1297
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_30

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_30

    .line 1298
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1299
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1300
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1301
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2b

    .line 1302
    iput-boolean v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mCanEraser:Z

    .line 1304
    :cond_2b
    iput-boolean v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->needUpdatePen:Z

    .line 1305
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_30
    return-void
.end method

.method public saveFigure()V
    .registers 8

    .line 1311
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 1312
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->initPenBitmap()V

    .line 1314
    :cond_7
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mDrawingList:Ljava/util/List;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 1315
    :goto_f
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_159

    .line 1316
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_155

    .line 1317
    new-instance v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, v3}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1318
    new-instance v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-direct {v2, v3, v4}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1319
    new-instance v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v5}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, v5}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1320
    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v5}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v6}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v6

    invoke-static {v1, v4, v5, v6}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 1321
    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v5}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v6}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v6

    invoke-static {v2, v4, v5, v6}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 1322
    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v5}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v6}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 1323
    iget-object v4, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v4}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1324
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1325
    iget-object v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_155
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_f

    :cond_159
    const/4 v0, 0x1

    .line 1328
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mCanEraser:Z

    const/4 v1, -0x1

    .line 1329
    invoke-virtual {p0, v1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setMode(I)V

    .line 1330
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mFigureEditList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/16 v2, 0x7d1

    .line 1331
    iput v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    .line 1332
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    if-eqz v2, :cond_174

    .line 1333
    iput v1, v2, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureIndex:I

    .line 1334
    iput v1, v2, Lcn/codemao/android/sketch/model/SelectFigureInfo;->lastSelectFigureIndex:I

    const/4 v1, 0x0

    .line 1335
    iput-object v1, v2, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 1337
    :cond_174
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->needUpdatePen:Z

    .line 1338
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBacGroundColor(I)V
    .registers 3

    .line 1570
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->backGroundColor:I

    .line 1571
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->cavasPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1572
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 333
    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mSrcBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setBackgroundDraw(Z)V
    .registers 2

    .line 1767
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isBackgroundDraw:Z

    return-void
.end method

.method public setCanTouch(Z)V
    .registers 2

    .line 1853
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canTouch:Z

    return-void
.end method

.method public setCenterXY(FF)V
    .registers 7

    const/4 v0, 0x3

    .line 1833
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    const/4 v0, 0x1

    .line 1834
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isCenterEdited:Z

    .line 1835
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPointBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 1836
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/codemao/android/sketch/R$mipmap;->icn_center_point:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPointBitmap:Landroid/graphics/Bitmap;

    .line 1837
    iget-object v2, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    iget-object v2, v2, Lcn/codemao/android/sketch/model/CenterPointInfo;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v3, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v1, v1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1839
    :cond_2a
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingPen:Z

    .line 1840
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    const/high16 v0, 0x3f800000  # 1.0f

    .line 1841
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->scale:F

    const/4 v0, 0x0

    .line 1842
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDx:F

    .line 1843
    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->canvasDy:F

    .line 1844
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/model/CenterPointInfo;->setFinalX(F)V

    .line 1845
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->centerPoint:Lcn/codemao/android/sketch/model/CenterPointInfo;

    invoke-virtual {p1, p2}, Lcn/codemao/android/sketch/model/CenterPointInfo;->setFinalY(F)V

    return-void
.end method

.method public setChangeText(Ljava/lang/String;)V
    .registers 3

    .line 1342
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    if-eqz v0, :cond_34

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    if-eqz v0, :cond_34

    .line 1343
    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setmText(Ljava/lang/String;)V

    .line 1344
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sel:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget v0, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/codemao/android/sketch/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1345
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object p1, p1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->updateRect()V

    .line 1347
    :cond_34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFigureColor(I)V
    .registers 4

    .line 1559
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureColor:I

    .line 1560
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    const/16 v1, 0x7d2

    if-ne v0, v1, :cond_17

    .line 1561
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    if-eqz v0, :cond_17

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz v0, :cond_17

    .line 1562
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1565
    :cond_17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIsDrawingLine(Z)V
    .registers 3

    .line 1752
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingLine:Z

    const/4 v0, 0x0

    .line 1753
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowFigureHelp:Z

    if-eqz p1, :cond_16

    const/16 p1, 0x4e32

    .line 1755
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    .line 1756
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectFigureInfo:Lcn/codemao/android/sketch/model/SelectFigureInfo;

    const/4 v0, 0x0

    iput-object v0, p1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v0, -0x1

    .line 1757
    iput v0, p1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->lastSelectFigureIndex:I

    .line 1758
    iput v0, p1, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureIndex:I

    goto :goto_1a

    :cond_16
    const/16 p1, 0x7d1

    .line 1761
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    .line 1763
    :goto_1a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMode(I)V
    .registers 5

    .line 1447
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mode:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_12

    .line 1449
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    .line 1450
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingPen:Z

    const/16 p1, 0x7d1

    .line 1451
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->figureMode:I

    .line 1452
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/SketchViewV4;->clearAllPath()V

    goto :goto_37

    :cond_12
    const/4 v1, 0x1

    if-nez p1, :cond_1f

    .line 1454
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    const/16 p1, 0x3e9

    .line 1455
    invoke-virtual {p0, p1}, Lcn/codemao/android/sketch/view/SketchViewV4;->setPaintType(I)V

    .line 1456
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingPen:Z

    goto :goto_37

    :cond_1f
    const/4 v2, 0x3

    if-ne p1, v2, :cond_27

    .line 1458
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isDrawingPen:Z

    .line 1459
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    goto :goto_37

    :cond_27
    if-ne p1, v1, :cond_2c

    .line 1461
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    goto :goto_37

    :cond_2c
    const/4 v2, 0x2

    if-ne p1, v2, :cond_32

    .line 1463
    iput-boolean v1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    goto :goto_37

    :cond_32
    const/4 v1, 0x5

    if-ne p1, v1, :cond_37

    .line 1465
    iput-boolean v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isShowTextHelp:Z

    .line 1467
    :cond_37
    :goto_37
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOffset(FF)V
    .registers 4

    const/4 v0, 0x1

    .line 1747
    invoke-direct {p0, p1, p2, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllOffset(FFZ)V

    .line 1748
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnTouchClickListener(Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;)V
    .registers 2

    .line 1508
    iput-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->onTouchClickListener:Lcn/codemao/android/sketch/view/SketchViewV4$OnTouchClickListener;

    return-void
.end method

.method public setPaintColor(I)V
    .registers 3

    .line 1525
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setPaintType(I)V
    .registers 3

    .line 1512
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->paintType:I

    if-eq v0, p1, :cond_2c

    .line 1513
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->paintType:I

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_19

    .line 1515
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1516
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_2c

    :cond_19
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_2c

    .line 1518
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->clearMode:Landroid/graphics/Xfermode;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1519
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mEraserSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public setPaintWitdh(I)V
    .registers 4

    .line 1529
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->mPenSize:I

    .line 1530
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->paintType:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_e

    .line 1531
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->penPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_e
    return-void
.end method

.method public setScale(F)V
    .registers 3

    .line 1740
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->scale:F

    mul-float v0, v0, p1

    iput v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->scale:F

    const/4 v0, 0x1

    .line 1741
    invoke-direct {p0, p1, v0}, Lcn/codemao/android/sketch/view/SketchViewV4;->updateAllScale(FZ)V

    .line 1742
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .registers 4

    .line 1542
    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textColorType:I

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_9

    .line 1543
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textColor:I

    goto :goto_b

    .line 1545
    :cond_9
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textBackGroundColor:I

    .line 1547
    :goto_b
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object p1, p1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    if-eqz p1, :cond_2a

    .line 1548
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1549
    iget-object p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object p1, p1, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getBackGroundPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textBackGroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1550
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2a
    return-void
.end method

.method public setTextColor(Lcn/codemao/android/sketch/model/TextVO;)V
    .registers 3

    .line 1535
    iget-object v0, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->selectTextInfo:Lcn/codemao/android/sketch/model/SelectTextInfo;

    iget-object v0, v0, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    if-eqz v0, :cond_c

    .line 1536
    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setColor(Lcn/codemao/android/sketch/model/TextVO;)V

    .line 1537
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_c
    return-void
.end method

.method public setTextColorType(I)V
    .registers 2

    .line 1555
    iput p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->textColorType:I

    return-void
.end method

.method public setTextInputing(Z)V
    .registers 2

    .line 1776
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/SketchViewV4;->isTextInputing:Z

    .line 1777
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
