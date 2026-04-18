.class public Lcom/codemao/creativecenter/customview/AnimImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "AnimImageView.java"


# instance fields
.field private bean:Lcom/codemao/creativestore/bean/MaterialActorBean;

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
.method public static synthetic $r8$lambda$QCpkmUBHMFlOdO4ZMgVtbpXh00s(Lcom/codemao/creativecenter/customview/AnimImageView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/AnimImageView;->lambda$play$0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/AnimImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/AnimImageView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getImgUri()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/AnimImageView;->bean:Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getResourcePathList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    return-object v0

    .line 69
    :cond_f
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/AnimImageView;->bean:Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getUrl()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$play$0(I)V
    .registers 3

    .line 90
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/AnimImageView;->showAnimImage(I)V

    .line 91
    iget v0, p0, Lcom/codemao/creativecenter/customview/AnimImageView;->lastFrameP:I

    if-lt p1, v0, :cond_c

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/customview/AnimImageView;->play(I)V

    goto :goto_1d

    :cond_c
    const/4 v0, -0x1

    if-ne p1, v0, :cond_12

    add-int/lit8 v0, p1, 0x2

    goto :goto_14

    :cond_12
    add-int/lit8 v0, p1, 0x1

    .line 94
    :goto_14
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/customview/AnimImageView;->play(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_1d

    :catch_18
    add-int/lit8 p1, p1, 0x1

    .line 97
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/AnimImageView;->play(I)V

    :goto_1d
    return-void
.end method

.method private play(I)V
    .registers 6

    .line 87
    new-instance v0, Lcom/codemao/creativecenter/customview/AnimImageView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/codemao/creativecenter/customview/AnimImageView$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/customview/AnimImageView;I)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/AnimImageView;->runnable:Ljava/lang/Runnable;

    .line 102
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/AnimImageView;->mHandler:Landroid/os/Handler;

    const/4 v2, -0x1

    if-ne p1, v2, :cond_f

    const-wide/16 v2, 0x0

    goto :goto_11

    :cond_f
    const-wide/16 v2, 0xc8

    :goto_11
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .line 124
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 126
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/AnimImageView;->bean:Lcom/codemao/creativestore/bean/MaterialActorBean;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MaterialActorBean;->canAnim()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/AnimImageView;->bean:Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 127
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/AnimImageView;->startAnim()V

    :cond_18
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 134
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 135
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/AnimImageView;->stopAnim()V

    return-void
.end method

.method public setData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 5

    .line 52
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/AnimImageView;->bean:Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 53
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/AnimImageView;->getImgUri()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/codemao/creativecenter/customview/AnimImageView;->lastFrameP:I

    .line 54
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 55
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object v0

    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/AnimImageView;->getImgUri()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getMaterialPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 56
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 57
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/AnimImageView;->bean:Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->canAnim()Z

    move-result p1

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/codemao/creativecenter/customview/AnimImageView;->bean:Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 58
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/AnimImageView;->startAnim()V

    :cond_3f
    return-void
.end method

.method public showAnimImage(I)V
    .registers 6

    .line 108
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object v1

    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/AnimImageView;->getImgUri()Ljava/util/List;

    move-result-object v2

    const/4 v3, -0x1

    if-ne p1, v3, :cond_10

    const/4 p1, 0x0

    :cond_10
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getMaterialPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 110
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 111
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public startAnim()V
    .registers 2

    .line 74
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/AnimImageView;->stopAnim()V

    const/4 v0, -0x1

    .line 75
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/customview/AnimImageView;->play(I)V

    return-void
.end method

.method public stopAnim()V
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/AnimImageView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
