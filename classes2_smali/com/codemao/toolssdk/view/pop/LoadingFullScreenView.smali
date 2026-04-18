.class public final Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;
.super Landroid/widget/FrameLayout;
.source "LoadingFullScreenPop.kt"


# instance fields
.field private btnRetry:Landroid/widget/TextView;

.field private errorGroup:Landroidx/constraintlayout/widget/Group;

.field private framesPlayImageView:Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;

.field private ivBack:Landroid/widget/ImageView;

.field private listener:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;

.field private loadingGroup:Landroidx/constraintlayout/widget/Group;

.field private tvError:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$kjT_R6bKeAtpaWXLR6MzLxF03z0(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->initView$lambda$1(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$onVWfBx3Ve6fp-VYwqUsy0ihiZ8(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->initView$lambda$0(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_view_loading_fullscreen:I

    invoke-static {p1, v0, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 89
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/codemao/toolssdk/R$layout;->toolsdk_view_loading_fullscreen:I

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 89
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/codemao/toolssdk/R$layout;->toolsdk_view_loading_fullscreen:I

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 89
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->initView()V

    return-void
.end method

.method private final initView()V
    .registers 3

    .line 93
    sget v0, Lcom/codemao/toolssdk/R$id;->iv_frames_play:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;

    iput-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->framesPlayImageView:Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;

    .line 94
    sget v0, Lcom/codemao/toolssdk/R$id;->iv_back:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->ivBack:Landroid/widget/ImageView;

    .line 95
    sget v0, Lcom/codemao/toolssdk/R$id;->tv_error_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->tvError:Landroid/widget/TextView;

    .line 96
    sget v0, Lcom/codemao/toolssdk/R$id;->btn_retry:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->btnRetry:Landroid/widget/TextView;

    .line 97
    sget v0, Lcom/codemao/toolssdk/R$id;->loading_group:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->loadingGroup:Landroidx/constraintlayout/widget/Group;

    .line 98
    sget v0, Lcom/codemao/toolssdk/R$id;->error_group:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->errorGroup:Landroidx/constraintlayout/widget/Group;

    .line 100
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->framesPlayImageView:Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;

    if-eqz v0, :cond_45

    sget v1, Lcom/codemao/toolssdk/R$array;->toolsdk_loading_anim:I

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->setData(I)V

    .line 101
    :cond_45
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->ivBack:Landroid/widget/ImageView;

    if-eqz v0, :cond_51

    new-instance v1, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_51
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->btnRetry:Landroid/widget/TextView;

    if-eqz v0, :cond_5d

    new-instance v1, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    :cond_5d
    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->showLoadingAnim()V

    return-void
.end method

.method private static final initView$lambda$0(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->listener:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;->onBack()V

    :cond_c
    return-void
.end method

.method private static final initView$lambda$1(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->listener:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;->onRetry()V

    :cond_c
    return-void
.end method


# virtual methods
.method public final getListener()Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->listener:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;

    return-object v0
.end method

.method public final onDestroy()V
    .registers 3

    .line 158
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "触发LoadingFullScreenView的onDestroy"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogOther;->dLeak(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->framesPlayImageView:Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->onDestroy()V

    :cond_e
    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->listener:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 164
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 165
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "触发LoadingFullScreenView的onDetachedFromWindow"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogOther;->dLeak(Ljava/lang/String;)V

    return-void
.end method

.method public final setButtonsOnClickListener(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->listener:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;

    return-void
.end method

.method public final setListener(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->listener:Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;

    return-void
.end method

.method public final showError(Lcom/codemao/toolssdk/constant/ErrorLoadModel;)V
    .registers 3

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Lcom/codemao/toolssdk/constant/ErrorLoadModel;->getErrorString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/toolssdk/constant/ErrorLoadModel;->getShowRetry()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->showError(Ljava/lang/String;Z)V

    return-void
.end method

.method public final showError(Ljava/lang/String;Z)V
    .registers 6

    .line 115
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->loadingGroup:Landroidx/constraintlayout/widget/Group;

    const/16 v1, 0x8

    if-nez v0, :cond_7

    goto :goto_a

    :cond_7
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 116
    :goto_a
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->errorGroup:Landroidx/constraintlayout/widget/Group;

    const/4 v2, 0x0

    if-nez v0, :cond_10

    goto :goto_13

    :cond_10
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 118
    :goto_13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 119
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->tvError:Landroid/widget/TextView;

    if-nez v0, :cond_1e

    goto :goto_21

    :cond_1e
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_21
    :goto_21
    if-eqz p2, :cond_2c

    .line 122
    iget-object p1, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->btnRetry:Landroid/widget/TextView;

    if-nez p1, :cond_28

    goto :goto_34

    :cond_28
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_34

    .line 124
    :cond_2c
    iget-object p1, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->btnRetry:Landroid/widget/TextView;

    if-nez p1, :cond_31

    goto :goto_34

    :cond_31
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :goto_34
    iget-object p1, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->framesPlayImageView:Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;

    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->stopAnim()V

    :cond_3b
    return-void
.end method

.method public final showLoadingAnim()V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->loadingGroup:Landroidx/constraintlayout/widget/Group;

    if-nez v0, :cond_5

    goto :goto_9

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 131
    :goto_9
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->errorGroup:Landroidx/constraintlayout/widget/Group;

    const/16 v1, 0x8

    if-nez v0, :cond_10

    goto :goto_13

    :cond_10
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 132
    :goto_13
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->btnRetry:Landroid/widget/TextView;

    if-nez v0, :cond_18

    goto :goto_1b

    :cond_18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    :goto_1b
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->framesPlayImageView:Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->startAnim()V

    :cond_22
    return-void
.end method

.method public final stopAnim()V
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/codemao/toolssdk/view/pop/LoadingFullScreenView;->framesPlayImageView:Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/loading/FramesPlayImageView;->stopAnim()V

    :cond_7
    return-void
.end method
