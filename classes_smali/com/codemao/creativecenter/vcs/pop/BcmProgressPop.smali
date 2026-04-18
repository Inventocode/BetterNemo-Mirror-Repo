.class public final Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "BcmProgressPop.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final ctx:Landroid/content/Context;

.field private imageView:Lcom/codemao/creativecenter/customview/FrameImageView;

.field private final isTransparent:Z

.field private final mListener:Lcom/codemao/creativecenter/vcs/listener/IBcmProgressPopListener;

.field private pb:Landroid/widget/ProgressBar;

.field private tvBtn:Landroid/widget/TextView;

.field private tvInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/codemao/creativecenter/vcs/listener/IBcmProgressPopListener;)V
    .registers 5

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->ctx:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->isTransparent:Z

    iput-object p3, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->mListener:Lcom/codemao/creativecenter/vcs/listener/IBcmProgressPopListener;

    return-void
.end method

.method public static final synthetic access$getImageView$p(Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)Lcom/codemao/creativecenter/customview/FrameImageView;
    .registers 2

    .line 33
    iget-object p0, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->imageView:Lcom/codemao/creativecenter/customview/FrameImageView;

    if-nez p0, :cond_9

    const-string v0, "imageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object p0
.end method

.method public static final synthetic access$getPb$p(Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)Landroid/widget/ProgressBar;
    .registers 2

    .line 33
    iget-object p0, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->pb:Landroid/widget/ProgressBar;

    if-nez p0, :cond_9

    const-string v0, "pb"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object p0
.end method

.method public static final synthetic access$getTvBtn$p(Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)Landroid/widget/TextView;
    .registers 2

    .line 33
    iget-object p0, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->tvBtn:Landroid/widget/TextView;

    if-nez p0, :cond_9

    const-string v0, "tvBtn"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object p0
.end method

.method public static final synthetic access$getTvInfo$p(Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)Landroid/widget/TextView;
    .registers 2

    .line 33
    iget-object p0, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->tvInfo:Landroid/widget/TextView;

    if-nez p0, :cond_9

    const-string v0, "tvInfo"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object p0
.end method


# virtual methods
.method public final getCtx()Landroid/content/Context;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 41
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativestore/CreativeStoreUtils;->ispad:Z

    if-eqz v0, :cond_b

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_bcm_progress_pad:I

    goto :goto_d

    :cond_b
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_bcm_progress:I

    :goto_d
    return v0
.end method

.method public final getMListener()Lcom/codemao/creativecenter/vcs/listener/IBcmProgressPopListener;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->mListener:Lcom/codemao/creativecenter/vcs/listener/IBcmProgressPopListener;

    return-object v0
.end method

.method protected initPopupContent()V
    .registers 4

    .line 56
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    .line 58
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.cl_root)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v0, :cond_19

    const-string v1, "clRoot"

    .line 59
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_19
    iget-boolean v1, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->isTransparent:Z

    if-eqz v1, :cond_20

    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_bg_66ffffff:I

    goto :goto_22

    :cond_20
    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_bg_assist_progress:I

    :goto_22
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 61
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 62
    new-instance v1, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$initPopupContent$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$initPopupContent$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_loading:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.iv_loading)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/codemao/creativecenter/customview/FrameImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->imageView:Lcom/codemao/creativecenter/customview/FrameImageView;

    .line 69
    sget v0, Lcom/codemao/creativecenter/R$id;->pb:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.pb)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->pb:Landroid/widget/ProgressBar;

    if-nez v0, :cond_5a

    const-string v1, "pb"

    .line 71
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 73
    :cond_5a
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->ctx:Landroid/content/Context;

    const/high16 v2, 0x40800000  # 4.0f

    invoke-static {v1, v2}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->setRadiusForView(Landroid/view/View;F)V

    .line 76
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_info:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.tv_info)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->tvInfo:Landroid/widget/TextView;

    .line 78
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.tv_btn)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->tvBtn:Landroid/widget/TextView;

    if-nez v0, :cond_8b

    const-string v1, "tvBtn"

    .line 79
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8b
    new-instance v1, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$initPopupContent$2;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$initPopupContent$2;-><init>(Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreate()V
    .registers 2

    .line 51
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 52
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 162
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 163
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDismiss()V
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->imageView:Lcom/codemao/creativecenter/customview/FrameImageView;

    if-nez v0, :cond_9

    const-string v1, "imageView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v0}, Lcom/codemao/creativecenter/customview/FrameImageView;->stopAnim()V

    .line 158
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    return-void
.end method

.method public final onDownloadProgress(Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "bcmProgressEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget v0, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;->downloadSuccessCount:I

    const/16 v1, 0x64

    mul-int/lit8 v0, v0, 0x64

    iget p1, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;->downloadCount:I

    div-int/2addr v0, p1

    if-gez v0, :cond_11

    const/4 v0, 0x0

    :cond_11
    if-le v0, v1, :cond_14

    goto :goto_15

    :cond_14
    move v1, v0

    .line 136
    :goto_15
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->pb:Landroid/widget/ProgressBar;

    if-nez p1, :cond_1e

    const-string v0, "pb"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1e
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected onShow()V
    .registers 3

    .line 152
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onShow()V

    .line 153
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->imageView:Lcom/codemao/creativecenter/customview/FrameImageView;

    if-nez v0, :cond_c

    const-string v1, "imageView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_c
    new-instance v1, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$onShow$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$onShow$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onUploadProgress(Lcom/codemao/creativecenter/utils/bcm/events/UploadProgressEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "bcmProgressEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget v0, p1, Lcom/codemao/creativecenter/utils/bcm/events/UploadProgressEvent;->uploadSuccessCount:I

    const/16 v1, 0x64

    mul-int/lit8 v0, v0, 0x64

    iget p1, p1, Lcom/codemao/creativecenter/utils/bcm/events/UploadProgressEvent;->uploadCount:I

    div-int/2addr v0, p1

    if-gez v0, :cond_11

    const/4 v0, 0x0

    :cond_11
    if-le v0, v1, :cond_14

    goto :goto_15

    :cond_14
    move v1, v0

    .line 148
    :goto_15
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->pb:Landroid/widget/ProgressBar;

    if-nez p1, :cond_1e

    const-string v0, "pb"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1e
    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public final setRadiusForView(Landroid/view/View;F)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$setRadiusForView$provider$1;

    invoke-direct {v0, p2}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$setRadiusForView$provider$1;-><init>(F)V

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p2, 0x1

    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method public final setupTxt(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "infoStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "btnStr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$setupTxt$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$setupTxt$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
