.class public final Lcom/codemao/midi/view/midiview/MidiView;
.super Landroid/view/View;
.source "MidiView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;,
        Lcom/codemao/midi/view/midiview/MidiView$OnScrollListener;,
        Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;,
        Lcom/codemao/midi/view/midiview/MidiView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMidiView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MidiView.kt\ncom/codemao/midi/view/midiview/MidiView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2019:1\n1657#2,2:2020\n1657#2,3:2022\n1659#2:2025\n1648#2,2:2026\n1657#2,3:2028\n1648#2,2:2031\n1657#2,3:2033\n1648#2,2:2036\n1648#2,2:2038\n1648#2,2:2040\n1657#2,2:2042\n1657#2,3:2044\n1659#2:2047\n1648#2,2:2048\n1657#2,3:2050\n1657#2,2:2053\n1657#2,3:2055\n1659#2:2058\n1657#2,3:2059\n1648#2,2:2062\n*E\n*S KotlinDebug\n*F\n+ 1 MidiView.kt\ncom/codemao/midi/view/midiview/MidiView\n*L\n516#1,2:2020\n516#1,3:2022\n516#1:2025\n765#1,2:2026\n827#1,3:2028\n850#1,2:2031\n919#1,3:2033\n988#1,2:2036\n996#1,2:2038\n1114#1,2:2040\n1217#1,2:2042\n1217#1,3:2044\n1217#1:2047\n1232#1,2:2048\n1757#1,3:2050\n1776#1,2:2053\n1776#1,3:2055\n1776#1:2058\n1993#1,3:2059\n2004#1,2:2062\n*E\n"
.end annotation


# instance fields
.field private activeItemNoteRect:Landroid/graphics/RectF;

.field private arcRectPath:Landroid/graphics/Path;

.field private autoScrollToEdgeAnim:Landroid/animation/ValueAnimator;

.field private final backgroundColor:I

.field private final backgroundRectPaint:Landroid/graphics/Paint;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private contentHeight:F

.field private contentWidth:F

.field private final dp2:F

.field private final dp4:F

.field private dragNoteModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/midi/view/midiview/NoteModel;",
            ">;"
        }
    .end annotation
.end field

.field private final emptyNoteRectPaint:Landroid/graphics/Paint;

.field private final emptyNoteRectStrokeColor:I

.field private hasChange:Z

.field private hasShowPiano:Z

.field private hasStartPlayMidi:Z

.field private isFling:Z

.field private final isPad:Z

.field private isTickBgHiding:Z

.field private isTickBgShowing:Z

.field private itemDecorationWidth:F

.field private itemHeight:F

.field private itemNoteClickStateIndex:I

.field private itemNoteRect:Landroid/graphics/RectF;

.field private itemRect:Landroid/graphics/RectF;

.field private itemWidth:F

.field private mAnimatorAlpha:Landroid/animation/ValueAnimator;

.field private final mMaxFlintVelocity:I

.field private final mMinFlintVelocity:I

.field private mPlayLineOffset:F

.field private mPlayMoveX:F

.field private final mScroller:Landroid/widget/OverScroller;

.field private mTickBgAlpha:I

.field private final mTickIndexBgPaint$delegate:Lkotlin/Lazy;

.field private final mTickIndexTxtPaint$delegate:Lkotlin/Lazy;

.field private final mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final maxTickCount:I

.field private final multipleChoicePaint:Landroid/graphics/Paint;

.field private final multipleChoiceRectColor:I

.field private multipleChoiceRectF:Landroid/graphics/RectF;

.field private final multipleChoiceStrokeColor:I

.field private multipleChoiceStrokeRectColor:I

.field private noteModelIndexLocation:[Ljava/lang/Integer;

.field private final noteRectClickColor1:I

.field private final noteRectColor1:I

.field private final noteRectColor3:I

.field private final noteRectDecorationAnim:Landroid/animation/ValueAnimator;

.field private final noteRectPaint:Landroid/graphics/Paint;

.field private final noteRectShadowColor:I

.field private final noteRectStretchShadowColor:I

.field private noteTypeItemWidth:F

.field private noteTypeSpace:F

.field private offsetMoveX:F

.field private offsetMoveY:F

.field private onMidiNoteEventListener:Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;

.field private onPlayingAnimStopListener:Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;

.field private onScrollListener:Lcom/codemao/midi/view/midiview/MidiView$OnScrollListener;

.field private final playNoteRunnableForClick:Ljava/lang/Runnable;

.field private playProgressAnim:Landroid/animation/ValueAnimator;

.field private final playProgressLineColor:I

.field private final playProgressNoteLightBitmap:Landroid/graphics/Bitmap;

.field private final playProgressNoteLightBitmapTopOffset:F

.field private playProgressOffset:Ljava/lang/Float;

.field private final playProgressPaint:Landroid/graphics/Paint;

.field private final playProgressShader:Landroid/graphics/Shader;

.field private final playProgressShaderMatrix:Landroid/graphics/Matrix;

.field private playProgressSnowBitmapArraysReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final preActionDownPoint:[F

.field private preActionPointId:I

.field private preSystemMillsForSnowGif:J

.field private final sheetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/codemao/midi/view/midiview/NoteModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private touchMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/midi/view/midiview/MidiView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/midi/view/midiview/MidiView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/midi/view/midiview/MidiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 161
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v2, "#FF3F1579"

    .line 47
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->backgroundColor:I

    const-string v2, "#8146CC"

    .line 48
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteRectColor1:I

    const-string v2, "#A667F7"

    .line 49
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteRectClickColor1:I

    const-string v2, "#4B1B8C"

    .line 50
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteRectColor3:I

    const-string v2, "#3E1773"

    .line 51
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteRectShadowColor:I

    const-string v2, "#6F48A3"

    .line 52
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteRectStretchShadowColor:I

    const-string v2, "#4D4ECFFF"

    .line 53
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoiceRectColor:I

    const-string v2, "#994AE5F7"

    .line 54
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoiceStrokeColor:I

    const-string v2, "#FFFFFF"

    .line 55
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoiceStrokeRectColor:I

    const-string v3, "#A889DE"

    .line 56
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->emptyNoteRectStrokeColor:I

    .line 57
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressLineColor:I

    .line 59
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressShaderMatrix:Landroid/graphics/Matrix;

    const/4 v2, -0x1

    .line 64
    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    .line 66
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->backgroundRectPaint:Landroid/graphics/Paint;

    .line 67
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v0, Lcom/codemao/midi/view/midiview/MidiView;->bitmapPaint:Landroid/graphics/Paint;

    .line 68
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteRectPaint:Landroid/graphics/Paint;

    .line 69
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, v0, Lcom/codemao/midi/view/midiview/MidiView;->emptyNoteRectPaint:Landroid/graphics/Paint;

    .line 70
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoicePaint:Landroid/graphics/Paint;

    .line 71
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressPaint:Landroid/graphics/Paint;

    .line 74
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    .line 75
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    .line 76
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemRect:Landroid/graphics/RectF;

    .line 77
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoiceRectF:Landroid/graphics/RectF;

    .line 78
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    .line 79
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->activeItemNoteRect:Landroid/graphics/RectF;

    .line 80
    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteClickStateIndex:I

    .line 84
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->arcRectPath:Landroid/graphics/Path;

    const/16 v2, 0x168

    .line 87
    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->maxTickCount:I

    const/4 v2, 0x2

    new-array v8, v2, [F

    .line 89
    iput-object v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    new-array v8, v2, [I

    const-string v9, "#ffffffff"

    .line 104
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    aput v9, v8, v10

    const-string v9, "#00ffffff"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v5

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    const-wide/16 v8, 0xc8

    .line 105
    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteRectDecorationAnim:Landroid/animation/ValueAnimator;

    .line 108
    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->mTouchSlop:I

    .line 123
    sget-object v8, Lcom/codemao/midi/view/midiview/MidiView$mTickIndexBgPaint$2;->INSTANCE:Lcom/codemao/midi/view/midiview/MidiView$mTickIndexBgPaint$2;

    invoke-static {v8}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v8

    iput-object v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->mTickIndexBgPaint$delegate:Lkotlin/Lazy;

    .line 140
    new-instance v8, Lcom/codemao/midi/view/midiview/MidiView$mTickIndexTxtPaint$2;

    invoke-direct {v8, v0}, Lcom/codemao/midi/view/midiview/MidiView$mTickIndexTxtPaint$2;-><init>(Lcom/codemao/midi/view/midiview/MidiView;)V

    invoke-static {v8}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v8

    iput-object v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->mTickIndexTxtPaint$delegate:Lkotlin/Lazy;

    .line 153
    sget-object v8, Lcom/codemao/midi/util/MidiConfigManager;->INSTANCE:Lcom/codemao/midi/util/MidiConfigManager;

    invoke-virtual {v8}, Lcom/codemao/midi/util/MidiConfigManager;->isPad()Z

    move-result v8

    iput-boolean v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->isPad:Z

    .line 1358
    new-instance v9, Lcom/codemao/midi/view/midiview/MidiView$playNoteRunnableForClick$1;

    invoke-direct {v9, v0}, Lcom/codemao/midi/view/midiview/MidiView$playNoteRunnableForClick$1;-><init>(Lcom/codemao/midi/view/midiview/MidiView;)V

    iput-object v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->playNoteRunnableForClick:Ljava/lang/Runnable;

    const/high16 v9, -0x40800000  # -1.0f

    .line 1851
    iput v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->mPlayLineOffset:F

    const/high16 v9, 0x42100000  # 36.0f

    .line 166
    invoke-static {v1, v9}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result v9

    const/high16 v11, 0x42000000  # 32.0f

    .line 167
    invoke-static {v1, v11}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result v11

    const/high16 v12, 0x41e00000  # 28.0f

    .line 168
    invoke-static {v1, v12}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result v12

    const/high16 v13, 0x41100000  # 9.0f

    .line 169
    invoke-static {v1, v13}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    const/high16 v13, 0x40800000  # 4.0f

    .line 170
    invoke-static {v1, v13}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result v14

    iput v14, v0, Lcom/codemao/midi/view/midiview/MidiView;->dp4:F

    const/high16 v14, 0x40000000  # 2.0f

    .line 171
    invoke-static {v1, v14}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result v14

    iput v14, v0, Lcom/codemao/midi/view/midiview/MidiView;->dp2:F

    const/high16 v15, 0x40400000  # 3.0f

    .line 172
    invoke-static {v1, v15}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result v15

    const/high16 v10, 0x3f800000  # 1.0f

    .line 173
    invoke-static {v1, v10}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result v16

    const/high16 v2, 0x42800000  # 64.0f

    if-eqz v8, :cond_150

    .line 175
    invoke-static {v1, v2}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result v12

    :cond_150
    iput v12, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeItemWidth:F

    if-eqz v8, :cond_158

    .line 176
    invoke-static {v1, v13}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result v15

    :cond_158
    iput v15, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeSpace:F

    if-eqz v8, :cond_162

    const/high16 v11, 0x42600000  # 56.0f

    .line 178
    invoke-static {v1, v11}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result v11

    :cond_162
    iput v11, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    if-eqz v8, :cond_16a

    .line 179
    invoke-static {v1, v2}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result v9

    :cond_16a
    iput v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    if-eqz v8, :cond_172

    .line 180
    invoke-static {v1, v10}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result v16

    :cond_172
    move/from16 v2, v16

    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    if-eqz v1, :cond_17c

    .line 181
    invoke-static/range {p1 .. p1}, Lcom/codemao/midi/MidiPlayerActivityKt;->getScalePixelsFloat(Landroid/content/Context;)F

    move-result v10

    :cond_17c
    if-nez v8, :cond_194

    const/high16 v2, 0x42480000  # 50.0f

    .line 183
    invoke-static {v1, v2}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result v2

    .line 185
    iget v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    mul-float v9, v10, v8

    cmpl-float v9, v9, v2

    if-lez v9, :cond_18f

    div-float v10, v2, v8

    goto :goto_191

    :cond_18f
    mul-float v2, v10, v8

    :goto_191
    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    goto :goto_19a

    .line 192
    :cond_194
    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    mul-float v2, v2, v10

    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    .line 195
    :goto_19a
    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeItemWidth:F

    mul-float v2, v2, v10

    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeItemWidth:F

    .line 196
    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    mul-float v2, v2, v10

    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    .line 197
    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    mul-float v2, v2, v10

    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    .line 198
    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeSpace:F

    mul-float v2, v2, v10

    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeSpace:F

    .line 200
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 202
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 203
    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v6, v4, [F

    fill-array-data v6, :array_250

    const/high16 v4, 0x41200000  # 10.0f

    invoke-direct {v2, v6, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 204
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 207
    new-instance v2, Landroid/graphics/LinearGradient;

    const/16 v16, 0x0

    const/high16 v17, 0x43fa0000  # 500.0f

    .line 210
    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    const/high16 v19, 0x43fa0000  # 500.0f

    const-string v4, "#00000000"

    .line 212
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    const-string v4, "#33FFDE53"

    .line 213
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    .line 214
    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v15, v2

    move/from16 v18, v3

    .line 207
    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressShader:Landroid/graphics/Shader;

    .line 217
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/codemao/midi/R$mipmap;->midi_note_light:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "BitmapFactory.decodeReso…R.mipmap.midi_note_light)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressNoteLightBitmap:Landroid/graphics/Bitmap;

    .line 218
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    sub-float/2addr v2, v3

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressNoteLightBitmapTopOffset:F

    .line 220
    invoke-direct/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->initPlayProgressSnowBitmapArrays()V

    .line 223
    new-instance v2, Lcom/codemao/midi/view/midiview/MidiView$1;

    invoke-direct {v2, v0}, Lcom/codemao/midi/view/midiview/MidiView$1;-><init>(Lcom/codemao/midi/view/midiview/MidiView;)V

    invoke-virtual {v5, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 232
    new-instance v2, Landroid/widget/OverScroller;

    invoke-direct {v2, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->mScroller:Landroid/widget/OverScroller;

    .line 233
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    const-string v2, "ViewConfiguration.get(getContext())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->mMaxFlintVelocity:I

    .line 234
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->mMinFlintVelocity:I

    const/4 v1, 0x0

    .line 236
    iput-boolean v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->hasChange:Z

    return-void

    nop

    :array_250
    .array-data 4
        0x41200000  # 10.0f
        0x40a00000  # 5.0f
    .end array-data
.end method

.method public static final synthetic access$addNoteRectWithPoint(Lcom/codemao/midi/view/midiview/MidiView;FF)[Ljava/lang/Integer;
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/codemao/midi/view/midiview/MidiView;->addNoteRectWithPoint(FF)[Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$deleteNoteRectWithIndex(Lcom/codemao/midi/view/midiview/MidiView;II)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/codemao/midi/view/midiview/MidiView;->deleteNoteRectWithIndex(II)V

    return-void
.end method

.method public static final synthetic access$dragNoteModel(Lcom/codemao/midi/view/midiview/MidiView;FF)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModel(FF)V

    return-void
.end method

.method public static final synthetic access$getDragNoteModelList$p(Lcom/codemao/midi/view/midiview/MidiView;)Ljava/util/List;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMPlayMoveX$p(Lcom/codemao/midi/view/midiview/MidiView;)F
    .registers 1

    .line 21
    iget p0, p0, Lcom/codemao/midi/view/midiview/MidiView;->mPlayMoveX:F

    return p0
.end method

.method public static final synthetic access$getNoteModelIndexLocation$p(Lcom/codemao/midi/view/midiview/MidiView;)[Ljava/lang/Integer;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteModelIndexLocation:[Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic access$getOffsetMoveX$p(Lcom/codemao/midi/view/midiview/MidiView;)F
    .registers 1

    .line 21
    iget p0, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    return p0
.end method

.method public static final synthetic access$getOffsetMoveY$p(Lcom/codemao/midi/view/midiview/MidiView;)F
    .registers 1

    .line 21
    iget p0, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    return p0
.end method

.method public static final synthetic access$getPlayProgressOffset$p(Lcom/codemao/midi/view/midiview/MidiView;)Ljava/lang/Float;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressOffset:Ljava/lang/Float;

    return-object p0
.end method

.method public static final synthetic access$getPreActionDownPoint$p(Lcom/codemao/midi/view/midiview/MidiView;)[F
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    return-object p0
.end method

.method public static final synthetic access$notifyMultipleDelete(Lcom/codemao/midi/view/midiview/MidiView;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/codemao/midi/view/midiview/MidiView;->notifyMultipleDelete()V

    return-void
.end method

.method public static final synthetic access$notifyScrollOffset(Lcom/codemao/midi/view/midiview/MidiView;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/codemao/midi/view/midiview/MidiView;->notifyScrollOffset()V

    return-void
.end method

.method public static final synthetic access$setHasStartPlayMidi$p(Lcom/codemao/midi/view/midiview/MidiView;Z)V
    .registers 2

    .line 21
    iput-boolean p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->hasStartPlayMidi:Z

    return-void
.end method

.method public static final synthetic access$setMPlayLineOffset$p(Lcom/codemao/midi/view/midiview/MidiView;F)V
    .registers 2

    .line 21
    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->mPlayLineOffset:F

    return-void
.end method

.method public static final synthetic access$setMPlayMoveX$p(Lcom/codemao/midi/view/midiview/MidiView;F)V
    .registers 2

    .line 21
    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->mPlayMoveX:F

    return-void
.end method

.method public static final synthetic access$setMTickBgAlpha$p(Lcom/codemao/midi/view/midiview/MidiView;I)V
    .registers 2

    .line 21
    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->mTickBgAlpha:I

    return-void
.end method

.method public static final synthetic access$setMultipleChoiceStrokeRectColor$p(Lcom/codemao/midi/view/midiview/MidiView;I)V
    .registers 2

    .line 21
    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoiceStrokeRectColor:I

    return-void
.end method

.method public static final synthetic access$setNoteModelIndexLocation$p(Lcom/codemao/midi/view/midiview/MidiView;[Ljava/lang/Integer;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteModelIndexLocation:[Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic access$setOffsetMoveX$p(Lcom/codemao/midi/view/midiview/MidiView;F)V
    .registers 2

    .line 21
    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    return-void
.end method

.method public static final synthetic access$setOffsetMoveY$p(Lcom/codemao/midi/view/midiview/MidiView;F)V
    .registers 2

    .line 21
    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    return-void
.end method

.method public static final synthetic access$setPlayProgressOffset$p(Lcom/codemao/midi/view/midiview/MidiView;Ljava/lang/Float;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressOffset:Ljava/lang/Float;

    return-void
.end method

.method public static final synthetic access$setTickBgHiding$p(Lcom/codemao/midi/view/midiview/MidiView;Z)V
    .registers 2

    .line 21
    iput-boolean p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->isTickBgHiding:Z

    return-void
.end method

.method public static final synthetic access$setTickBgShowing$p(Lcom/codemao/midi/view/midiview/MidiView;Z)V
    .registers 2

    .line 21
    iput-boolean p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->isTickBgShowing:Z

    return-void
.end method

.method public static final synthetic access$setTouchMode$p(Lcom/codemao/midi/view/midiview/MidiView;I)V
    .registers 2

    .line 21
    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    return-void
.end method

.method private final addNoteRectWithPoint(FF)[Ljava/lang/Integer;
    .registers 19

    move-object/from16 v0, p0

    .line 944
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move/from16 v1, p2

    .line 945
    invoke-direct {v0, v1}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteTypeIndex(F)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_77

    .line 946
    iget-object v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_77

    .line 947
    iget-object v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 948
    invoke-direct/range {p0 .. p1}, Lcom/codemao/midi/view/midiview/MidiView;->getTick(F)I

    move-result v5

    .line 949
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 950
    invoke-virtual {v6}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickStart()I

    move-result v7

    if-gt v7, v5, :cond_28

    invoke-virtual {v6}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickEnd()I

    move-result v6

    add-int/lit8 v7, v5, 0x1

    if-lt v6, v7, :cond_28

    return-object v2

    .line 954
    :cond_43
    new-instance v2, Lcom/codemao/midi/view/midiview/NoteModel;

    add-int/lit8 v6, v5, 0x1

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1f8

    const/4 v15, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v15}, Lcom/codemao/midi/view/midiview/NoteModel;-><init>(IIILandroid/graphics/RectF;Lcom/codemao/midi/view/midiview/NoteType;ZIZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 955
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    iget-object v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 957
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v4, 0x0

    .line 958
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    :cond_77
    return-object v2
.end method

.method public static synthetic calcPlayLineX$default(Lcom/codemao/midi/view/midiview/MidiView;ZILjava/lang/Object;)F
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    .line 335
    :cond_5
    invoke-virtual {p0, p1}, Lcom/codemao/midi/view/midiview/MidiView;->calcPlayLineX(Z)F

    move-result p0

    return p0
.end method

.method private final cancelAutoScrollAnim()V
    .registers 2

    .line 1254
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->autoScrollToEdgeAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    const/4 v0, 0x0

    .line 1255
    iput-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->autoScrollToEdgeAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private final checkMultipleDrag(II)Z
    .registers 8

    .line 1305
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_b

    return v1

    :cond_b
    const/4 v0, 0x0

    .line 1307
    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, p2, :cond_29

    .line 1308
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 1310
    :cond_29
    iget-object p2, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 1311
    invoke-virtual {v3}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 1312
    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v4}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteTypeIndex(F)I

    move-result v4

    if-ne v4, p1, :cond_2f

    if-eqz v0, :cond_2f

    .line 1313
    invoke-virtual {v0}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickStart()I

    move-result v4

    invoke-virtual {v3}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickStart()I

    move-result v3

    if-ne v4, v3, :cond_2f

    return v2

    :cond_56
    return v1
.end method

.method private final clearAllNoteRectsInVisibleState()V
    .registers 5

    .line 1731
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1732
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/view/midiview/NoteModel;

    const/4 v3, 0x0

    .line 1733
    invoke-virtual {v2, v3}, Lcom/codemao/midi/view/midiview/NoteModel;->setInVisible(Z)V

    goto :goto_16

    :cond_27
    return-void
.end method

.method private final deleteInVisibleRect()V
    .registers 10

    .line 1217
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    .line 1658
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_19

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_19
    check-cast v3, Ljava/util/List;

    .line 1218
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1658
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    if-gez v6, :cond_36

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_36
    check-cast v7, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 1220
    invoke-virtual {v7}, Lcom/codemao/midi/view/midiview/NoteModel;->getInVisible()Z

    move-result v7

    if-eqz v7, :cond_4f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4f

    .line 1221
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4f
    move v6, v8

    goto :goto_25

    .line 1224
    :cond_51
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_57
    if-ltz v5, :cond_69

    .line 1225
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    goto :goto_57

    :cond_69
    move v2, v4

    goto :goto_8

    :cond_6b
    return-void
.end method

.method private final deleteNoteRectWithIndex(II)V
    .registers 4

    .line 937
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_1c

    .line 938
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 939
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1c
    return-void
.end method

.method private final dragNoteModel(FF)V
    .registers 12

    .line 1076
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 1077
    invoke-virtual {v5}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    if-eqz v5, :cond_1d

    goto :goto_22

    :cond_1d
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    .line 1078
    :goto_22
    iget v6, v5, Landroid/graphics/RectF;->left:F

    .line 1079
    iget v7, v5, Landroid/graphics/RectF;->right:F

    .line 1080
    iget v5, v5, Landroid/graphics/RectF;->top:F

    if-eqz v1, :cond_32

    .line 1082
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpg-float v8, v6, v8

    if-gez v8, :cond_36

    .line 1083
    :cond_32
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_36
    if-eqz v2, :cond_40

    .line 1085
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v7, v6

    if-lez v6, :cond_44

    .line 1086
    :cond_40
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :cond_44
    if-eqz v3, :cond_4e

    .line 1088
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_52

    .line 1089
    :cond_4e
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_52
    if-eqz v4, :cond_5c

    .line 1091
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_a

    .line 1092
    :cond_5c
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_a

    :cond_61
    const/4 v0, 0x0

    int-to-float v0, v0

    cmpg-float v5, p1, v0

    if-gez v5, :cond_72

    if-eqz v1, :cond_72

    .line 1098
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/codemao/midi/view/midiview/MidiView;->getMinDx(FF)F

    move-result p1

    goto :goto_80

    :cond_72
    cmpl-float v1, p1, v0

    if-lez v1, :cond_80

    if-eqz v2, :cond_80

    .line 1100
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/codemao/midi/view/midiview/MidiView;->getMinDx(FF)F

    move-result p1

    :cond_80
    :goto_80
    cmpg-float v1, p2, v0

    if-gez v1, :cond_8f

    if-eqz v3, :cond_8f

    .line 1107
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/codemao/midi/view/midiview/MidiView;->getMinDy(FF)F

    move-result p2

    goto :goto_9d

    :cond_8f
    cmpl-float v0, p2, v0

    if-lez v0, :cond_9d

    if-eqz v4, :cond_9d

    .line 1109
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/codemao/midi/view/midiview/MidiView;->getMinDy(FF)F

    move-result p2

    .line 1114
    :cond_9d
    :goto_9d
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    .line 2040
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 1115
    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getPreSheetIndex()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b7

    return-void

    .line 1118
    :cond_b7
    iget-object v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getPreSheetIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1119
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 1120
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1122
    :cond_cc
    invoke-direct {p0, v1, p1, p2}, Lcom/codemao/midi/view/midiview/MidiView;->upDateRectWithDrag(Lcom/codemao/midi/view/midiview/NoteModel;FF)V

    goto :goto_a3

    :cond_d0
    return-void
.end method

.method private final dragNoteRectWithDxDy(FFII)V
    .registers 7

    .line 1052
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_41

    .line 1053
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1054
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p4, :cond_44

    .line 1055
    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 1056
    invoke-direct {p0, p4, p1, p2}, Lcom/codemao/midi/view/midiview/MidiView;->upDateRectWithDrag(Lcom/codemao/midi/view/midiview/NoteModel;FF)V

    .line 1057
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 1058
    invoke-virtual {p4, p3}, Lcom/codemao/midi/view/midiview/NoteModel;->setPreSheetIndex(I)V

    const/4 p3, 0x0

    .line 1059
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/midi/view/midiview/NoteModel;

    invoke-virtual {p3}, Lcom/codemao/midi/view/midiview/NoteModel;->getNoteType()Lcom/codemao/midi/view/midiview/NoteType;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/codemao/midi/view/midiview/NoteModel;->setNoteType(Lcom/codemao/midi/view/midiview/NoteType;)V

    .line 1060
    iget-object p3, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    invoke-interface {v0, p4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_44

    .line 1065
    :cond_41
    invoke-direct {p0, p1, p2}, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModel(FF)V

    .line 1067
    :cond_44
    :goto_44
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1068
    invoke-direct {p0, p1, p2}, Lcom/codemao/midi/view/midiview/MidiView;->notifyAutoScroll(FF)V

    return-void
.end method

.method private final dragVisibleNoteRect(Landroid/graphics/Canvas;)V
    .registers 10

    .line 825
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_b3

    .line 826
    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_af

    .line 827
    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 1658
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_af

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_37

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_37
    check-cast v5, Lcom/codemao/midi/view/midiview/NoteModel;

    if-lez v4, :cond_ac

    .line 828
    invoke-virtual {v5}, Lcom/codemao/midi/view/midiview/NoteModel;->getInVisible()Z

    move-result v4

    if-nez v4, :cond_ac

    .line 829
    invoke-virtual {v5}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    if-nez v4, :cond_52

    .line 830
    invoke-virtual {v5}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickStart()I

    move-result v4

    invoke-virtual {v5}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickEnd()I

    move-result v7

    invoke-direct {p0, v5, v4, v7, v2}, Lcom/codemao/midi/view/midiview/MidiView;->updateRect(Lcom/codemao/midi/view/midiview/NoteModel;III)V

    .line 832
    :cond_52
    iget-object v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v7

    if-eqz v7, :cond_5b

    goto :goto_60

    :cond_5b
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    :goto_60
    invoke-virtual {v4, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 833
    invoke-virtual {v5}, Lcom/codemao/midi/view/midiview/NoteModel;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 834
    iget-object v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    invoke-direct {p0, v4}, Lcom/codemao/midi/view/midiview/MidiView;->isInDrawRound(Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 835
    iget-object v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiView;->dp2:F

    iget-object v7, p0, Lcom/codemao/midi/view/midiview/MidiView;->emptyNoteRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v5, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_ac

    .line 838
    :cond_7b
    iget-object v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteRectPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/midi/view/midiview/NoteModel;

    invoke-virtual {v5}, Lcom/codemao/midi/view/midiview/NoteModel;->getNoteType()Lcom/codemao/midi/view/midiview/NoteType;

    move-result-object v5

    if-nez v5, :cond_94

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_94
    invoke-virtual {v5}, Lcom/codemao/midi/view/midiview/NoteType;->getRectColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 839
    iget-object v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    invoke-direct {p0, v4}, Lcom/codemao/midi/view/midiview/MidiView;->isInDrawRound(Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 840
    iget-object v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiView;->dp2:F

    iget-object v7, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v5, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_ac
    :goto_ac
    move v4, v6

    goto/16 :goto_26

    :cond_af
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_b3
    return-void
.end method

.method private final drawBackground(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_7

    return-void

    .line 683
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    .line 684
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    .line 685
    iget-object v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_98

    .line 686
    iget-object v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v4, :cond_98

    .line 687
    iget v7, v0, Lcom/codemao/midi/view/midiview/MidiView;->maxTickCount:I

    if-ltz v7, :cond_7c

    const/4 v8, 0x0

    :goto_28
    if-lez v8, :cond_6a

    .line 689
    iget-object v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 690
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_50

    .line 692
    iget-object v10, v0, Lcom/codemao/midi/view/midiview/MidiView;->backgroundRectPaint:Landroid/graphics/Paint;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codemao/midi/view/midiview/NoteModel;

    invoke-virtual {v9}, Lcom/codemao/midi/view/midiview/NoteModel;->getNoteType()Lcom/codemao/midi/view/midiview/NoteType;

    move-result-object v9

    if-eqz v9, :cond_4b

    invoke-virtual {v9}, Lcom/codemao/midi/view/midiview/NoteType;->getBackgroundColor()I

    move-result v9

    goto :goto_4d

    :cond_4b
    iget v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteRectColor3:I

    :goto_4d
    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 694
    :cond_50
    iget-object v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemRect:Landroid/graphics/RectF;

    .line 697
    iget v10, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    add-float/2addr v10, v2

    .line 698
    iget v11, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    add-float/2addr v11, v3

    .line 694
    invoke-virtual {v9, v2, v3, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 700
    iget-object v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemRect:Landroid/graphics/RectF;

    invoke-direct {v0, v9}, Lcom/codemao/midi/view/midiview/MidiView;->isInDrawRound(Landroid/graphics/RectF;)Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 701
    iget-object v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemRect:Landroid/graphics/RectF;

    iget-object v10, v0, Lcom/codemao/midi/view/midiview/MidiView;->backgroundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_6a
    if-eqz v8, :cond_71

    .line 711
    iget v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    iget v10, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    goto :goto_75

    .line 708
    :cond_71
    iget v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeItemWidth:F

    iget v10, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeSpace:F

    :goto_75
    add-float/2addr v9, v10

    add-float/2addr v2, v9

    if-eq v8, v7, :cond_7c

    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    .line 715
    :cond_7c
    iget v7, v0, Lcom/codemao/midi/view/midiview/MidiView;->contentWidth:F

    cmpg-float v7, v7, v2

    if-gez v7, :cond_8a

    .line 716
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v2, v7

    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->contentWidth:F

    .line 718
    :cond_8a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    .line 719
    iget v7, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    iget v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    add-float/2addr v7, v8

    add-float/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 722
    :cond_98
    iget v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->contentHeight:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_a6

    .line 723
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->contentHeight:F

    .line 726
    :cond_a6
    iget-object v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_ad
    if-ge v4, v3, :cond_117

    .line 727
    iget v6, v0, Lcom/codemao/midi/view/midiview/MidiView;->maxTickCount:I

    if-ltz v6, :cond_10e

    const/4 v7, 0x0

    :goto_b4
    const/4 v8, 0x1

    if-le v7, v8, :cond_f6

    add-int/lit8 v8, v7, -0x1

    .line 728
    rem-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_f6

    .line 729
    iget-object v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemRect:Landroid/graphics/RectF;

    float-to-double v9, v2

    .line 730
    iget v11, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    float-to-double v12, v11

    const-wide/high16 v14, 0x3ff8000000000000L  # 1.5

    mul-double v12, v12, v14

    sub-double v12, v9, v12

    double-to-float v12, v12

    .line 731
    iget v13, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    neg-float v13, v13

    move/from16 v16, v6

    float-to-double v5, v11

    mul-double v5, v5, v14

    add-double/2addr v9, v5

    double-to-float v5, v9

    .line 733
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    sub-float/2addr v6, v9

    .line 729
    invoke-virtual {v8, v12, v13, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 735
    iget-object v5, v0, Lcom/codemao/midi/view/midiview/MidiView;->backgroundRectPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/codemao/midi/view/midiview/MidiView;->backgroundColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 736
    iget-object v5, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemRect:Landroid/graphics/RectF;

    invoke-direct {v0, v5}, Lcom/codemao/midi/view/midiview/MidiView;->isInDrawRound(Landroid/graphics/RectF;)Z

    move-result v5

    if-eqz v5, :cond_f8

    .line 737
    iget-object v5, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemRect:Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/codemao/midi/view/midiview/MidiView;->backgroundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_f8

    :cond_f6
    move/from16 v16, v6

    :cond_f8
    :goto_f8
    if-eqz v7, :cond_ff

    .line 746
    iget v5, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    iget v6, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    goto :goto_103

    .line 743
    :cond_ff
    iget v5, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeItemWidth:F

    iget v6, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeSpace:F

    :goto_103
    add-float/2addr v5, v6

    add-float/2addr v2, v5

    move/from16 v5, v16

    if-eq v7, v5, :cond_10e

    add-int/lit8 v7, v7, 0x1

    move v6, v5

    const/4 v5, 0x0

    goto :goto_b4

    .line 750
    :cond_10e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto :goto_ad

    :cond_117
    return-void
.end method

.method private final drawDecoration(Landroid/graphics/Canvas;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 891
    :cond_3
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    return-void

    .line 892
    :cond_9
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoiceRectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_19

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v2

    if-nez v0, :cond_19

    return-void

    .line 894
    :cond_19
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoicePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoiceRectColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 895
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoicePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 896
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoiceRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/codemao/midi/view/midiview/MidiView;->isInDrawRound(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 897
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoiceRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->dp4:F

    iget-object v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoicePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 900
    :cond_38
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoicePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoiceStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 901
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoicePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 902
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoicePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->dp2:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 903
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoiceRectF:Landroid/graphics/RectF;

    .line 904
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    sub-float/2addr v1, v2

    .line 905
    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v2

    .line 906
    iget v4, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v2

    .line 907
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v2

    .line 903
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 909
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoiceRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/codemao/midi/view/midiview/MidiView;->isInDrawRound(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 910
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoiceRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->dp4:F

    iget-object v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoicePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_71
    return-void
.end method

.method private final drawDragRect(Landroid/graphics/Canvas;)V
    .registers 8

    .line 850
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    .line 2031
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 851
    iget-object v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_1b

    goto :goto_20

    :cond_1b
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    :goto_20
    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 852
    iget-object v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteTypeIndex(F)I

    move-result v2

    .line 854
    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 855
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    .line 856
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 857
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 858
    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 859
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    .line 855
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 861
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    invoke-direct {p0, v1}, Lcom/codemao/midi/view/midiview/MidiView;->isInDrawRound(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 862
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->dp2:F

    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->emptyNoteRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 865
    :cond_56
    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_8a

    .line 866
    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getNoteType()Lcom/codemao/midi/view/midiview/NoteType;

    move-result-object v1

    if-eqz v1, :cond_6b

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteType;->getRectColor()I

    move-result v1

    goto :goto_87

    .line 867
    :cond_6b
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/view/midiview/NoteModel;

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getNoteType()Lcom/codemao/midi/view/midiview/NoteType;

    move-result-object v1

    if-nez v1, :cond_83

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_83
    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteType;->getRectColor()I

    move-result v1

    :goto_87
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 869
    :cond_8a
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    invoke-direct {p0, v1}, Lcom/codemao/midi/view/midiview/MidiView;->isInDrawRound(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 870
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->dp2:F

    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 873
    :cond_9b
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoicePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoiceStrokeRectColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 874
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoicePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 875
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoicePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->dp2:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 876
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    .line 877
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 878
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 879
    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 880
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    .line 876
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 882
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    invoke-direct {p0, v1}, Lcom/codemao/midi/view/midiview/MidiView;->isInDrawRound(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 883
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->dp2:F

    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoicePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_d0
    return-void
.end method

.method private final drawFloatingRect(Landroid/graphics/Canvas;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 756
    :cond_3
    invoke-direct {p0, p1}, Lcom/codemao/midi/view/midiview/MidiView;->drawShadowRect(Landroid/graphics/Canvas;)V

    .line 757
    invoke-direct {p0, p1}, Lcom/codemao/midi/view/midiview/MidiView;->dragVisibleNoteRect(Landroid/graphics/Canvas;)V

    .line 758
    invoke-direct {p0, p1}, Lcom/codemao/midi/view/midiview/MidiView;->drawDragRect(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private final drawLeftNoteTypeBar(Landroid/graphics/Canvas;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    if-nez v7, :cond_7

    return-void

    .line 620
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v8, v1

    .line 621
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    .line 622
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    move v6, v1

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v9, :cond_f6

    .line 623
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->arcRectPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 624
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->arcRectPath:Landroid/graphics/Path;

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 625
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->arcRectPath:Landroid/graphics/Path;

    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeItemWidth:F

    add-float/2addr v2, v8

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 626
    iget-object v11, v0, Lcom/codemao/midi/view/midiview/MidiView;->arcRectPath:Landroid/graphics/Path;

    .line 627
    iget v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeItemWidth:F

    add-float v2, v8, v1

    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    const/4 v4, 0x2

    int-to-float v4, v4

    mul-float v12, v3, v4

    sub-float v12, v2, v12

    add-float v14, v8, v1

    mul-float v3, v3, v4

    add-float v15, v6, v3

    const/high16 v16, 0x43870000  # 270.0f

    const/high16 v17, 0x42b40000  # 90.0f

    const/16 v18, 0x0

    move v13, v6

    .line 626
    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 634
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->arcRectPath:Landroid/graphics/Path;

    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeItemWidth:F

    add-float/2addr v2, v8

    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    add-float/2addr v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 635
    iget-object v11, v0, Lcom/codemao/midi/view/midiview/MidiView;->arcRectPath:Landroid/graphics/Path;

    .line 636
    iget v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeItemWidth:F

    add-float v2, v8, v1

    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    mul-float v12, v3, v4

    sub-float v12, v2, v12

    .line 637
    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    add-float v13, v6, v2

    mul-float v3, v3, v4

    sub-float/2addr v13, v3

    add-float v14, v8, v1

    add-float v15, v6, v2

    const/16 v16, 0x0

    .line 635
    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 643
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->arcRectPath:Landroid/graphics/Path;

    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    add-float/2addr v2, v6

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 644
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->arcRectPath:Landroid/graphics/Path;

    invoke-virtual {v1, v8, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 647
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->backgroundRectPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteClickStateIndex:I

    if-ne v2, v5, :cond_89

    .line 648
    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteRectClickColor1:I

    goto :goto_8b

    .line 650
    :cond_89
    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteRectColor1:I

    .line 647
    :goto_8b
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 653
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->arcRectPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->backgroundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 655
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->backgroundRectPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 658
    iget v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    add-float v3, v6, v1

    .line 659
    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeItemWidth:F

    add-float v11, v8, v2

    add-float/2addr v1, v6

    .line 660
    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    add-float v12, v1, v2

    .line 661
    iget-object v13, v0, Lcom/codemao/midi/view/midiview/MidiView;->backgroundRectPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v8

    move v14, v4

    move v4, v11

    move v11, v5

    move v5, v12

    move v12, v6

    move-object v6, v13

    .line 656
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 664
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/view/midiview/NoteModel;

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getNoteType()Lcom/codemao/midi/view/midiview/NoteType;

    move-result-object v1

    if-eqz v1, :cond_eb

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteType;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_eb

    .line 667
    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeItemWidth:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v14

    add-float/2addr v2, v8

    .line 668
    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v14

    add-float v6, v12, v3

    .line 669
    iget-object v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->bitmapPaint:Landroid/graphics/Paint;

    .line 665
    invoke-virtual {v7, v1, v2, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 672
    :cond_eb
    iget v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    add-float/2addr v1, v2

    add-float v6, v12, v1

    add-int/lit8 v5, v11, 0x1

    goto/16 :goto_1a

    :cond_f6
    return-void
.end method

.method private final drawPlayProgress(Landroid/graphics/Canvas;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    if-eqz v7, :cond_219

    .line 504
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressOffset:Ljava/lang/Float;

    if-eqz v1, :cond_219

    iget v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->mPlayLineOffset:F

    const/high16 v2, -0x40800000  # -1.0f

    cmpg-float v1, v1, v2

    if-nez v1, :cond_14

    goto/16 :goto_219

    .line 506
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 507
    iget-wide v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->preSystemMillsForSnowGif:J

    const-wide/16 v5, 0x0

    cmp-long v8, v3, v5

    if-nez v8, :cond_22

    .line 508
    iput-wide v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->preSystemMillsForSnowGif:J

    .line 510
    :cond_22
    iget-wide v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->preSystemMillsForSnowGif:J

    sub-long v3, v1, v3

    const/16 v5, 0x13

    int-to-long v5, v5

    cmp-long v10, v3, v5

    if-ltz v10, :cond_2f

    const/4 v3, 0x1

    goto :goto_30

    :cond_2f
    const/4 v3, 0x0

    :goto_30
    if-eqz v3, :cond_34

    .line 512
    iput-wide v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->preSystemMillsForSnowGif:J

    .line 515
    :cond_34
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressOffset:Ljava/lang/Float;

    if-nez v1, :cond_3b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3b
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->mPlayMoveX:F

    add-float/2addr v1, v2

    .line 516
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    .line 1658
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :goto_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_5d

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_5d
    check-cast v5, Ljava/util/List;

    .line 1658
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v11, 0x0

    :goto_64
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1a9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v11, 0x1

    if-gez v11, :cond_75

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_75
    check-cast v12, Lcom/codemao/midi/view/midiview/NoteModel;

    if-eqz v11, :cond_1a0

    .line 518
    invoke-virtual {v12}, Lcom/codemao/midi/view/midiview/NoteModel;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1a0

    .line 519
    invoke-virtual {v12}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v11

    if-eqz v11, :cond_1a0

    .line 521
    iget v14, v11, Landroid/graphics/RectF;->left:F

    cmpl-float v16, v1, v14

    if-ltz v16, :cond_133

    iget v15, v11, Landroid/graphics/RectF;->right:F

    cmpg-float v17, v1, v15

    if-gtz v17, :cond_133

    .line 522
    iget-object v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->activeItemNoteRect:Landroid/graphics/RectF;

    .line 523
    iget v10, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    add-float/2addr v14, v10

    iget v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->mPlayMoveX:F

    sub-float/2addr v14, v9

    move/from16 v18, v1

    .line 524
    iget v1, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v15, v10

    sub-float/2addr v15, v9

    .line 526
    iget v9, v11, Landroid/graphics/RectF;->bottom:F

    .line 522
    invoke-virtual {v8, v14, v1, v15, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 532
    invoke-virtual {v12}, Lcom/codemao/midi/view/midiview/NoteModel;->getCacheBitmap()Ljava/lang/ref/SoftReference;

    move-result-object v1

    if-eqz v1, :cond_b1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_b2

    :cond_b1
    const/4 v1, 0x0

    :goto_b2
    if-nez v1, :cond_de

    .line 533
    new-instance v1, Ljava/lang/ref/SoftReference;

    .line 535
    iget-object v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->activeItemNoteRect:Landroid/graphics/RectF;

    .line 536
    iget-object v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codemao/midi/view/midiview/NoteModel;

    invoke-virtual {v9}, Lcom/codemao/midi/view/midiview/NoteModel;->getNoteType()Lcom/codemao/midi/view/midiview/NoteType;

    move-result-object v9

    if-nez v9, :cond_d0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d0
    invoke-virtual {v9}, Lcom/codemao/midi/view/midiview/NoteType;->getActivatingRectColor()I

    move-result v9

    .line 534
    invoke-direct {v0, v8, v9}, Lcom/codemao/midi/view/midiview/MidiView;->generateActivatingRectBitmap(Landroid/graphics/RectF;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 533
    invoke-direct {v1, v8}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v12, v1}, Lcom/codemao/midi/view/midiview/NoteModel;->setCacheBitmap(Ljava/lang/ref/SoftReference;)V

    .line 540
    :cond_de
    invoke-virtual {v12}, Lcom/codemao/midi/view/midiview/NoteModel;->getCacheBitmap()Ljava/lang/ref/SoftReference;

    move-result-object v1

    if-eqz v1, :cond_eb

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    goto :goto_ec

    :cond_eb
    const/4 v1, 0x0

    :goto_ec
    if-eqz v1, :cond_111

    .line 543
    invoke-virtual {v12}, Lcom/codemao/midi/view/midiview/NoteModel;->getCacheBitmap()Ljava/lang/ref/SoftReference;

    move-result-object v1

    if-nez v1, :cond_f7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f7
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_100

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_100
    check-cast v1, Landroid/graphics/Bitmap;

    .line 544
    iget v8, v11, Landroid/graphics/RectF;->left:F

    iget v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    add-float/2addr v8, v9

    iget v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->dp4:F

    sub-float/2addr v8, v9

    .line 545
    iget v10, v11, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v9

    const/4 v9, 0x0

    .line 542
    invoke-virtual {v7, v1, v8, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 551
    :cond_111
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressNoteLightBitmap:Landroid/graphics/Bitmap;

    .line 552
    iget v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->mPlayLineOffset:F

    iget v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->dp2:F

    add-float/2addr v8, v9

    const/4 v9, 0x1

    int-to-float v10, v9

    sub-float/2addr v8, v10

    .line 553
    iget v9, v11, Landroid/graphics/RectF;->top:F

    iget v10, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressNoteLightBitmapTopOffset:F

    sub-float/2addr v9, v10

    .line 554
    iget-object v10, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressPaint:Landroid/graphics/Paint;

    .line 550
    invoke-virtual {v7, v1, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v3, :cond_141

    .line 556
    invoke-virtual {v12}, Lcom/codemao/midi/view/midiview/NoteModel;->getSnowAnimPNGCurrentIndex()I

    move-result v1

    const/4 v8, -0x2

    if-ne v1, v8, :cond_141

    const/4 v1, -0x1

    .line 557
    invoke-virtual {v12, v1}, Lcom/codemao/midi/view/midiview/NoteModel;->setSnowAnimPNGCurrentIndex(I)V

    goto :goto_141

    :cond_133
    move/from16 v18, v1

    const/4 v8, -0x2

    .line 561
    invoke-virtual {v12}, Lcom/codemao/midi/view/midiview/NoteModel;->getSnowAnimPNGCurrentIndex()I

    move-result v1

    const/16 v9, 0x15

    if-ne v1, v9, :cond_141

    .line 562
    invoke-virtual {v12, v8}, Lcom/codemao/midi/view/midiview/NoteModel;->setSnowAnimPNGCurrentIndex(I)V

    :cond_141
    :goto_141
    if-eqz v3, :cond_154

    .line 565
    invoke-virtual {v12}, Lcom/codemao/midi/view/midiview/NoteModel;->getSnowAnimPNGCurrentIndex()I

    move-result v1

    const/4 v8, -0x1

    if-lt v1, v8, :cond_154

    .line 566
    invoke-virtual {v12}, Lcom/codemao/midi/view/midiview/NoteModel;->getSnowAnimPNGCurrentIndex()I

    move-result v1

    const/4 v8, 0x1

    add-int/2addr v1, v8

    invoke-virtual {v12, v1}, Lcom/codemao/midi/view/midiview/NoteModel;->setSnowAnimPNGCurrentIndex(I)V

    goto :goto_155

    :cond_154
    const/4 v8, 0x1

    .line 568
    :goto_155
    invoke-virtual {v12}, Lcom/codemao/midi/view/midiview/NoteModel;->getSnowAnimPNGCurrentIndex()I

    move-result v1

    const/16 v9, 0x16

    if-lt v1, v9, :cond_162

    const/4 v1, 0x0

    .line 569
    invoke-virtual {v12, v1}, Lcom/codemao/midi/view/midiview/NoteModel;->setSnowAnimPNGCurrentIndex(I)V

    goto :goto_163

    :cond_162
    const/4 v1, 0x0

    .line 572
    :goto_163
    invoke-virtual {v12}, Lcom/codemao/midi/view/midiview/NoteModel;->getSnowAnimPNGCurrentIndex()I

    move-result v9

    if-gez v9, :cond_16a

    goto :goto_1a4

    :cond_16a
    const/16 v10, 0x15

    if-lt v10, v9, :cond_1a4

    .line 573
    iget-object v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressSnowBitmapArraysReference:Ljava/lang/ref/SoftReference;

    if-eqz v9, :cond_179

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/graphics/Bitmap;

    goto :goto_17a

    :cond_179
    const/4 v9, 0x0

    :goto_17a
    if-nez v9, :cond_17f

    .line 574
    invoke-direct/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->initPlayProgressSnowBitmapArrays()V

    .line 576
    :cond_17f
    iget-object v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressSnowBitmapArraysReference:Ljava/lang/ref/SoftReference;

    if-eqz v9, :cond_1a4

    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/graphics/Bitmap;

    if-eqz v9, :cond_1a4

    invoke-virtual {v12}, Lcom/codemao/midi/view/midiview/NoteModel;->getSnowAnimPNGCurrentIndex()I

    move-result v10

    aget-object v9, v9, v10

    if-eqz v9, :cond_1a4

    .line 579
    iget v10, v0, Lcom/codemao/midi/view/midiview/MidiView;->mPlayLineOffset:F

    iget v12, v0, Lcom/codemao/midi/view/midiview/MidiView;->dp4:F

    add-float/2addr v10, v12

    .line 580
    iget v11, v11, Landroid/graphics/RectF;->top:F

    .line 581
    iget-object v12, v0, Lcom/codemao/midi/view/midiview/MidiView;->bitmapPaint:Landroid/graphics/Paint;

    .line 577
    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1a4

    :cond_1a0
    move/from16 v18, v1

    const/4 v1, 0x0

    const/4 v8, 0x1

    :cond_1a4
    :goto_1a4
    move v11, v13

    move/from16 v1, v18

    goto/16 :goto_64

    :cond_1a9
    const/4 v8, 0x1

    move v4, v6

    goto/16 :goto_4c

    .line 591
    :cond_1ad
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->dp4:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 592
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressLineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 593
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 595
    iget v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->mPlayLineOffset:F

    const/4 v3, 0x0

    .line 598
    iget v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->contentHeight:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float v5, v1, v2

    .line 599
    iget-object v6, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v4

    .line 594
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 603
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 604
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressShader:Landroid/graphics/Shader;

    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 605
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressShaderMatrix:Landroid/graphics/Matrix;

    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->mPlayLineOffset:F

    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 606
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressShader:Landroid/graphics/Shader;

    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 607
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressShader:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 609
    iget v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->mPlayLineOffset:F

    iget v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeSpace:F

    sub-float v2, v4, v1

    .line 612
    iget v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->contentHeight:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v1, v5

    .line 613
    iget-object v6, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 608
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 615
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_219
    :goto_219
    return-void
.end method

.method private final drawShadowRect(Landroid/graphics/Canvas;)V
    .registers 12

    .line 763
    invoke-direct {p0}, Lcom/codemao/midi/view/midiview/MidiView;->clearAllNoteRectsInVisibleState()V

    .line 765
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    .line 2026
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_119

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 766
    iget-object v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_1e

    goto :goto_23

    :cond_1e
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    :goto_23
    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 767
    iget-object v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    const/4 v4, 0x2

    int-to-float v5, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteTypeIndex(F)I

    move-result v2

    .line 770
    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    const/4 v6, 0x3

    int-to-float v6, v6

    mul-float v5, v5, v6

    const/4 v7, 0x4

    int-to-float v7, v7

    div-float/2addr v5, v7

    add-float/2addr v3, v5

    invoke-direct {p0, v3}, Lcom/codemao/midi/view/midiview/MidiView;->getTick(F)I

    move-result v3

    .line 771
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_56

    .line 772
    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickEnd()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickStart()I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_64

    .line 774
    :cond_56
    iget-object v5, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget v9, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    mul-float v9, v9, v6

    div-float/2addr v9, v7

    add-float/2addr v5, v9

    invoke-direct {p0, v5}, Lcom/codemao/midi/view/midiview/MidiView;->getTick(F)I

    move-result v5

    .line 776
    :goto_64
    invoke-direct {p0, v3}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteModelLeft(I)F

    move-result v3

    .line 777
    invoke-direct {p0, v2}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteModelTop(I)F

    move-result v6

    .line 779
    iget-object v7, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v2, :cond_7f

    if-ltz v2, :cond_7f

    .line 780
    iget-object v7, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_84

    .line 782
    :cond_7f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 785
    :goto_84
    iget v7, p0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    const/4 v9, -0x1

    if-eq v7, v9, :cond_9

    .line 786
    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 787
    iget v7, p0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    if-ne v7, v8, :cond_c3

    .line 788
    iget-object v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->backgroundRectPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteRectShadowColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 789
    iget-object v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemRect:Landroid/graphics/RectF;

    .line 792
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteModelRight(Lcom/codemao/midi/view/midiview/NoteModel;Ljava/lang/Float;)F

    move-result v1

    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    sub-float/2addr v1, v5

    .line 793
    invoke-direct {p0, v6}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteModelBottom(F)F

    move-result v5

    iget v7, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    sub-float/2addr v5, v7

    .line 789
    invoke-virtual {v4, v3, v6, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 795
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemRect:Landroid/graphics/RectF;

    invoke-direct {p0, v1}, Lcom/codemao/midi/view/midiview/MidiView;->isInDrawRound(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 796
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->dp2:F

    iget-object v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->backgroundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_ef

    :cond_c3
    if-ne v7, v4, :cond_ef

    .line 799
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->backgroundRectPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteRectStretchShadowColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 800
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemRect:Landroid/graphics/RectF;

    .line 802
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    sub-float v4, v6, v4

    .line 803
    invoke-direct {p0, v5}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteModelLeft(I)F

    move-result v5

    iget v7, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    sub-float/2addr v5, v7

    .line 804
    iget v9, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    add-float/2addr v6, v9

    sub-float/2addr v6, v7

    .line 800
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 806
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemRect:Landroid/graphics/RectF;

    invoke-direct {p0, v1}, Lcom/codemao/midi/view/midiview/MidiView;->isInDrawRound(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 807
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->backgroundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 811
    :cond_ef
    :goto_ef
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f3
    :goto_f3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 812
    invoke-virtual {v2}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_f3

    .line 813
    iget-object v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_115

    iget-object v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemRect:Landroid/graphics/RectF;

    invoke-static {v4, v3}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 814
    :cond_115
    invoke-virtual {v2, v8}, Lcom/codemao/midi/view/midiview/NoteModel;->setInVisible(Z)V

    goto :goto_f3

    :cond_119
    return-void
.end method

.method private final drawTickIndex(Landroid/graphics/Canvas;)V
    .registers 13

    if-eqz p1, :cond_cc

    .line 409
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeItemWidth:F

    add-float/2addr v0, v1

    .line 412
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42200000  # 40.0f

    invoke-static {v2, v3}, Lcom/codemao/midi/view/midiview/MidiViewKt;->dip2px(Landroid/content/Context;F)F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    sub-float/2addr v1, v2

    .line 413
    new-instance v10, Landroid/graphics/LinearGradient;

    .line 415
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    sub-float v4, v2, v3

    .line 416
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeItemWidth:F

    add-float v5, v2, v3

    const-string v2, "#993F1579"

    .line 420
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const-string v2, "#003F1579"

    .line 421
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    .line 422
    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    move v3, v0

    move v6, v1

    .line 413
    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 424
    invoke-direct {p0}, Lcom/codemao/midi/view/midiview/MidiView;->getMTickIndexBgPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 425
    invoke-direct {p0}, Lcom/codemao/midi/view/midiview/MidiView;->getMTickIndexBgPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->mTickBgAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 429
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    add-float/2addr v2, v3

    iget v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    sub-float v4, v2, v3

    .line 430
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    sub-float v5, v2, v3

    .line 432
    invoke-direct {p0}, Lcom/codemao/midi/view/midiview/MidiView;->getMTickIndexBgPaint()Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    move v3, v0

    .line 427
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 435
    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->maxTickCount:I

    const/4 v2, 0x1

    if-gt v2, v1, :cond_cc

    .line 436
    :goto_82
    iget v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    add-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 438
    rem-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_c7

    .line 439
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 440
    invoke-direct {p0}, Lcom/codemao/midi/view/midiview/MidiView;->getMTickIndexTxtPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 442
    invoke-direct {p0}, Lcom/codemao/midi/view/midiview/MidiView;->getMTickIndexTxtPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    const-string v6, "mTickIndexTxtPaint.fontMetrics"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    iget v6, v5, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v7, v5, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v6, v7

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v6, v5

    .line 448
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiView;->dp4:F

    sub-float v7, v0, v5

    iget v8, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    sub-float/2addr v7, v8

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v4, v8

    sub-float/2addr v7, v4

    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    add-float/2addr v7, v4

    .line 449
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    sub-float/2addr v5, v4

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    .line 450
    invoke-direct {p0}, Lcom/codemao/midi/view/midiview/MidiView;->getMTickIndexTxtPaint()Landroid/graphics/Paint;

    move-result-object v4

    .line 446
    invoke-virtual {p1, v3, v7, v5, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_c7
    if-eq v2, v1, :cond_cc

    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    :cond_cc
    return-void
.end method

.method private final findNoteRectWithPoint(FF)[Ljava/lang/Integer;
    .registers 11

    .line 916
    invoke-direct {p0, p2}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteTypeIndex(F)I

    move-result v0

    if-ltz v0, :cond_73

    .line 917
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_73

    .line 918
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1658
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_2d

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2d
    check-cast v4, Lcom/codemao/midi/view/midiview/NoteModel;

    if-lez v3, :cond_71

    .line 921
    invoke-virtual {v4}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v6

    if-nez v6, :cond_42

    .line 922
    invoke-virtual {v4}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickStart()I

    move-result v6

    invoke-virtual {v4}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickEnd()I

    move-result v7

    invoke-direct {p0, v4, v6, v7, v0}, Lcom/codemao/midi/view/midiview/MidiView;->updateRect(Lcom/codemao/midi/view/midiview/NoteModel;III)V

    .line 924
    :cond_42
    invoke-virtual {v4}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_71

    .line 925
    iget v6, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v6, p1

    if-gtz v6, :cond_71

    iget v6, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, p2

    if-gtz v6, :cond_71

    iget v6, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, p1

    if-ltz v6, :cond_71

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, p2

    if-ltz v4, :cond_71

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Integer;

    .line 926
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    return-object p1

    :cond_71
    move v3, v5

    goto :goto_1c

    :cond_73
    const/4 p1, 0x0

    return-object p1
.end method

.method private final generateActivatingRectBitmap(Landroid/graphics/RectF;I)Landroid/graphics/Bitmap;
    .registers 11

    .line 377
    new-instance v7, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 378
    invoke-virtual {v7, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->dp4:F

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1, v1, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 381
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->dp4:F

    add-float/2addr p2, v0

    const/high16 v0, 0x40000000  # 2.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 382
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->dp4:F

    add-float/2addr v1, v2

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 383
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 380
    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v0, 0x0

    .line 385
    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 386
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 387
    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->dp4:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->dp4:F

    add-float/2addr v3, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->dp4:F

    add-float v4, p1, v1

    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiView;->dp2:F

    move v1, v2

    move v5, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    const-string p1, "bitmap"

    .line 388
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method private final getMTickIndexBgPaint()Landroid/graphics/Paint;
    .registers 2

    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->mTickIndexBgPaint$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method private final getMTickIndexTxtPaint()Landroid/graphics/Paint;
    .registers 2

    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->mTickIndexTxtPaint$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method private final getMinDx(FF)F
    .registers 5

    add-float v0, p2, p1

    .line 1028
    invoke-virtual {p0}, Lcom/codemao/midi/view/midiview/MidiView;->calcNodeStartX()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_10

    .line 1029
    invoke-virtual {p0}, Lcom/codemao/midi/view/midiview/MidiView;->calcNodeStartX()F

    move-result p1

    sub-float/2addr p1, p2

    goto :goto_18

    .line 1030
    :cond_10
    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->contentWidth:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_18

    sub-float p1, v1, p2

    :cond_18
    :goto_18
    return p1
.end method

.method private final getMinDy(FF)F
    .registers 7

    add-float v0, p2, p1

    .line 1038
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_12

    .line 1039
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    :goto_10
    sub-float/2addr p1, p2

    goto :goto_43

    .line 1040
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    iget v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_43

    .line 1041
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float v0, v0, v1

    add-float/2addr p1, v0

    goto :goto_10

    :cond_43
    :goto_43
    return p1
.end method

.method private final getNoteModelBottom(F)F
    .registers 3

    .line 1706
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    add-float/2addr p1, v0

    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    sub-float/2addr p1, v0

    return p1
.end method

.method private final getNoteModelLeft(I)F
    .registers 4

    .line 1687
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    .line 1688
    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeItemWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeSpace:F

    add-float/2addr v0, v1

    .line 1689
    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    int-to-float p1, p1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 1691
    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private final getNoteModelRight(Lcom/codemao/midi/view/midiview/NoteModel;Ljava/lang/Float;)F
    .registers 6

    if-eqz p2, :cond_3

    goto :goto_11

    .line 1695
    :cond_3
    invoke-virtual {p1}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object p2

    if-eqz p2, :cond_10

    iget p2, p2, Landroid/graphics/RectF;->left:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    :goto_11
    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_19

    :cond_18
    const/4 p2, 0x0

    .line 1696
    :goto_19
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    invoke-virtual {p1}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickEnd()I

    move-result v1

    invoke-virtual {p1}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickStart()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    .line 1698
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    invoke-virtual {p1}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickEnd()I

    move-result v1

    invoke-virtual {p1}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickStart()I

    move-result p1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    int-to-float p1, v1

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    iget p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    sub-float/2addr p2, p1

    return p2
.end method

.method static synthetic getNoteModelRight$default(Lcom/codemao/midi/view/midiview/MidiView;Lcom/codemao/midi/view/midiview/NoteModel;Ljava/lang/Float;ILjava/lang/Object;)F
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 1694
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteModelRight(Lcom/codemao/midi/view/midiview/NoteModel;Ljava/lang/Float;)F

    move-result p0

    return p0
.end method

.method private final getNoteModelTop(I)F
    .registers 5

    .line 1702
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    add-float/2addr v1, v2

    int-to-float p1, p1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method private final getNoteTypeIndex(F)I
    .registers 4

    .line 1711
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    add-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    if-gez p1, :cond_10

    const/4 p1, 0x0

    :cond_10
    return p1
.end method

.method private final getTick(F)I
    .registers 4

    .line 1719
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    add-float/2addr v0, v1

    const/16 v1, 0x8

    int-to-float v1, v1

    mul-float v0, v0, v1

    div-float/2addr p1, v0

    mul-float p1, p1, v1

    float-to-int p1, p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_14

    const/4 p1, 0x0

    goto :goto_19

    .line 1723
    :cond_14
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->maxTickCount:I

    if-lt p1, v0, :cond_19

    move p1, v0

    :cond_19
    :goto_19
    return p1
.end method

.method private final initPlayProgressSnowBitmapArrays()V
    .registers 4

    const/16 v0, 0x16

    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00000:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00001:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00002:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 245
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00003:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 246
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00004:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 247
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00005:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00006:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 249
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00007:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 250
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00008:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 251
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00009:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00010:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 253
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00011:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00012:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 255
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00013:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00014:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 257
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00015:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00016:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 259
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00017:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 260
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00018:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 261
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00019:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 262
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00020:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 263
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/midi/R$mipmap;->midi_loop_00021:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 265
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressSnowBitmapArraysReference:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private final isInDrawRound(Landroid/graphics/RectF;)Z
    .registers 7

    .line 678
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    sub-float/2addr v1, v2

    const/4 v3, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2e

    int-to-float v0, v3

    sub-float v1, v0, v2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2e

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    sub-float/2addr v2, v4

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2e

    sub-float/2addr v0, v4

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, v0, p1

    if-gez p1, :cond_2e

    const/4 v3, 0x1

    :cond_2e
    return v3
.end method

.method private final isNoteTypeRange(F)Z
    .registers 4

    .line 1346
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeItemWidth:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method

.method private final isSingleTickNoteRectCanDrag(IIF)Z
    .registers 6

    .line 1336
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p2, :cond_2f

    .line 1337
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 1338
    invoke-virtual {p1}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickEnd()I

    move-result p2

    invoke-virtual {p1}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickStart()I

    move-result p1

    sub-int/2addr p2, p1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_2f

    int-to-float p2, v1

    cmpg-float p2, p3, p2

    if-gez p2, :cond_2f

    const/4 v1, 0x1

    :cond_2f
    return v1
.end method

.method private final isTheLastTick(IIF)Z
    .registers 5

    .line 1323
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_29

    .line 1324
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 1325
    invoke-virtual {p1}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickEnd()I

    move-result p1

    invoke-direct {p0, p3}, Lcom/codemao/midi/view/midiview/MidiView;->getTick(F)I

    move-result p2

    const/4 p3, 0x1

    add-int/2addr p2, p3

    if-ne p1, p2, :cond_29

    return p3

    :cond_29
    const/4 p1, 0x0

    return p1
.end method

.method private final multipleChoiceNoteRectWithDxDy(FFFF)V
    .registers 8

    cmpl-float v0, p1, p3

    if-lez v0, :cond_7

    move v2, p3

    move p3, p1

    move p1, v2

    :cond_7
    cmpl-float v0, p2, p4

    if-lez v0, :cond_e

    move v2, p4

    move p4, p2

    move p2, v2

    .line 1282
    :cond_e
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoiceRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1283
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1284
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 1285
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2e
    :goto_2e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 1286
    invoke-virtual {p4}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1287
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoiceRectF:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1288
    invoke-virtual {p4}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_51

    iget v0, v0, Landroid/graphics/RectF;->top:F

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    invoke-direct {p0, v0}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteTypeIndex(F)I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/codemao/midi/view/midiview/NoteModel;->setPreSheetIndex(I)V

    const/4 v0, 0x0

    .line 1289
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/midi/view/midiview/NoteModel;

    invoke-virtual {v0}, Lcom/codemao/midi/view/midiview/NoteModel;->getNoteType()Lcom/codemao/midi/view/midiview/NoteType;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/codemao/midi/view/midiview/NoteModel;->setNoteType(Lcom/codemao/midi/view/midiview/NoteType;)V

    .line 1290
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1295
    :cond_6d
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final notifyAutoScroll(FF)V
    .registers 16

    .line 1132
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_a4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 1133
    invoke-virtual {v6}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v8

    if-eqz v8, :cond_25

    iget v8, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    goto :goto_26

    :cond_25
    move-object v8, v1

    .line 1134
    :goto_26
    invoke-virtual {v6}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v9

    if-eqz v9, :cond_33

    iget v9, v9, Landroid/graphics/RectF;->right:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto :goto_34

    :cond_33
    move-object v9, v1

    .line 1135
    :goto_34
    invoke-virtual {v6}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v10

    if-eqz v10, :cond_41

    iget v10, v10, Landroid/graphics/RectF;->top:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    goto :goto_42

    :cond_41
    move-object v10, v1

    .line 1136
    :goto_42
    invoke-virtual {v6}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v6

    if-eqz v6, :cond_4f

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_50

    :cond_4f
    move-object v6, v1

    :goto_50
    if-eqz v5, :cond_66

    if-eqz v8, :cond_59

    .line 1138
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v11

    goto :goto_5e

    :cond_59
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    :goto_5e
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_67

    :cond_66
    move-object v5, v8

    :cond_67
    if-eqz v4, :cond_7d

    if-eqz v10, :cond_70

    .line 1141
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_75

    :cond_70
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    :goto_75
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpg-float v8, v8, v11

    if-gez v8, :cond_7e

    :cond_7d
    move-object v4, v10

    :cond_7e
    if-eqz v2, :cond_90

    if-eqz v6, :cond_87

    .line 1144
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_88

    :cond_87
    const/4 v8, 0x0

    :goto_88
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v10

    cmpl-float v8, v8, v10

    if-lez v8, :cond_91

    :cond_90
    move-object v2, v6

    :cond_91
    if-eqz v3, :cond_a1

    if-eqz v9, :cond_99

    .line 1147
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v7

    :cond_99
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v7, v6

    if-lez v6, :cond_b

    :cond_a1
    move-object v3, v9

    goto/16 :goto_b

    .line 1151
    :cond_a4
    iget-boolean v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->hasShowPiano:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_ae

    .line 1152
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_af

    :cond_ae
    const/4 v0, 0x0

    .line 1157
    :goto_af
    iget-object v6, p0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    const/4 v8, 0x1

    aget v6, v6, v8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    sub-float/2addr v9, v10

    int-to-float v0, v0

    sub-float/2addr v9, v0

    cmpl-float v6, v6, v9

    if-lez v6, :cond_fe

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget v9, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    sub-float/2addr v6, v9

    iget v9, p0, Lcom/codemao/midi/view/midiview/MidiView;->contentHeight:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_fe

    if-eqz v2, :cond_d7

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_d8

    :cond_d7
    const/4 v2, 0x0

    :goto_d8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget v9, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    sub-float/2addr v6, v9

    sub-float/2addr v6, v0

    cmpl-float v0, v2, v6

    if-ltz v0, :cond_fe

    .line 1158
    iget p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->mTouchSlop:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_fd

    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->autoScrollToEdgeAnim:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_fd

    .line 1159
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/codemao/midi/view/midiview/MidiView;->contentHeight:F

    sub-float/2addr p1, p2

    invoke-direct {p0, v9, p1}, Lcom/codemao/midi/view/midiview/MidiView;->startAutoScrollAnimForY(FF)V

    goto/16 :goto_1be

    :cond_fd
    return-void

    .line 1163
    :cond_fe
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    aget v0, v0, v8

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    cmpg-float v0, v0, v2

    if-gez v0, :cond_12f

    if-eqz v4, :cond_115

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_116

    :cond_115
    const/4 v0, 0x0

    :goto_116
    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    neg-float v4, v2

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_12f

    .line 1164
    iget p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->mTouchSlop:I

    neg-int p1, p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_12e

    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->autoScrollToEdgeAnim:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_12e

    .line 1165
    invoke-direct {p0, v2, v7}, Lcom/codemao/midi/view/midiview/MidiView;->startAutoScrollAnimForY(FF)V

    goto/16 :goto_1be

    :cond_12e
    return-void

    .line 1169
    :cond_12f
    iget-object p2, p0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    aget p2, p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_17f

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->contentWidth:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_17f

    if-eqz v3, :cond_15a

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_15b

    :cond_15a
    const/4 p2, 0x0

    :goto_15b
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    sub-float/2addr v0, v2

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_17f

    .line 1170
    iget p2, p0, Lcom/codemao/midi/view/midiview/MidiView;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_17e

    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->autoScrollToEdgeAnim:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_17e

    .line 1171
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/codemao/midi/view/midiview/MidiView;->contentWidth:F

    sub-float/2addr p1, p2

    invoke-direct {p0, v2, p1}, Lcom/codemao/midi/view/midiview/MidiView;->startAutoScrollAnimForX(FF)V

    goto :goto_1be

    :cond_17e
    return-void

    .line 1175
    :cond_17f
    iget-object p2, p0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    aget p2, p2, v1

    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeSpace:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeItemWidth:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1bb

    if-eqz v5, :cond_19c

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_19d

    :cond_19c
    const/4 p2, 0x0

    :goto_19d
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    neg-float v1, v0

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeItemWidth:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeSpace:F

    add-float/2addr v1, v2

    cmpg-float p2, p2, v1

    if-gtz p2, :cond_1bb

    .line 1176
    iget p2, p0, Lcom/codemao/midi/view/midiview/MidiView;->mTouchSlop:I

    neg-int p2, p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1ba

    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->autoScrollToEdgeAnim:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1ba

    .line 1177
    invoke-direct {p0, v0, v7}, Lcom/codemao/midi/view/midiview/MidiView;->startAutoScrollAnimForX(FF)V

    goto :goto_1be

    :cond_1ba
    return-void

    .line 1182
    :cond_1bb
    invoke-direct {p0}, Lcom/codemao/midi/view/midiview/MidiView;->cancelAutoScrollAnim()V

    :goto_1be
    return-void
.end method

.method private final notifyDragNoteRect()V
    .registers 7

    .line 1231
    invoke-direct {p0}, Lcom/codemao/midi/view/midiview/MidiView;->cancelAutoScrollAnim()V

    .line 1232
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    .line 2048
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 1233
    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1234
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteTypeIndex(F)I

    move-result v3

    .line 1235
    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    invoke-direct {p0, v2}, Lcom/codemao/midi/view/midiview/MidiView;->getTick(F)I

    move-result v2

    .line 1236
    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickEnd()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickStart()I

    move-result v5

    sub-int/2addr v4, v5

    .line 1237
    invoke-direct {p0, v1, v2, v4, v3}, Lcom/codemao/midi/view/midiview/MidiView;->updateRect(Lcom/codemao/midi/view/midiview/NoteModel;III)V

    const/4 v2, 0x0

    .line 1238
    invoke-virtual {v1, v2}, Lcom/codemao/midi/view/midiview/NoteModel;->setInVisible(Z)V

    .line 1239
    iget-object v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5f

    .line 1240
    iget-object v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/view/midiview/NoteModel;

    invoke-virtual {v2}, Lcom/codemao/midi/view/midiview/NoteModel;->getNoteType()Lcom/codemao/midi/view/midiview/NoteType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/midi/view/midiview/NoteModel;->setNoteType(Lcom/codemao/midi/view/midiview/NoteType;)V

    .line 1242
    :cond_5f
    iget-object v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1243
    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getCacheBitmap()Ljava/lang/ref/SoftReference;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    goto :goto_9

    .line 1246
    :cond_74
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_80

    .line 1247
    invoke-direct {p0}, Lcom/codemao/midi/view/midiview/MidiView;->startDragRectStrokeColorAnimator()V

    .line 1249
    :cond_80
    invoke-direct {p0}, Lcom/codemao/midi/view/midiview/MidiView;->deleteInVisibleRect()V

    .line 1250
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final notifyMultipleChoice()V
    .registers 3

    .line 1299
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoiceRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1300
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final notifyMultipleDelete()V
    .registers 4

    .line 1350
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/view/midiview/NoteModel;

    const/4 v2, 0x1

    .line 1351
    invoke-virtual {v1, v2}, Lcom/codemao/midi/view/midiview/NoteModel;->setInVisible(Z)V

    goto :goto_6

    .line 1353
    :cond_17
    invoke-direct {p0}, Lcom/codemao/midi/view/midiview/MidiView;->deleteInVisibleRect()V

    .line 1354
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1355
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final notifyScrollOffset()V
    .registers 5

    .line 315
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    const/4 v1, 0x0

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_32

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->contentHeight:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_15

    goto :goto_32

    :cond_15
    cmpl-float v0, v3, v1

    if-lez v0, :cond_34

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->contentHeight:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_34

    .line 318
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->contentHeight:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    goto :goto_34

    .line 316
    :cond_32
    :goto_32
    iput v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    .line 321
    :cond_34
    :goto_34
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_63

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->contentWidth:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_46

    goto :goto_63

    :cond_46
    cmpl-float v0, v3, v1

    if-lez v0, :cond_65

    .line 323
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->contentWidth:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_65

    .line 324
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->contentWidth:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    goto :goto_65

    .line 322
    :cond_63
    :goto_63
    iput v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    .line 327
    :cond_65
    :goto_65
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->onScrollListener:Lcom/codemao/midi/view/midiview/MidiView$OnScrollListener;

    if-eqz v0, :cond_72

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    neg-float v1, v1

    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    neg-float v2, v2

    invoke-interface {v0, v1, v2}, Lcom/codemao/midi/view/midiview/MidiView$OnScrollListener;->onScrollListener(FF)V

    .line 329
    :cond_72
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final notifyStretchNoteRect()V
    .registers 9

    .line 996
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    .line 2038
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 997
    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 998
    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteTypeIndex(F)I

    move-result v2

    .line 999
    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    if-eqz v3, :cond_2d

    iget v3, v3, Landroid/graphics/RectF;->right:F

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    .line 1001
    :goto_2e
    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickStart()I

    move-result v4

    .line 1002
    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    const/4 v6, 0x1

    int-to-float v7, v6

    mul-float v5, v5, v7

    const/4 v7, 0x4

    int-to-float v7, v7

    div-float/2addr v5, v7

    sub-float/2addr v3, v5

    invoke-direct {p0, v3}, Lcom/codemao/midi/view/midiview/MidiView;->getTick(F)I

    move-result v3

    add-int/2addr v3, v6

    .line 1000
    invoke-direct {p0, v1, v4, v3, v2}, Lcom/codemao/midi/view/midiview/MidiView;->updateRect(Lcom/codemao/midi/view/midiview/NoteModel;III)V

    const/4 v3, 0x0

    .line 1005
    invoke-virtual {v1, v3}, Lcom/codemao/midi/view/midiview/NoteModel;->setInVisible(Z)V

    .line 1006
    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 1007
    iget-object v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    :cond_5b
    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getCacheBitmap()Ljava/lang/ref/SoftReference;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    goto :goto_6

    .line 1012
    :cond_65
    invoke-direct {p0}, Lcom/codemao/midi/view/midiview/MidiView;->deleteInVisibleRect()V

    .line 1013
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final showTickBg(Z)V
    .registers 7

    .line 462
    iget-boolean v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->isTickBgShowing:Z

    if-eqz v0, :cond_6

    if-nez p1, :cond_e

    :cond_6
    const/16 v0, 0xff

    if-eqz p1, :cond_f

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->mTickBgAlpha:I

    if-ne v1, v0, :cond_f

    :cond_e
    return-void

    .line 465
    :cond_f
    iget-boolean v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->isTickBgHiding:Z

    if-eqz v1, :cond_15

    if-eqz p1, :cond_1b

    :cond_15
    if-nez p1, :cond_1c

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->mTickBgAlpha:I

    if-nez v1, :cond_1c

    :cond_1b
    return-void

    .line 469
    :cond_1c
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->mAnimatorAlpha:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_23
    const/4 v1, 0x0

    .line 470
    iput-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->mAnimatorAlpha:Landroid/animation/ValueAnimator;

    .line 472
    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->mTickBgAlpha:I

    const/4 v2, 0x0

    if-eqz p1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v1, v3, v2

    const/4 v1, 0x1

    aput v0, v3, v1

    .line 476
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->mAnimatorAlpha:Landroid/animation/ValueAnimator;

    .line 478
    iget-object v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->mAnimatorAlpha:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_44

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 479
    :cond_44
    iget-object v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->mAnimatorAlpha:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_50

    new-instance v3, Lcom/codemao/midi/view/midiview/MidiView$showTickBg$1;

    invoke-direct {v3, p0, v0}, Lcom/codemao/midi/view/midiview/MidiView$showTickBg$1;-><init>(Lcom/codemao/midi/view/midiview/MidiView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 490
    :cond_50
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->mAnimatorAlpha:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 492
    :cond_57
    iput-boolean p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->isTickBgShowing:Z

    xor-int/2addr p1, v1

    .line 493
    iput-boolean p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->isTickBgHiding:Z

    return-void
.end method

.method private final startAutoScrollAnimForX(FF)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1202
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->autoScrollToEdgeAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_19

    .line 1203
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1204
    :cond_19
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->autoScrollToEdgeAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_29

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x3f800000  # 1.0f

    div-float/2addr p1, p2

    float-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1205
    :cond_29
    new-instance p1, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget p2, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    iput p2, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1206
    iget-object p2, p0, Lcom/codemao/midi/view/midiview/MidiView;->autoScrollToEdgeAnim:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_3e

    new-instance v0, Lcom/codemao/midi/view/midiview/MidiView$startAutoScrollAnimForX$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/midi/view/midiview/MidiView$startAutoScrollAnimForX$1;-><init>(Lcom/codemao/midi/view/midiview/MidiView;Lkotlin/jvm/internal/Ref$FloatRef;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1213
    :cond_3e
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->autoScrollToEdgeAnim:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_45
    return-void
.end method

.method private final startAutoScrollAnimForY(FF)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1187
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->autoScrollToEdgeAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_19

    .line 1188
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1189
    :cond_19
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->autoScrollToEdgeAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_29

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x3f800000  # 1.0f

    div-float/2addr p1, p2

    float-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1190
    :cond_29
    new-instance p1, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget p2, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    iput p2, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1191
    iget-object p2, p0, Lcom/codemao/midi/view/midiview/MidiView;->autoScrollToEdgeAnim:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_3e

    new-instance v0, Lcom/codemao/midi/view/midiview/MidiView$startAutoScrollAnimForY$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/midi/view/midiview/MidiView$startAutoScrollAnimForY$1;-><init>(Lcom/codemao/midi/view/midiview/MidiView;Lkotlin/jvm/internal/Ref$FloatRef;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1198
    :cond_3e
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->autoScrollToEdgeAnim:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_45
    return-void
.end method

.method private final startDragRectStrokeColorAnimator()V
    .registers 2

    .line 1739
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteRectDecorationAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private final stretchNoteRectWithDx(FII)V
    .registers 5

    .line 978
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_40

    .line 979
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p3, :cond_56

    .line 980
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 981
    invoke-direct {p0, p3, p1}, Lcom/codemao/midi/view/midiview/MidiView;->upDateRectWithStretch(Lcom/codemao/midi/view/midiview/NoteModel;F)V

    .line 982
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    .line 983
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_56

    .line 988
    :cond_40
    iget-object p2, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    .line 2036
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_46
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_56

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 989
    invoke-direct {p0, p3, p1}, Lcom/codemao/midi/view/midiview/MidiView;->upDateRectWithStretch(Lcom/codemao/midi/view/midiview/NoteModel;F)V

    goto :goto_46

    .line 992
    :cond_56
    :goto_56
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final upDateRectWithDrag(Lcom/codemao/midi/view/midiview/NoteModel;FF)V
    .registers 7

    .line 1021
    invoke-virtual {p1}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 1022
    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p3

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p2

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p2, p3

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_15
    return-void
.end method

.method private final upDateRectWithStretch(Lcom/codemao/midi/view/midiview/NoteModel;F)V
    .registers 10

    .line 964
    invoke-virtual {p1}, Lcom/codemao/midi/view/midiview/NoteModel;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 965
    invoke-virtual {p0}, Lcom/codemao/midi/view/midiview/MidiView;->removeEmptyNoteModel()V

    .line 967
    :cond_9
    invoke-virtual {p1}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_36

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 968
    invoke-static {p0, p1, v2, v1, v2}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteModelRight$default(Lcom/codemao/midi/view/midiview/MidiView;Lcom/codemao/midi/view/midiview/NoteModel;Ljava/lang/Float;ILjava/lang/Object;)F

    move-result p1

    add-float v1, p1, p2

    .line 970
    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    iget v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    const/4 v4, 0x3

    int-to-float v4, v4

    mul-float v5, v3, v4

    const/4 v6, 0x4

    int-to-float v6, v6

    div-float/2addr v5, v6

    cmpg-float v1, v1, v5

    if-gez v1, :cond_2e

    mul-float v3, v3, v4

    div-float/2addr v3, v6

    sub-float p2, p1, v2

    sub-float p2, v3, p2

    .line 973
    :cond_2e
    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p2

    iget p2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_36
    return-void
.end method

.method private final updateRect(Lcom/codemao/midi/view/midiview/NoteModel;III)V
    .registers 6

    .line 1664
    invoke-virtual {p1, p2}, Lcom/codemao/midi/view/midiview/NoteModel;->setTickStart(I)V

    .line 1665
    invoke-virtual {p1, p3}, Lcom/codemao/midi/view/midiview/NoteModel;->setTickEnd(I)V

    .line 1666
    invoke-virtual {p1, p4}, Lcom/codemao/midi/view/midiview/NoteModel;->setPreSheetIndex(I)V

    .line 1668
    invoke-direct {p0, p2}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteModelLeft(I)F

    move-result p2

    .line 1669
    invoke-direct {p0, p4}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteModelTop(I)F

    move-result p3

    .line 1670
    invoke-virtual {p1}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object p4

    if-nez p4, :cond_1f

    .line 1671
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p1, p4}, Lcom/codemao/midi/view/midiview/NoteModel;->setRect(Landroid/graphics/RectF;)V

    .line 1673
    :cond_1f
    invoke-virtual {p1}, Lcom/codemao/midi/view/midiview/NoteModel;->getRect()Landroid/graphics/RectF;

    move-result-object p4

    if-eqz p4, :cond_34

    .line 1676
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteModelRight(Lcom/codemao/midi/view/midiview/NoteModel;Ljava/lang/Float;)F

    move-result p1

    .line 1677
    invoke-direct {p0, p3}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteModelBottom(F)F

    move-result v0

    .line 1673
    invoke-virtual {p4, p2, p3, p1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_34
    return-void
.end method


# virtual methods
.method public final addNoteModel(I)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1775
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1776
    iget-object v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    .line 1658
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v15, 0x1

    if-eqz v8, :cond_7e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    if-gez v5, :cond_24

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_24
    check-cast v8, Ljava/util/List;

    .line 1777
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1658
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_2e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_65

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v11, 0x1

    if-gez v11, :cond_3f

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3f
    check-cast v12, Lcom/codemao/midi/view/midiview/NoteModel;

    if-lez v11, :cond_63

    if-nez v7, :cond_4b

    .line 1781
    invoke-virtual {v12}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickEnd()I

    move-result v7

    :goto_49
    move v6, v5

    goto :goto_56

    .line 1783
    :cond_4b
    invoke-virtual {v12}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickEnd()I

    move-result v14

    if-ge v7, v14, :cond_56

    .line 1784
    invoke-virtual {v12}, Lcom/codemao/midi/view/midiview/NoteModel;->getTickEnd()I

    move-result v7

    goto :goto_49

    .line 1787
    :cond_56
    :goto_56
    invoke-virtual {v12}, Lcom/codemao/midi/view/midiview/NoteModel;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_63

    .line 1788
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_63
    move v11, v13

    goto :goto_2e

    .line 1792
    :cond_65
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v15

    :goto_6a
    if-ltz v5, :cond_7c

    .line 1793
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-interface {v8, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    goto :goto_6a

    :cond_7c
    move v5, v9

    goto :goto_12

    .line 1799
    :cond_7e
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x8

    if-ge v1, v2, :cond_12e

    if-ltz v1, :cond_12e

    .line 1800
    invoke-direct {v0, v7}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteModelLeft(I)F

    move-result v2

    iget v6, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    add-float/2addr v2, v6

    invoke-direct {v0, v3}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteModelLeft(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1801
    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    int-to-float v6, v2

    sub-float/2addr v3, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    iget v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->contentWidth:F

    sub-float/2addr v6, v8

    cmpg-float v3, v3, v6

    if-gez v3, :cond_ae

    add-int/lit8 v3, v7, 0x2

    .line 1802
    iget v6, v0, Lcom/codemao/midi/view/midiview/MidiView;->maxTickCount:I

    if-le v3, v6, :cond_ae

    return-void

    .line 1806
    :cond_ae
    iget-object v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1807
    new-instance v14, Lcom/codemao/midi/view/midiview/NoteModel;

    add-int/lit8 v8, v7, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1fc

    const/16 v19, 0x0

    move-object v6, v14

    move-object v4, v14

    move/from16 v14, v16

    const/4 v5, 0x1

    move/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v19

    invoke-direct/range {v6 .. v17}, Lcom/codemao/midi/view/midiview/NoteModel;-><init>(IIILandroid/graphics/RectF;Lcom/codemao/midi/view/midiview/NoteType;ZIZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1808
    invoke-direct/range {p0 .. p1}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteModelTop(I)F

    move-result v1

    .line 1810
    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_ff

    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_ff

    const/4 v4, 0x0

    goto/16 :goto_1ce

    .line 1812
    :cond_ff
    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_112

    .line 1813
    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    add-float/2addr v1, v3

    invoke-direct {v0, v5}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteModelTop(I)F

    move-result v3

    sub-float/2addr v1, v3

    goto :goto_12b

    .line 1815
    :cond_112
    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    add-float/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    iget v5, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    add-float/2addr v4, v5

    const/4 v5, 0x2

    int-to-float v5, v5

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    :goto_12b
    float-to-int v4, v1

    goto/16 :goto_1ce

    :cond_12e
    const/4 v5, 0x1

    .line 1819
    invoke-direct {v0, v7}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteModelLeft(I)F

    move-result v1

    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    add-float/2addr v1, v2

    invoke-direct {v0, v3}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteModelLeft(I)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v2, v1

    .line 1820
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->hasContent()Z

    move-result v1

    if-nez v1, :cond_198

    const/16 v6, 0xa

    .line 1822
    invoke-direct {v0, v6}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteModelTop(I)F

    move-result v1

    .line 1824
    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_169

    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_169

    goto :goto_198

    .line 1826
    :cond_169
    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_17c

    .line 1827
    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    add-float/2addr v1, v3

    invoke-direct {v0, v5}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteModelTop(I)F

    move-result v3

    sub-float/2addr v1, v3

    goto :goto_195

    .line 1829
    :cond_17c
    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    add-float/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    iget v5, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    add-float/2addr v4, v5

    const/4 v5, 0x2

    int-to-float v5, v5

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    :goto_195
    float-to-int v1, v1

    move v4, v1

    goto :goto_199

    :cond_198
    :goto_198
    const/4 v4, 0x0

    .line 1834
    :goto_199
    iget v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    int-to-float v3, v2

    sub-float/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v5, v0, Lcom/codemao/midi/view/midiview/MidiView;->contentWidth:F

    sub-float/2addr v3, v5

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1b0

    add-int/lit8 v1, v7, 0x2

    .line 1835
    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->maxTickCount:I

    if-le v1, v3, :cond_1b0

    return-void

    .line 1839
    :cond_1b0
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1840
    new-instance v3, Lcom/codemao/midi/view/midiview/NoteModel;

    add-int/lit8 v8, v7, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x17c

    const/16 v17, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v17}, Lcom/codemao/midi/view/midiview/NoteModel;-><init>(IIILandroid/graphics/RectF;Lcom/codemao/midi/view/midiview/NoteType;ZIZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1843
    :goto_1ce
    iget v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    int-to-float v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/codemao/midi/view/midiview/MidiView;->smoothScrollTo(FF)V

    return-void
.end method

.method public final calcNodeStartX()F
    .registers 3

    .line 351
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeItemWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->noteTypeSpace:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final calcPlayLineX(Z)F
    .registers 4

    .line 336
    invoke-virtual {p0}, Lcom/codemao/midi/view/midiview/MidiView;->calcNodeStartX()F

    move-result v0

    .line 338
    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    sub-float/2addr v0, v1

    if-eqz p1, :cond_c

    .line 340
    iget p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->dp4:F

    neg-float v0, p1

    :cond_c
    const/4 p1, 0x0

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_13

    const/4 v0, 0x0

    :cond_13
    return v0
.end method

.method public computeScroll()V
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 306
    iget-boolean v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->isFling:Z

    if-eqz v0, :cond_20

    .line 307
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    .line 308
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    .line 310
    :cond_20
    invoke-direct {p0}, Lcom/codemao/midi/view/midiview/MidiView;->notifyScrollOffset()V

    :cond_23
    return-void
.end method

.method public final getContentHeight()F
    .registers 2

    .line 98
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->contentHeight:F

    return v0
.end method

.method public final getContentSize()I
    .registers 8

    .line 1991
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1992
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_8

    .line 1658
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_31

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_31
    check-cast v5, Lcom/codemao/midi/view/midiview/NoteModel;

    if-lez v4, :cond_43

    .line 1994
    invoke-virtual {v5}, Lcom/codemao/midi/view/midiview/NoteModel;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_43

    invoke-virtual {v5}, Lcom/codemao/midi/view/midiview/NoteModel;->getInVisible()Z

    move-result v4

    if-nez v4, :cond_43

    add-int/lit8 v2, v2, 0x1

    :cond_43
    move v4, v6

    goto :goto_20

    :cond_45
    return v2
.end method

.method public final getContentWidth()F
    .registers 2

    .line 97
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->contentWidth:F

    return v0
.end method

.method public final getHasChange()Z
    .registers 2

    .line 115
    iget-boolean v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->hasChange:Z

    return v0
.end method

.method public final getHasShowPiano()Z
    .registers 2

    .line 99
    iget-boolean v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->hasShowPiano:Z

    return v0
.end method

.method public final getItemDecorationWidth()F
    .registers 2

    .line 1977
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    return v0
.end method

.method public final getItemWidth()F
    .registers 3

    .line 1973
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getMaxTickCount()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->maxTickCount:I

    return v0
.end method

.method public final getOffsetMoveX()F
    .registers 2

    .line 269
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    neg-float v0, v0

    return v0
.end method

.method public final getOnMidiNoteEventListener()Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->onMidiNoteEventListener:Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;

    return-object v0
.end method

.method public final getOnPlayingAnimStopListener()Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->onPlayingAnimStopListener:Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;

    return-object v0
.end method

.method public final getOnScrollListener()Lcom/codemao/midi/view/midiview/MidiView$OnScrollListener;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->onScrollListener:Lcom/codemao/midi/view/midiview/MidiView$OnScrollListener;

    return-object v0
.end method

.method public final getSheetList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/codemao/midi/view/midiview/NoteModel;",
            ">;>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    return-object v0
.end method

.method public final hasContent()Z
    .registers 4

    .line 1981
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1982
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_6

    return v2

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    if-eqz p1, :cond_7

    .line 393
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_7
    if-eqz p1, :cond_10

    .line 395
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 396
    :cond_10
    invoke-direct {p0, p1}, Lcom/codemao/midi/view/midiview/MidiView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 397
    invoke-direct {p0, p1}, Lcom/codemao/midi/view/midiview/MidiView;->drawFloatingRect(Landroid/graphics/Canvas;)V

    .line 398
    invoke-direct {p0, p1}, Lcom/codemao/midi/view/midiview/MidiView;->drawDecoration(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_22

    .line 399
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    neg-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 400
    :cond_22
    invoke-direct {p0, p1}, Lcom/codemao/midi/view/midiview/MidiView;->drawPlayProgress(Landroid/graphics/Canvas;)V

    .line 402
    invoke-direct {p0, p1}, Lcom/codemao/midi/view/midiview/MidiView;->drawTickIndex(Landroid/graphics/Canvas;)V

    .line 404
    invoke-direct {p0, p1}, Lcom/codemao/midi/view/midiview/MidiView;->drawLeftNoteTypeBar(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1377
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressAnim:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_14

    .line 1378
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->stopMidiPlayingProgressAnim()V

    .line 1379
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->onPlayingAnimStopListener:Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;

    if-eqz v2, :cond_14

    invoke-interface {v2}, Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;->onAnimStopListener()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1382
    :cond_14
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1e

    .line 1383
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1385
    :cond_1e
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_27

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_27
    if-eqz v1, :cond_32

    .line 1387
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    :goto_33
    const/4 v3, -0x1

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v2, :cond_3c

    goto/16 :goto_119

    .line 1388
    :cond_3c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_119

    .line 1389
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 1390
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_4f
    const-string v2, "#ffffffff"

    .line 1392
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoiceStrokeRectColor:I

    .line 1393
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteRectDecorationAnim:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_60

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1394
    :cond_60
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    aput v8, v2, v6

    .line 1395
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    aput v8, v2, v7

    .line 1396
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionPointId:I

    .line 1398
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    aget v8, v2, v6

    iget v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    sub-float/2addr v8, v9

    .line 1399
    aget v2, v2, v7

    iget v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    sub-float/2addr v2, v9

    .line 1397
    invoke-direct {v0, v8, v2}, Lcom/codemao/midi/view/midiview/MidiView;->findNoteRectWithPoint(FF)[Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteModelIndexLocation:[Ljava/lang/Integer;

    if-nez v2, :cond_96

    .line 1403
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->playNoteRunnableForClick:Ljava/lang/Runnable;

    const-wide/16 v8, 0xc8

    invoke-virtual {v0, v2, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b7

    :cond_96
    if-nez v2, :cond_9b

    .line 1406
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9b
    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1407
    iget-object v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteModelIndexLocation:[Ljava/lang/Integer;

    if-nez v8, :cond_a8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a8
    aget-object v8, v8, v7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1405
    invoke-direct {v0, v2, v8}, Lcom/codemao/midi/view/midiview/MidiView;->checkMultipleDrag(II)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 1410
    iput v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    return v7

    .line 1414
    :cond_b7
    :goto_b7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {v0, v2}, Lcom/codemao/midi/view/midiview/MidiView;->isNoteTypeRange(F)Z

    move-result v2

    if-eqz v2, :cond_115

    .line 1415
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    sub-float/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteTypeIndex(F)I

    move-result v1

    iput v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteClickStateIndex:I

    if-eq v1, v3, :cond_fb

    .line 1416
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteClickStateIndex:I

    if-le v1, v2, :cond_fb

    .line 1417
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->onMidiNoteEventListener:Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;

    if-eqz v1, :cond_fb

    .line 1418
    iget-object v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/view/midiview/NoteModel;

    invoke-virtual {v2}, Lcom/codemao/midi/view/midiview/NoteModel;->getNoteType()Lcom/codemao/midi/view/midiview/NoteType;

    move-result-object v2

    if-eqz v2, :cond_f6

    invoke-virtual {v2}, Lcom/codemao/midi/view/midiview/NoteType;->getNoteCode()I

    move-result v6

    .line 1417
    :cond_f6
    invoke-interface {v1, v6}, Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;->onNoteClickListener(I)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1421
    :cond_fb
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->removeEmptyNoteModel()V

    .line 1422
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->stopMidiPlayingProgressAnim()V

    .line 1423
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->onPlayingAnimStopListener:Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;

    if-eqz v1, :cond_10a

    invoke-interface {v1}, Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;->onAnimStopListener()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1424
    :cond_10a
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->playNoteRunnableForClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1425
    iput v5, v0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    .line 1426
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return v7

    .line 1429
    :cond_115
    iput v6, v0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    goto/16 :goto_51f

    :cond_119
    :goto_119
    const/4 v8, 0x4

    if-nez v2, :cond_11d

    goto :goto_127

    .line 1431
    :cond_11d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v5, :cond_127

    .line 1432
    iput v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    goto/16 :goto_51f

    :cond_127
    :goto_127
    const/4 v9, 0x3

    const/4 v10, 0x2

    if-nez v2, :cond_12d

    goto/16 :goto_3c3

    .line 1434
    :cond_12d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v10, :cond_3c3

    .line 1435
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v2, v10, :cond_373

    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    if-ne v2, v8, :cond_13f

    goto/16 :goto_373

    .line 1450
    :cond_13f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v7, :cond_51f

    .line 1452
    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    if-ne v2, v5, :cond_19c

    .line 1453
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->playNoteRunnableForClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1455
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {v0, v2}, Lcom/codemao/midi/view/midiview/MidiView;->isNoteTypeRange(F)Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 1456
    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteClickStateIndex:I

    .line 1457
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    sub-float/2addr v1, v3

    invoke-direct {v0, v1}, Lcom/codemao/midi/view/midiview/MidiView;->getNoteTypeIndex(F)I

    move-result v1

    iput v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteClickStateIndex:I

    .line 1458
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1459
    iget v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteClickStateIndex:I

    if-ltz v1, :cond_19b

    if-eq v2, v1, :cond_19b

    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteClickStateIndex:I

    if-le v1, v2, :cond_19b

    .line 1460
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->onMidiNoteEventListener:Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;

    if-eqz v1, :cond_19b

    .line 1461
    iget-object v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/view/midiview/NoteModel;

    invoke-virtual {v2}, Lcom/codemao/midi/view/midiview/NoteModel;->getNoteType()Lcom/codemao/midi/view/midiview/NoteType;

    move-result-object v2

    if-eqz v2, :cond_196

    invoke-virtual {v2}, Lcom/codemao/midi/view/midiview/NoteType;->getNoteCode()I

    move-result v6

    .line 1460
    :cond_196
    invoke-interface {v1, v6}, Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;->onNoteClickListener(I)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_19b
    return v7

    :cond_19c
    if-ne v2, v9, :cond_1d0

    .line 1468
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->playNoteRunnableForClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1470
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->removeEmptyNoteModel()V

    .line 1471
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->stopMidiPlayingProgressAnim()V

    .line 1472
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->onPlayingAnimStopListener:Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;

    if-eqz v2, :cond_1b2

    invoke-interface {v2}, Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;->onAnimStopListener()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1474
    :cond_1b2
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    aget v3, v2, v6

    iget v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    sub-float/2addr v3, v4

    .line 1475
    aget v2, v2, v7

    iget v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    sub-float/2addr v2, v4

    .line 1476
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    sub-float/2addr v4, v5

    .line 1477
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v5, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    sub-float/2addr v1, v5

    .line 1473
    invoke-direct {v0, v3, v2, v4, v1}, Lcom/codemao/midi/view/midiview/MidiView;->multipleChoiceNoteRectWithDxDy(FFFF)V

    return v7

    :cond_1d0
    if-ne v2, v10, :cond_1fd

    .line 1482
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteModelIndexLocation:[Ljava/lang/Integer;

    if-eqz v2, :cond_1fc

    .line 1483
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->stopMidiPlayingProgressAnim()V

    .line 1484
    iget-object v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->onPlayingAnimStopListener:Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;

    if-eqz v3, :cond_1e2

    invoke-interface {v3}, Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;->onAnimStopListener()V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1486
    :cond_1e2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    aget v3, v3, v6

    sub-float/2addr v1, v3

    .line 1487
    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1488
    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1485
    invoke-direct {v0, v1, v3, v2}, Lcom/codemao/midi/view/midiview/MidiView;->stretchNoteRectWithDx(FII)V

    .line 1490
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1fc
    return v7

    :cond_1fd
    if-ne v2, v7, :cond_24b

    .line 1494
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->playNoteRunnableForClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1496
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteModelIndexLocation:[Ljava/lang/Integer;

    if-eqz v2, :cond_24a

    .line 1497
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->removeEmptyNoteModel()V

    .line 1498
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->stopMidiPlayingProgressAnim()V

    .line 1499
    iget-object v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->onPlayingAnimStopListener:Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;

    if-eqz v3, :cond_217

    invoke-interface {v3}, Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;->onAnimStopListener()V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1501
    :cond_217
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    aget v4, v4, v6

    sub-float/2addr v3, v4

    .line 1502
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    aget v5, v5, v7

    sub-float/2addr v4, v5

    .line 1503
    aget-object v5, v2, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1504
    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1500
    invoke-direct {v0, v3, v4, v5, v2}, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteRectWithDxDy(FFII)V

    .line 1506
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v2, v6

    .line 1507
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v2, v7

    .line 1508
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_24a
    return v7

    .line 1512
    :cond_24b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    aget v3, v3, v6

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1513
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v5, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    aget v5, v5, v7

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/16 v5, 0xa

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_353

    cmpl-float v5, v2, v3

    if-ltz v5, :cond_353

    .line 1516
    iget v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    if-ne v2, v4, :cond_277

    .line 1517
    iput v7, v0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    return v7

    .line 1520
    :cond_277
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    aget v3, v3, v6

    sub-float/2addr v2, v3

    int-to-float v3, v6

    cmpg-float v2, v2, v3

    if-gez v2, :cond_28d

    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteModelIndexLocation:[Ljava/lang/Integer;

    if-nez v2, :cond_28d

    .line 1521
    iput v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    goto/16 :goto_34c

    .line 1522
    :cond_28d
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteModelIndexLocation:[Ljava/lang/Integer;

    if-nez v2, :cond_2e3

    .line 1523
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->playNoteRunnableForClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1524
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->removeEmptyNoteModel()V

    .line 1525
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->stopMidiPlayingProgressAnim()V

    .line 1526
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->onPlayingAnimStopListener:Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;

    if-eqz v1, :cond_2a5

    invoke-interface {v1}, Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;->onAnimStopListener()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1528
    :cond_2a5
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    aget v2, v1, v6

    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    sub-float/2addr v2, v3

    .line 1529
    aget v1, v1, v7

    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    sub-float/2addr v1, v3

    .line 1527
    invoke-direct {v0, v2, v1}, Lcom/codemao/midi/view/midiview/MidiView;->addNoteRectWithPoint(FF)[Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteModelIndexLocation:[Ljava/lang/Integer;

    if-eqz v1, :cond_2e0

    .line 1532
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->onMidiNoteEventListener:Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;

    if-eqz v2, :cond_2e0

    .line 1533
    iget-object v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/view/midiview/NoteModel;

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getNoteType()Lcom/codemao/midi/view/midiview/NoteType;

    move-result-object v1

    if-eqz v1, :cond_2db

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteType;->getNoteCode()I

    move-result v6

    .line 1532
    :cond_2db
    invoke-interface {v2, v6}, Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;->onNoteClickListener(I)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1536
    :cond_2e0
    iput v10, v0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    goto :goto_34c

    .line 1537
    :cond_2e3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    aget v4, v4, v6

    sub-float/2addr v2, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_31e

    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteModelIndexLocation:[Ljava/lang/Integer;

    if-eqz v2, :cond_31e

    if-nez v2, :cond_2f9

    .line 1540
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2f9
    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1541
    iget-object v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteModelIndexLocation:[Ljava/lang/Integer;

    if-nez v3, :cond_306

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_306
    aget-object v3, v3, v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1542
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    aget v5, v5, v6

    sub-float/2addr v4, v5

    .line 1539
    invoke-direct {v0, v2, v3, v4}, Lcom/codemao/midi/view/midiview/MidiView;->isSingleTickNoteRectCanDrag(IIF)Z

    move-result v2

    if-eqz v2, :cond_31e

    .line 1545
    iput v7, v0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    goto :goto_34c

    .line 1547
    :cond_31e
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteModelIndexLocation:[Ljava/lang/Integer;

    if-eqz v2, :cond_34a

    if-nez v2, :cond_327

    .line 1548
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_327
    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1549
    iget-object v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteModelIndexLocation:[Ljava/lang/Integer;

    if-nez v3, :cond_334

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_334
    aget-object v3, v3, v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1550
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    sub-float/2addr v1, v4

    .line 1547
    invoke-direct {v0, v2, v3, v1}, Lcom/codemao/midi/view/midiview/MidiView;->isTheLastTick(IIF)Z

    move-result v1

    if-eqz v1, :cond_34a

    .line 1553
    iput v10, v0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    goto :goto_34c

    .line 1555
    :cond_34a
    iput v7, v0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    .line 1557
    :goto_34c
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_51f

    .line 1558
    :cond_353
    iget v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v1, v3, v1

    if-lez v1, :cond_51f

    cmpl-float v1, v3, v2

    if-lez v1, :cond_51f

    .line 1559
    iget v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    if-ne v1, v4, :cond_365

    .line 1560
    iput v7, v0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    return v7

    .line 1563
    :cond_365
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteModelIndexLocation:[Ljava/lang/Integer;

    if-eqz v1, :cond_36a

    const/4 v9, 0x1

    :cond_36a
    iput v9, v0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    .line 1568
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_51f

    .line 1436
    :cond_373
    :goto_373
    invoke-direct {v0, v7}, Lcom/codemao/midi/view/midiview/MidiView;->showTickBg(Z)V

    .line 1438
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->playNoteRunnableForClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1440
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionPointId:I

    if-ne v2, v3, :cond_51f

    .line 1441
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    aget v3, v3, v6

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1442
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    aget v4, v4, v7

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 1443
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v0, Lcom/codemao/midi/view/midiview/MidiView;->mTouchSlop:I

    if-ge v4, v5, :cond_3ab

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v0, Lcom/codemao/midi/view/midiview/MidiView;->mTouchSlop:I

    if-lt v4, v5, :cond_51f

    .line 1444
    :cond_3ab
    invoke-virtual {v0, v2, v3}, Lcom/codemao/midi/view/midiview/MidiView;->smoothScrollBy(II)V

    .line 1445
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1446
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v2, v6

    .line 1447
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v2, v7

    goto/16 :goto_51f

    :cond_3c3
    :goto_3c3
    if-nez v2, :cond_3c6

    goto :goto_3cd

    .line 1573
    :cond_3c6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v7, :cond_3cd

    goto :goto_3d7

    :cond_3cd
    :goto_3cd
    if-nez v2, :cond_3d1

    goto/16 :goto_51f

    :cond_3d1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v9, :cond_51f

    .line 1574
    :goto_3d7
    iget v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    if-ne v1, v4, :cond_400

    .line 1575
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->removeEmptyNoteModel()V

    .line 1576
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->stopMidiPlayingProgressAnim()V

    .line 1577
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->onPlayingAnimStopListener:Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;

    if-eqz v1, :cond_3ea

    invoke-interface {v1}, Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;->onAnimStopListener()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1578
    :cond_3ea
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->onMidiNoteEventListener:Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;

    if-eqz v1, :cond_514

    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v4, Lcom/codemao/midi/view/midiview/MidiView$onTouchEvent$4;

    invoke-direct {v4, v0}, Lcom/codemao/midi/view/midiview/MidiView$onTouchEvent$4;-><init>(Lcom/codemao/midi/view/midiview/MidiView;)V

    invoke-interface {v1, v2, v4}, Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;->onNoteDeleteListener(ILkotlin/jvm/functions/Function0;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_514

    :cond_400
    if-ne v1, v8, :cond_46e

    .line 1583
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_410

    const/16 v2, 0x320

    iget v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->mMaxFlintVelocity:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1584
    :cond_410
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_41a

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    goto :goto_41b

    :cond_41a
    const/4 v1, 0x0

    .line 1585
    :goto_41b
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_425

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    float-to-int v2, v2

    goto :goto_426

    :cond_425
    const/4 v2, 0x0

    .line 1587
    :goto_426
    iget-object v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->mAnimatorAlpha:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_42d

    .line 1588
    invoke-direct {v0, v6}, Lcom/codemao/midi/view/midiview/MidiView;->showTickBg(Z)V

    .line 1590
    :cond_42d
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v0, Lcom/codemao/midi/view/midiview/MidiView;->mMinFlintVelocity:I

    if-gt v4, v5, :cond_43d

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v0, Lcom/codemao/midi/view/midiview/MidiView;->mMinFlintVelocity:I

    if-le v4, v5, :cond_514

    .line 1591
    :cond_43d
    iget-boolean v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->hasStartPlayMidi:Z

    if-eqz v4, :cond_442

    return v7

    .line 1595
    :cond_442
    iput-boolean v7, v0, Lcom/codemao/midi/view/midiview/MidiView;->isFling:Z

    .line 1596
    iget-object v8, v0, Lcom/codemao/midi/view/midiview/MidiView;->mScroller:Landroid/widget/OverScroller;

    .line 1597
    iget v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    neg-float v4, v4

    float-to-int v9, v4

    .line 1598
    iget v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    neg-float v4, v4

    float-to-int v10, v4

    neg-int v11, v1

    neg-int v12, v2

    const/4 v13, 0x0

    .line 1602
    iget v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->contentWidth:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v14, v1

    const/4 v15, 0x0

    .line 1604
    iget v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->contentHeight:F

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    move/from16 v16, v1

    .line 1596
    invoke-virtual/range {v8 .. v16}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 1606
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_514

    :cond_46e
    if-nez v1, :cond_4f4

    .line 1609
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->removeEmptyNoteModel()V

    .line 1610
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->stopMidiPlayingProgressAnim()V

    .line 1611
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->onPlayingAnimStopListener:Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;

    if-eqz v1, :cond_47f

    invoke-interface {v1}, Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;->onAnimStopListener()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1612
    :cond_47f
    iput-boolean v7, v0, Lcom/codemao/midi/view/midiview/MidiView;->hasChange:Z

    .line 1613
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteModelIndexLocation:[Ljava/lang/Integer;

    if-eqz v1, :cond_49a

    .line 1614
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1615
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->onMidiNoteEventListener:Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;

    if-eqz v1, :cond_514

    new-instance v2, Lcom/codemao/midi/view/midiview/MidiView$onTouchEvent$5;

    invoke-direct {v2, v0}, Lcom/codemao/midi/view/midiview/MidiView$onTouchEvent$5;-><init>(Lcom/codemao/midi/view/midiview/MidiView;)V

    invoke-interface {v1, v7, v2}, Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;->onNoteDeleteListener(ILkotlin/jvm/functions/Function0;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_514

    .line 1622
    :cond_49a
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->playNoteRunnableForClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1623
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v7, :cond_4e8

    .line 1625
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->preActionDownPoint:[F

    aget v2, v1, v6

    iget v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    sub-float/2addr v2, v4

    .line 1626
    aget v1, v1, v7

    iget v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    sub-float/2addr v1, v4

    .line 1624
    invoke-direct {v0, v2, v1}, Lcom/codemao/midi/view/midiview/MidiView;->addNoteRectWithPoint(FF)[Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->noteModelIndexLocation:[Ljava/lang/Integer;

    if-eqz v1, :cond_514

    .line 1629
    iget-object v2, v0, Lcom/codemao/midi/view/midiview/MidiView;->onMidiNoteEventListener:Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;

    if-eqz v2, :cond_4e2

    .line 1630
    iget-object v4, v0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/midi/view/midiview/NoteModel;

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteModel;->getNoteType()Lcom/codemao/midi/view/midiview/NoteType;

    move-result-object v1

    if-eqz v1, :cond_4dd

    invoke-virtual {v1}, Lcom/codemao/midi/view/midiview/NoteType;->getNoteCode()I

    move-result v6

    .line 1629
    :cond_4dd
    invoke-interface {v2, v6}, Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;->onNoteClickListener(I)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1632
    :cond_4e2
    invoke-direct/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->startDragRectStrokeColorAnimator()V

    .line 1633
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_514

    .line 1634
    :cond_4e8
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v7, :cond_514

    .line 1635
    invoke-direct/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->startDragRectStrokeColorAnimator()V

    goto :goto_514

    :cond_4f4
    if-ne v1, v10, :cond_4ff

    .line 1639
    invoke-direct/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->notifyStretchNoteRect()V

    .line 1640
    invoke-direct/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->startDragRectStrokeColorAnimator()V

    .line 1641
    iput-boolean v7, v0, Lcom/codemao/midi/view/midiview/MidiView;->hasChange:Z

    goto :goto_514

    :cond_4ff
    if-ne v1, v7, :cond_507

    .line 1643
    invoke-direct/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->notifyDragNoteRect()V

    .line 1644
    iput-boolean v7, v0, Lcom/codemao/midi/view/midiview/MidiView;->hasChange:Z

    goto :goto_514

    :cond_507
    if-ne v1, v9, :cond_50d

    .line 1646
    invoke-direct/range {p0 .. p0}, Lcom/codemao/midi/view/midiview/MidiView;->notifyMultipleChoice()V

    goto :goto_514

    :cond_50d
    if-ne v1, v5, :cond_514

    .line 1648
    iput v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->itemNoteClickStateIndex:I

    .line 1649
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1651
    :cond_514
    :goto_514
    iput v3, v0, Lcom/codemao/midi/view/midiview/MidiView;->touchMode:I

    .line 1653
    iget-object v1, v0, Lcom/codemao/midi/view/midiview/MidiView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_51f

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_51f
    :goto_51f
    return v7
.end method

.method public final removeEmptyNoteModel()V
    .registers 8

    .line 1754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1755
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1756
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v3, 0x0

    .line 1658
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    if-gez v3, :cond_30

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_30
    check-cast v5, Lcom/codemao/midi/view/midiview/NoteModel;

    if-lez v3, :cond_41

    .line 1758
    invoke-virtual {v5}, Lcom/codemao/midi/view/midiview/NoteModel;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_41

    .line 1759
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    move v3, v6

    goto :goto_1f

    .line 1762
    :cond_43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_49
    if-ltz v3, :cond_b

    .line 1763
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_49

    .line 1766
    :cond_5b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final resetContentWH(Z)V
    .registers 4

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 1744
    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->contentWidth:F

    .line 1747
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemHeight:F

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->contentHeight:F

    .line 1748
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3a

    const/4 p1, 0x0

    .line 1749
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->contentHeight:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/codemao/midi/view/midiview/MidiView;->smoothScrollBy(II)V

    :cond_3a
    return-void
.end method

.method public final resetSheetList()V
    .registers 4

    .line 2004
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->sheetList:Ljava/util/List;

    .line 2062
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 2005
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/view/midiview/NoteModel;

    .line 2006
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2007
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 2009
    :cond_20
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->dragNoteModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2010
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setContentHeight(F)V
    .registers 2

    .line 98
    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->contentHeight:F

    return-void
.end method

.method public final setContentWidth(F)V
    .registers 2

    .line 97
    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->contentWidth:F

    return-void
.end method

.method public final setHasChange(Z)V
    .registers 2

    .line 115
    iput-boolean p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->hasChange:Z

    return-void
.end method

.method public final setHasShowPiano(Z)V
    .registers 2

    .line 99
    iput-boolean p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->hasShowPiano:Z

    return-void
.end method

.method public final setOnMidiNoteEventListener(Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->onMidiNoteEventListener:Lcom/codemao/midi/view/midiview/MidiView$OnMidiNoteEventListener;

    return-void
.end method

.method public final setOnPlayingAnimStopListener(Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->onPlayingAnimStopListener:Lcom/codemao/midi/view/midiview/MidiView$OnPlayingAnimStopListener;

    return-void
.end method

.method public final setOnScrollListener(Lcom/codemao/midi/view/midiview/MidiView$OnScrollListener;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->onScrollListener:Lcom/codemao/midi/view/midiview/MidiView$OnScrollListener;

    return-void
.end method

.method public final smoothScrollBy(II)V
    .registers 8

    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->isFling:Z

    .line 293
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->mScroller:Landroid/widget/OverScroller;

    .line 294
    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    neg-float v1, v1

    float-to-int v1, v1

    .line 295
    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    neg-float v2, v2

    float-to-int v2, v2

    neg-int v3, p1

    neg-int v4, p2

    .line 293
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 299
    iget v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    .line 300
    iget p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    .line 301
    invoke-direct {p0}, Lcom/codemao/midi/view/midiview/MidiView;->notifyScrollOffset()V

    return-void
.end method

.method public final smoothScrollTo(FF)V
    .registers 9

    .line 274
    iget v2, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    sub-float v3, p1, v2

    .line 275
    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveY:F

    sub-float v5, p2, v4

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 279
    fill-array-data p1, :array_2a

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-string p2, "scrollAnim"

    .line 280
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 281
    new-instance p2, Lcom/codemao/midi/view/midiview/MidiView$smoothScrollTo$1;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/codemao/midi/view/midiview/MidiView$smoothScrollTo$1;-><init>(Lcom/codemao/midi/view/midiview/MidiView;FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 287
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_2a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final startMidiPlaying(JJ)Z
    .registers 15

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-gtz v3, :cond_8

    return v0

    :cond_8
    const/4 v3, 0x1

    .line 1860
    iput-boolean v3, p0, Lcom/codemao/midi/view/midiview/MidiView;->hasStartPlayMidi:Z

    .line 1861
    invoke-virtual {p0}, Lcom/codemao/midi/view/midiview/MidiView;->removeEmptyNoteModel()V

    .line 1865
    invoke-virtual {p0}, Lcom/codemao/midi/view/midiview/MidiView;->getOffsetMoveX()F

    move-result v4

    invoke-virtual {p0}, Lcom/codemao/midi/view/midiview/MidiView;->getItemDecorationWidth()F

    move-result v5

    const/4 v6, 0x3

    int-to-float v6, v6

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/codemao/midi/view/midiview/MidiView;->getItemWidth()F

    move-result v5

    div-float/2addr v4, v5

    const/16 v5, 0xf0

    int-to-float v6, v5

    mul-float v4, v4, v6

    float-to-long v6, v4

    cmp-long v4, v6, v1

    if-gez v4, :cond_2b

    goto :goto_2c

    :cond_2b
    move-wide v1, v6

    :goto_2c
    add-long/2addr p3, v1

    int-to-long v1, v5

    .line 1870
    div-long/2addr p3, v1

    long-to-int p4, p3

    int-to-float p3, p4

    .line 1873
    iget p4, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    iget v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    add-float/2addr p4, v1

    mul-float p3, p3, p4

    .line 1875
    invoke-virtual {p0}, Lcom/codemao/midi/view/midiview/MidiView;->calcNodeStartX()F

    move-result p4

    sub-float v1, p3, p4

    long-to-float p1, p1

    div-float/2addr v1, p1

    div-float p2, p4, v1

    .line 1879
    iget-object v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressAnim:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_49
    const/high16 v1, -0x40800000  # -1.0f

    .line 1880
    iput v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->mPlayLineOffset:F

    const/4 v1, 0x0

    .line 1881
    iput v1, p0, Lcom/codemao/midi/view/midiview/MidiView;->mPlayMoveX:F

    .line 1884
    iget v6, p0, Lcom/codemao/midi/view/midiview/MidiView;->offsetMoveX:F

    sub-float v1, p4, v6

    .line 1889
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p4

    .line 1892
    new-instance v7, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    iput v4, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    add-float v9, p4, p3

    cmpg-float v4, v9, v4

    if-gez v4, :cond_81

    .line 1895
    iput p3, v7, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1899
    :cond_81
    iget p3, p0, Lcom/codemao/midi/view/midiview/MidiView;->maxTickCount:I

    int-to-float p3, p3

    iget v4, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemWidth:F

    iget v5, p0, Lcom/codemao/midi/view/midiview/MidiView;->itemDecorationWidth:F

    add-float/2addr v4, v5

    mul-float p3, p3, v4

    add-float/2addr p4, p3

    const/4 p3, 0x2

    new-array v4, p3, [F

    aput v1, v4, v0

    aput v9, v4, v3

    .line 1902
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a3

    .line 1903
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_a3
    int-to-float p3, p3

    div-float/2addr v2, p3

    sub-float v8, p4, v2

    .line 1906
    iget-object p3, p0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressAnim:Landroid/animation/ValueAnimator;

    if-nez p3, :cond_ae

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_ae
    new-instance p4, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;

    move-object v4, p4

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/codemao/midi/view/midiview/MidiView$startMidiPlaying$1;-><init>(Lcom/codemao/midi/view/midiview/MidiView;FLkotlin/jvm/internal/Ref$FloatRef;FF)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1935
    iget-object p3, p0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressAnim:Landroid/animation/ValueAnimator;

    if-nez p3, :cond_bf

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_bf
    add-float/2addr p1, p2

    const/16 p2, 0x3e8

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-long p1, p1

    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1936
    iget-object p1, p0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressAnim:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_cf

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_cf
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return v3
.end method

.method public final stopMidiPlayingProgressAnim()V
    .registers 3

    .line 1966
    iget-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    const/4 v0, 0x0

    .line 1967
    iput-object v0, p0, Lcom/codemao/midi/view/midiview/MidiView;->playProgressOffset:Ljava/lang/Float;

    .line 1968
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v1, 0x2

    .line 1969
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public final upDateRect(Lcom/codemao/midi/view/midiview/NoteModel;III)V
    .registers 6

    const-string v0, "noteModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1682
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/midi/view/midiview/MidiView;->updateRect(Lcom/codemao/midi/view/midiview/NoteModel;III)V

    return-void
.end method
