.class public Lcom/codemao/creativecenter/customview/FrameImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "FrameImageView.java"


# instance fields
.field private allRes:[I

.field private lastFrameP:I

.field public mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$VAgAnTJk80zLZy7ccri-rOXyV4A(Lcom/codemao/creativecenter/customview/FrameImageView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/FrameImageView;->lambda$play$0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/FrameImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/FrameImageView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$play$0(I)V
    .registers 6

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/FrameImageView;->allRes:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_8

    const/4 v3, 0x0

    goto :goto_9

    :cond_8
    move v3, p1

    :goto_9
    aget v0, v0, v3

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 84
    iget v0, p0, Lcom/codemao/creativecenter/customview/FrameImageView;->lastFrameP:I

    if-lt p1, v0, :cond_16

    .line 85
    invoke-direct {p0, v1}, Lcom/codemao/creativecenter/customview/FrameImageView;->play(I)V

    goto :goto_26

    :cond_16
    if-ne p1, v2, :cond_1b

    add-int/lit8 v0, p1, 0x2

    goto :goto_1d

    :cond_1b
    add-int/lit8 v0, p1, 0x1

    .line 87
    :goto_1d
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/customview/FrameImageView;->play(I)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_26

    :catch_21
    add-int/lit8 p1, p1, 0x1

    .line 90
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/FrameImageView;->play(I)V

    :goto_26
    return-void
.end method

.method private play(I)V
    .registers 6

    .line 74
    new-instance v0, Lcom/codemao/creativecenter/customview/FrameImageView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/codemao/creativecenter/customview/FrameImageView$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/customview/FrameImageView;I)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/FrameImageView;->runnable:Ljava/lang/Runnable;

    .line 95
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/FrameImageView;->mHandler:Landroid/os/Handler;

    const/4 v2, -0x1

    if-ne p1, v2, :cond_f

    const-wide/16 v2, 0x0

    goto :goto_11

    :cond_f
    const-wide/16 v2, 0x28

    :goto_11
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 3

    .line 112
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 113
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/FrameImageView;->stopAnim()V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetachedFromWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimImageView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setData(I)V
    .registers 6

    .line 47
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/codemao/creativecenter/customview/FrameImageView;->lastFrameP:I

    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/FrameImageView;->allRes:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 52
    :goto_1e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 53
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/FrameImageView;->allRes:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 57
    :cond_2f
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/FrameImageView;->startAnim()V

    return-void
.end method

.method public startAnim()V
    .registers 2

    .line 64
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/FrameImageView;->stopAnim()V

    const/4 v0, -0x1

    .line 65
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/customview/FrameImageView;->play(I)V

    return-void
.end method

.method public stopAnim()V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/FrameImageView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method
