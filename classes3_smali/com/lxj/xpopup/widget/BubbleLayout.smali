.class public Lcom/lxj/xpopup/widget/BubbleLayout;
.super Landroid/widget/FrameLayout;
.source "BubbleLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lxj/xpopup/widget/BubbleLayout$Look;
    }
.end annotation


# instance fields
.field public arrowOffset:I

.field isLookPositionCenter:Z

.field private mArrowDownLeftRadius:I

.field private mArrowDownRightRadius:I

.field private mArrowTopLeftRadius:I

.field private mArrowTopRightRadius:I

.field private mBottom:I

.field private mBubbleBgRes:I

.field private mBubbleBorderColor:I

.field private mBubbleBorderPaint:Landroid/graphics/Paint;

.field private mBubbleBorderSize:I

.field private mBubbleColor:I

.field private mBubbleImageBg:Landroid/graphics/Bitmap;

.field private mBubbleImageBgBeforePaint:Landroid/graphics/Paint;

.field private mBubbleImageBgDstRectF:Landroid/graphics/RectF;

.field private mBubbleImageBgPaint:Landroid/graphics/Paint;

.field private mBubbleImageBgSrcRect:Landroid/graphics/Rect;

.field private mBubblePadding:I

.field private mBubbleRadius:I

.field private mHeight:I

.field private mLDR:I

.field private mLTR:I

.field private mLeft:I

.field private mLook:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

.field public mLookLength:I

.field public mLookPosition:I

.field public mLookWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRDR:I

.field private mRTR:I

.field private mRight:I

.field private mShadowColor:I

.field private mShadowRadius:I

.field private mShadowX:I

.field private mShadowY:I

.field private mTop:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/lxj/xpopup/widget/BubbleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, v0}, Lcom/lxj/xpopup/widget/BubbleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLDR:I

    .line 52
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBgRes:I

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBg:Landroid/graphics/Bitmap;

    .line 56
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBgDstRectF:Landroid/graphics/RectF;

    .line 57
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBgSrcRect:Landroid/graphics/Rect;

    .line 58
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBgPaint:Landroid/graphics/Paint;

    .line 59
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBgBeforePaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    .line 62
    iput p2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBorderColor:I

    const/4 p2, 0x0

    .line 64
    iput p2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBorderSize:I

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBorderPaint:Landroid/graphics/Paint;

    .line 67
    iput p2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->arrowOffset:I

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 115
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 116
    invoke-direct {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->initAttr()V

    .line 117
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPaint:Landroid/graphics/Paint;

    .line 118
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    .line 120
    iget-object p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBgPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private initAttr()V
    .registers 4

    .line 145
    sget-object v0, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->BOTTOM:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    iput-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLook:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookPosition:I

    .line 147
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000  # 10.0f

    invoke-static {v1, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41100000  # 9.0f

    invoke-static {v1, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    .line 150
    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowX:I

    .line 151
    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowY:I

    .line 153
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41000000  # 8.0f

    invoke-static {v1, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleRadius:I

    const/4 v1, -0x1

    .line 154
    iput v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLTR:I

    .line 155
    iput v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRTR:I

    .line 156
    iput v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRDR:I

    .line 157
    iput v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLDR:I

    .line 159
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v1, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowTopLeftRadius:I

    .line 160
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowTopRightRadius:I

    .line 161
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownLeftRadius:I

    .line 162
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownRightRadius:I

    .line 164
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubblePadding:I

    const v1, -0xbbbbbc

    .line 165
    iput v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowColor:I

    const-string v1, "#3b3c3d"

    .line 167
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleColor:I

    .line 174
    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBorderColor:I

    .line 175
    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBorderSize:I

    return-void
.end method

.method private initData()V
    .registers 14

    .line 203
    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->initPadding()V

    .line 204
    iget-boolean v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->isLookPositionCenter:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_22

    .line 205
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLook:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    sget-object v2, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->LEFT:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    if-eq v0, v2, :cond_19

    sget-object v2, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->RIGHT:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    if-ne v0, v2, :cond_13

    goto :goto_19

    :cond_13
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mWidth:I

    div-int/2addr v0, v1

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    goto :goto_1e

    :cond_19
    :goto_19
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mHeight:I

    div-int/2addr v0, v1

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    :goto_1e
    div-int/2addr v2, v1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookPosition:I

    .line 209
    :cond_22
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookPosition:I

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->arrowOffset:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookPosition:I

    .line 211
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowColor:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 212
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBorderColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBorderSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 214
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowRadius:I

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowX:I

    const/4 v3, 0x0

    if-gez v2, :cond_58

    neg-int v4, v2

    goto :goto_59

    :cond_58
    const/4 v4, 0x0

    :goto_59
    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLook:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    sget-object v6, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->LEFT:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    if-ne v5, v6, :cond_63

    iget v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    goto :goto_64

    :cond_63
    const/4 v6, 0x0

    :goto_64
    add-int/2addr v4, v6

    iput v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    .line 217
    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowY:I

    if-gez v4, :cond_6d

    neg-int v6, v4

    goto :goto_6e

    :cond_6d
    const/4 v6, 0x0

    :goto_6e
    add-int/2addr v6, v0

    sget-object v7, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->TOP:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    if-ne v5, v7, :cond_76

    iget v7, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    goto :goto_77

    :cond_76
    const/4 v7, 0x0

    :goto_77
    add-int/2addr v6, v7

    iput v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    .line 218
    iget v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mWidth:I

    sub-int/2addr v6, v0

    if-lez v2, :cond_81

    neg-int v2, v2

    goto :goto_82

    :cond_81
    const/4 v2, 0x0

    :goto_82
    add-int/2addr v6, v2

    sget-object v2, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->RIGHT:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    if-ne v5, v2, :cond_8a

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    goto :goto_8b

    :cond_8a
    const/4 v2, 0x0

    :goto_8b
    sub-int/2addr v6, v2

    iput v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    .line 219
    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mHeight:I

    sub-int/2addr v2, v0

    if-lez v4, :cond_95

    neg-int v0, v4

    goto :goto_96

    :cond_95
    const/4 v0, 0x0

    :goto_96
    add-int/2addr v2, v0

    sget-object v0, Lcom/lxj/xpopup/widget/BubbleLayout$Look;->BOTTOM:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    if-ne v5, v0, :cond_9d

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    :cond_9d
    sub-int/2addr v2, v3

    iput v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    .line 220
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 224
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookPosition:I

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    if-le v2, v3, :cond_b9

    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    sub-int v0, v3, v0

    .line 225
    :cond_b9
    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowRadius:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 226
    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookPosition:I

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    if-le v3, v4, :cond_cc

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    sub-int v2, v4, v2

    .line 227
    :cond_cc
    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowRadius:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 229
    sget-object v3, Lcom/lxj/xpopup/widget/BubbleLayout$1;->$SwitchMap$com$lxj$xpopup$widget$BubbleLayout$Look:[I

    iget-object v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLook:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    const/high16 v5, 0x40000000  # 2.0f

    if-eq v3, v4, :cond_434

    if-eq v3, v1, :cond_31b

    const/4 v1, 0x3

    if-eq v3, v1, :cond_203

    const/4 v1, 0x4

    if-eq v3, v1, :cond_eb

    goto/16 :goto_54a

    .line 291
    :cond_eb
    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRTR()I

    move-result v1

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownLeftRadius:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_11c

    .line 292
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    int-to-float v3, v3

    sub-int v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 293
    iget-object v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    const/4 v7, 0x0

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownLeftRadius:I

    int-to-float v8, v1

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    int-to-float v9, v2

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    int-to-float v4, v3

    div-float/2addr v4, v5

    iget v10, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowTopLeftRadius:I

    int-to-float v10, v10

    sub-float/2addr v4, v10

    int-to-float v10, v1

    add-float/2addr v10, v4

    int-to-float v11, v2

    int-to-float v2, v3

    div-float/2addr v2, v5

    int-to-float v1, v1

    add-float v12, v2, v1

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    goto :goto_12d

    .line 297
    :cond_11c
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v0

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 300
    :goto_12d
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRDR()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownRightRadius:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_165

    .line 301
    iget-object v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    const/4 v7, 0x0

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowTopRightRadius:I

    int-to-float v8, v1

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    neg-int v2, v1

    int-to-float v9, v2

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    int-to-float v4, v2

    div-float v10, v4, v5

    neg-int v1, v1

    int-to-float v11, v1

    int-to-float v1, v2

    div-float/2addr v1, v5

    int-to-float v2, v3

    add-float v12, v1, v2

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 304
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRDR()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 306
    :cond_165
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    int-to-float v3, v2

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    int-to-float v4, v4

    .line 307
    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRDR()I

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v2, v2

    iget v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    int-to-float v6, v6

    .line 306
    invoke-virtual {v1, v3, v4, v2, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 308
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLDR()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 309
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    int-to-float v3, v2

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    int-to-float v6, v4

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLDR()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    invoke-virtual {v1, v3, v6, v2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 310
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLTR()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 311
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    int-to-float v3, v2

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLTR()I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    iget v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v6, v6

    invoke-virtual {v1, v3, v4, v2, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 312
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRTR()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 313
    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRTR()I

    move-result v1

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownLeftRadius:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_1ec

    .line 314
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    int-to-float v2, v1

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v4, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRTR()I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto/16 :goto_54a

    .line 316
    :cond_1ec
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    int-to-float v3, v2

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v4, v4

    iget v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    add-int/2addr v2, v6

    int-to-float v2, v2

    int-to-float v0, v0

    iget v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float/2addr v0, v6

    invoke-virtual {v1, v3, v4, v2, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto/16 :goto_54a

    .line 232
    :cond_203
    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLTR()I

    move-result v1

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownRightRadius:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_236

    .line 233
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    int-to-float v3, v3

    sub-int v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 234
    iget-object v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    const/4 v7, 0x0

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownRightRadius:I

    int-to-float v8, v1

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    neg-int v3, v2

    int-to-float v9, v3

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    int-to-float v4, v3

    div-float/2addr v4, v5

    iget v10, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowTopRightRadius:I

    int-to-float v10, v10

    sub-float/2addr v4, v10

    int-to-float v10, v1

    add-float/2addr v10, v4

    neg-int v2, v2

    int-to-float v11, v2

    int-to-float v2, v3

    div-float/2addr v2, v5

    int-to-float v1, v1

    add-float v12, v2, v1

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    goto :goto_247

    .line 239
    :cond_236
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v0

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 243
    :goto_247
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLDR()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownLeftRadius:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_27d

    .line 244
    iget-object v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    const/4 v7, 0x0

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowTopLeftRadius:I

    int-to-float v8, v1

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    int-to-float v9, v1

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    int-to-float v4, v2

    div-float v10, v4, v5

    int-to-float v11, v1

    int-to-float v1, v2

    div-float/2addr v1, v5

    int-to-float v2, v3

    add-float v12, v1, v2

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 247
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLDR()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 249
    :cond_27d
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    int-to-float v3, v2

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    int-to-float v4, v4

    .line 250
    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLDR()I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    iget v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    int-to-float v6, v6

    .line 249
    invoke-virtual {v1, v3, v4, v2, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 251
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRDR()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 252
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    int-to-float v3, v2

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    int-to-float v6, v4

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRDR()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    invoke-virtual {v1, v3, v6, v2, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 253
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRTR()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 254
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    int-to-float v3, v2

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRTR()I

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v2, v2

    iget v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v6, v6

    invoke-virtual {v1, v3, v4, v2, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 255
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLTR()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 256
    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLTR()I

    move-result v1

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownRightRadius:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_304

    .line 257
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    int-to-float v2, v1

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v4, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLTR()I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto/16 :goto_54a

    .line 259
    :cond_304
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    int-to-float v3, v2

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v4, v4

    iget v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    int-to-float v0, v0

    iget v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float/2addr v0, v6

    invoke-virtual {v1, v3, v4, v2, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto/16 :goto_54a

    .line 263
    :cond_31b
    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLTR()I

    move-result v0

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownLeftRadius:I

    add-int/2addr v0, v1

    if-lt v2, v0, :cond_34f

    .line 264
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    sub-int v1, v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 265
    iget-object v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownLeftRadius:I

    int-to-float v7, v0

    const/4 v8, 0x0

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    int-to-float v3, v1

    div-float/2addr v3, v5

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowTopLeftRadius:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v0

    add-float v9, v3, v4

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    neg-int v4, v3

    int-to-float v10, v4

    int-to-float v1, v1

    div-float/2addr v1, v5

    int-to-float v0, v0

    add-float v11, v1, v0

    neg-int v0, v3

    int-to-float v12, v0

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    goto :goto_360

    .line 269
    :cond_34f
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    int-to-float v1, v2

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v1, v3

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 272
    :goto_360
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRTR()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownRightRadius:I

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_396

    .line 273
    iget-object v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowTopRightRadius:I

    int-to-float v7, v0

    const/4 v8, 0x0

    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    int-to-float v1, v0

    div-float v9, v1, v5

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    int-to-float v10, v1

    int-to-float v0, v0

    div-float/2addr v0, v5

    int-to-float v3, v3

    add-float v11, v0, v3

    int-to-float v12, v1

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 276
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRTR()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 278
    :cond_396
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    int-to-float v3, v1

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v6, v4

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRTR()I

    move-result v7

    add-int/2addr v4, v7

    int-to-float v4, v4

    invoke-virtual {v0, v3, v6, v1, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 279
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    int-to-float v1, v1

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRDR()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 280
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    int-to-float v3, v1

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRDR()I

    move-result v6

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    int-to-float v6, v6

    invoke-virtual {v0, v3, v4, v1, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 281
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLDR()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 282
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    int-to-float v3, v1

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    int-to-float v6, v4

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLDR()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    invoke-virtual {v0, v3, v6, v1, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 283
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    int-to-float v1, v1

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLTR()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 284
    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLTR()I

    move-result v0

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownLeftRadius:I

    add-int/2addr v0, v1

    if-lt v2, v0, :cond_41d

    .line 285
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    int-to-float v2, v1

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLTR()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto/16 :goto_54a

    .line 287
    :cond_41d
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    int-to-float v1, v1

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v4, v3

    int-to-float v2, v2

    iget v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float/2addr v2, v6

    iget v5, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto/16 :goto_54a

    .line 320
    :cond_434
    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLDR()I

    move-result v0

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownRightRadius:I

    add-int/2addr v0, v1

    if-lt v2, v0, :cond_466

    .line 321
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    sub-int v1, v2, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 322
    iget-object v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownRightRadius:I

    int-to-float v7, v0

    const/4 v8, 0x0

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    int-to-float v3, v1

    div-float/2addr v3, v5

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowTopRightRadius:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v0

    add-float v9, v3, v4

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    int-to-float v10, v3

    int-to-float v1, v1

    div-float/2addr v1, v5

    int-to-float v0, v0

    add-float v11, v1, v0

    int-to-float v12, v3

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    goto :goto_477

    .line 326
    :cond_466
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    int-to-float v1, v2

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v1, v3

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 329
    :goto_477
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRDR()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownLeftRadius:I

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_4af

    .line 330
    iget-object v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowTopLeftRadius:I

    int-to-float v7, v0

    const/4 v8, 0x0

    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    int-to-float v1, v0

    div-float v9, v1, v5

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    neg-int v4, v1

    int-to-float v10, v4

    int-to-float v0, v0

    div-float/2addr v0, v5

    int-to-float v3, v3

    add-float v11, v0, v3

    neg-int v0, v1

    int-to-float v12, v0

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 333
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRDR()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 335
    :cond_4af
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    int-to-float v3, v1

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    int-to-float v6, v4

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRDR()I

    move-result v7

    sub-int/2addr v4, v7

    int-to-float v4, v4

    invoke-virtual {v0, v3, v6, v1, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 336
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    int-to-float v1, v1

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRTR()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 337
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    int-to-float v3, v1

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getRTR()I

    move-result v6

    sub-int/2addr v1, v6

    int-to-float v1, v1

    iget v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v6, v6

    invoke-virtual {v0, v3, v4, v1, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 338
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLTR()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 339
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    int-to-float v3, v1

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    int-to-float v6, v4

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLTR()I

    move-result v7

    add-int/2addr v4, v7

    int-to-float v4, v4

    invoke-virtual {v0, v3, v6, v1, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 340
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    int-to-float v1, v1

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLDR()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 341
    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLDR()I

    move-result v0

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownRightRadius:I

    add-int/2addr v0, v1

    if-lt v2, v0, :cond_535

    .line 342
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    int-to-float v2, v1

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->getLDR()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_54a

    .line 344
    :cond_535
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    int-to-float v1, v1

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    int-to-float v4, v3

    int-to-float v2, v2

    iget v6, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float/2addr v2, v6

    iget v5, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 349
    :goto_54a
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    return-void
.end method


# virtual methods
.method public getArrowDownLeftRadius()I
    .registers 2

    .line 538
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownLeftRadius:I

    return v0
.end method

.method public getArrowDownRightRadius()I
    .registers 2

    .line 546
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownRightRadius:I

    return v0
.end method

.method public getArrowTopLeftRadius()I
    .registers 2

    .line 522
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowTopLeftRadius:I

    return v0
.end method

.method public getArrowTopRightRadius()I
    .registers 2

    .line 530
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowTopRightRadius:I

    return v0
.end method

.method public getBubbleColor()I
    .registers 2

    .line 440
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleColor:I

    return v0
.end method

.method public getBubbleRadius()I
    .registers 2

    .line 436
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleRadius:I

    return v0
.end method

.method public getLDR()I
    .registers 3

    .line 514
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLDR:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleRadius:I

    :cond_7
    return v0
.end method

.method public getLTR()I
    .registers 3

    .line 490
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLTR:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleRadius:I

    :cond_7
    return v0
.end method

.method public getLook()Lcom/lxj/xpopup/widget/BubbleLayout$Look;
    .registers 2

    .line 404
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLook:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    return-object v0
.end method

.method public getLookLength()I
    .registers 2

    .line 416
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    return v0
.end method

.method public getLookPosition()I
    .registers 2

    .line 408
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookPosition:I

    return v0
.end method

.method public getLookWidth()I
    .registers 2

    .line 412
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .registers 2

    .line 396
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 2

    .line 400
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getRDR()I
    .registers 3

    .line 506
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRDR:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleRadius:I

    :cond_7
    return v0
.end method

.method public getRTR()I
    .registers 3

    .line 498
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRTR:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleRadius:I

    :cond_7
    return v0
.end method

.method public getShadowColor()I
    .registers 2

    .line 420
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowColor:I

    return v0
.end method

.method public getShadowRadius()I
    .registers 2

    .line 424
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowRadius:I

    return v0
.end method

.method public getShadowX()I
    .registers 2

    .line 428
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowX:I

    return v0
.end method

.method public getShadowY()I
    .registers 2

    .line 432
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowY:I

    return v0
.end method

.method public initPadding()V
    .registers 5

    .line 124
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubblePadding:I

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowRadius:I

    add-int/2addr v0, v1

    .line 125
    sget-object v1, Lcom/lxj/xpopup/widget/BubbleLayout$1;->$SwitchMap$com$lxj$xpopup$widget$BubbleLayout$Look:[I

    iget-object v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLook:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_43

    const/4 v2, 0x2

    if-eq v1, v2, :cond_36

    const/4 v2, 0x3

    if-eq v1, v2, :cond_29

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1c

    goto :goto_4f

    .line 136
    :cond_1c
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowX:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowY:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v0, v0, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_4f

    .line 133
    :cond_29
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowX:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowY:I

    add-int/2addr v3, v0

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_4f

    .line 130
    :cond_36
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowX:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowY:I

    add-int/2addr v3, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_4f

    .line 127
    :cond_43
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowX:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v0, v0, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :goto_4f
    return-void
.end method

.method public invalidate()V
    .registers 1

    .line 189
    invoke-direct {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->initData()V

    .line 190
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 354
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 355
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 356
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_ac

    .line 357
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBgDstRectF:Landroid/graphics/RectF;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 358
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBgDstRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    .line 359
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBgBeforePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 361
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBgDstRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBgDstRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    .line 362
    iget-object v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBg:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/high16 v4, 0x40000000  # 2.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_75

    .line 364
    iget-object v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBg:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    sub-float/2addr v2, v5

    div-float/2addr v2, v4

    float-to-int v2, v2

    .line 365
    iget-object v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBg:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    float-to-int v1, v4

    add-int/2addr v1, v2

    .line 366
    iget-object v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBgSrcRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBg:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v3, v2, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_9e

    .line 368
    :cond_75
    iget-object v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBg:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v1

    sub-float/2addr v2, v5

    div-float/2addr v2, v4

    float-to-int v2, v2

    .line 369
    iget-object v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBg:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v1, v4

    add-int/2addr v1, v2

    .line 370
    iget-object v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBgSrcRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBg:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v2, v3, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 373
    :goto_9e
    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBg:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBgSrcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBgDstRectF:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 374
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 377
    :cond_ac
    iget v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBorderSize:I

    if-eqz v0, :cond_b7

    .line 378
    iget-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_b7
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 629
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_ef

    .line 630
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "mLookPosition"

    .line 631
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookPosition:I

    const-string v0, "mLookWidth"

    .line 632
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    const-string v0, "mLookLength"

    .line 633
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    const-string v0, "mShadowColor"

    .line 634
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowColor:I

    const-string v0, "mShadowRadius"

    .line 635
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowRadius:I

    const-string v0, "mShadowX"

    .line 636
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowX:I

    const-string v0, "mShadowY"

    .line 637
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowY:I

    const-string v0, "mBubbleRadius"

    .line 638
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleRadius:I

    const-string v0, "mLTR"

    .line 640
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLTR:I

    const-string v0, "mRTR"

    .line 641
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRTR:I

    const-string v0, "mRDR"

    .line 642
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRDR:I

    const-string v0, "mLDR"

    .line 643
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLDR:I

    const-string v0, "mBubblePadding"

    .line 645
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubblePadding:I

    const-string v0, "mArrowTopLeftRadius"

    .line 647
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowTopLeftRadius:I

    const-string v0, "mArrowTopRightRadius"

    .line 648
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowTopRightRadius:I

    const-string v0, "mArrowDownLeftRadius"

    .line 649
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownLeftRadius:I

    const-string v0, "mArrowDownRightRadius"

    .line 650
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownRightRadius:I

    const-string v0, "mWidth"

    .line 652
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mWidth:I

    const-string v0, "mHeight"

    .line 653
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mHeight:I

    const-string v0, "mLeft"

    .line 654
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    const-string v0, "mTop"

    .line 655
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    const-string v0, "mRight"

    .line 656
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    const-string v0, "mBottom"

    .line 657
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    const-string v0, "mBubbleBgRes"

    .line 658
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBgRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d5

    .line 661
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBgRes:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBg:Landroid/graphics/Bitmap;

    :cond_d5
    const-string v0, "mBubbleBorderSize"

    .line 664
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBorderSize:I

    const-string v0, "mBubbleBorderColor"

    .line 665
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBorderColor:I

    const-string v0, "instanceState"

    .line 666
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 669
    :cond_ef
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 589
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 590
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "instanceState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 591
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookPosition:I

    const-string v2, "mLookPosition"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 592
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    const-string v2, "mLookWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 593
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    const-string v2, "mLookLength"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 594
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowColor:I

    const-string v2, "mShadowColor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 595
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowRadius:I

    const-string v2, "mShadowRadius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 596
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowX:I

    const-string v2, "mShadowX"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 597
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowY:I

    const-string v2, "mShadowY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 598
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleRadius:I

    const-string v2, "mBubbleRadius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 600
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLTR:I

    const-string v2, "mLTR"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 601
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRTR:I

    const-string v2, "mRTR"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 602
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRDR:I

    const-string v2, "mRDR"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 603
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLDR:I

    const-string v2, "mLDR"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 605
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubblePadding:I

    const-string v2, "mBubblePadding"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 607
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowTopLeftRadius:I

    const-string v2, "mArrowTopLeftRadius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 608
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowTopRightRadius:I

    const-string v2, "mArrowTopRightRadius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownLeftRadius:I

    const-string v2, "mArrowDownLeftRadius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 610
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownRightRadius:I

    const-string v2, "mArrowDownRightRadius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 612
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mWidth:I

    const-string v2, "mWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 613
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mHeight:I

    const-string v2, "mHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 614
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLeft:I

    const-string v2, "mLeft"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 615
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mTop:I

    const-string v2, "mTop"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 616
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRight:I

    const-string v2, "mRight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 617
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBottom:I

    const-string v2, "mBottom"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 619
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBgRes:I

    const-string v2, "mBubbleBgRes"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 621
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBorderColor:I

    const-string v2, "mBubbleBorderColor"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 622
    iget v1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBorderSize:I

    const-string v2, "mBubbleBorderSize"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 182
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mWidth:I

    .line 183
    iput p2, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mHeight:I

    .line 184
    invoke-direct {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->initData()V

    return-void
.end method

.method public postInvalidate()V
    .registers 1

    .line 195
    invoke-direct {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->initData()V

    .line 196
    invoke-super {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method

.method public setArrowDownLeftRadius(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mArrowDownLeftRadius"
        }
    .end annotation

    .line 542
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownLeftRadius:I

    return-void
.end method

.method public setArrowDownRightRadius(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mArrowDownRightRadius"
        }
    .end annotation

    .line 550
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowDownRightRadius:I

    return-void
.end method

.method public setArrowRadius(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radius"
        }
    .end annotation

    .line 554
    invoke-virtual {p0, p1}, Lcom/lxj/xpopup/widget/BubbleLayout;->setArrowDownLeftRadius(I)V

    .line 555
    invoke-virtual {p0, p1}, Lcom/lxj/xpopup/widget/BubbleLayout;->setArrowDownRightRadius(I)V

    .line 556
    invoke-virtual {p0, p1}, Lcom/lxj/xpopup/widget/BubbleLayout;->setArrowTopLeftRadius(I)V

    .line 557
    invoke-virtual {p0, p1}, Lcom/lxj/xpopup/widget/BubbleLayout;->setArrowTopRightRadius(I)V

    return-void
.end method

.method public setArrowTopLeftRadius(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mArrowTopLeftRadius"
        }
    .end annotation

    .line 526
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowTopLeftRadius:I

    return-void
.end method

.method public setArrowTopRightRadius(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mArrowTopRightRadius"
        }
    .end annotation

    .line 534
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mArrowTopRightRadius:I

    return-void
.end method

.method public setBubbleBorderColor(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bubbleBorderColor"
        }
    .end annotation

    .line 585
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBorderColor:I

    return-void
.end method

.method public setBubbleBorderSize(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bubbleBorderSize"
        }
    .end annotation

    .line 581
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleBorderSize:I

    return-void
.end method

.method public setBubbleColor(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mBubbleColor"
        }
    .end annotation

    .line 444
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleColor:I

    return-void
.end method

.method public setBubbleImageBg(Landroid/graphics/Bitmap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 569
    iput-object p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBg:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setBubbleImageBgRes(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    .line 577
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleImageBg:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setBubblePadding(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bubblePadding"
        }
    .end annotation

    .line 561
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubblePadding:I

    return-void
.end method

.method public setBubbleRadius(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mBubbleRadius"
        }
    .end annotation

    .line 486
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mBubbleRadius:I

    return-void
.end method

.method public setLDR(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mLDR"
        }
    .end annotation

    .line 518
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLDR:I

    return-void
.end method

.method public setLTR(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mLTR"
        }
    .end annotation

    .line 494
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLTR:I

    return-void
.end method

.method public setLook(Lcom/lxj/xpopup/widget/BubbleLayout$Look;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mLook"
        }
    .end annotation

    .line 448
    iput-object p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLook:Lcom/lxj/xpopup/widget/BubbleLayout$Look;

    .line 449
    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->initPadding()V

    return-void
.end method

.method public setLookLength(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mLookLength"
        }
    .end annotation

    .line 465
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookLength:I

    .line 466
    invoke-virtual {p0}, Lcom/lxj/xpopup/widget/BubbleLayout;->initPadding()V

    return-void
.end method

.method public setLookPosition(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mLookPosition"
        }
    .end annotation

    .line 453
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookPosition:I

    return-void
.end method

.method public setLookPositionCenter(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isCenter"
        }
    .end annotation

    .line 457
    iput-boolean p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->isLookPositionCenter:Z

    return-void
.end method

.method public setLookWidth(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mLookWidth"
        }
    .end annotation

    .line 461
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mLookWidth:I

    return-void
.end method

.method public setRDR(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mRDR"
        }
    .end annotation

    .line 510
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRDR:I

    return-void
.end method

.method public setRTR(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mRTR"
        }
    .end annotation

    .line 502
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mRTR:I

    return-void
.end method

.method public setShadowColor(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mShadowColor"
        }
    .end annotation

    .line 470
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowColor:I

    return-void
.end method

.method public setShadowRadius(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mShadowRadius"
        }
    .end annotation

    .line 474
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowRadius:I

    return-void
.end method

.method public setShadowX(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mShadowX"
        }
    .end annotation

    .line 478
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowX:I

    return-void
.end method

.method public setShadowY(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mShadowY"
        }
    .end annotation

    .line 482
    iput p1, p0, Lcom/lxj/xpopup/widget/BubbleLayout;->mShadowY:I

    return-void
.end method
