.class public final Lcom/codemao/nemo/dialog/pop/RecommendEventPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "RecommendEventPop.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final data:Lcom/codemao/nemo/bean/EventInfo;

.field private final imageFile:Ljava/io/File;

.field private final isPad:Z


# direct methods
.method public static synthetic $r8$lambda$6sjdfZN9DzATMvyqvwdDwPTcP00(Lcom/codemao/nemo/dialog/pop/RecommendEventPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/dialog/pop/RecommendEventPop;->initPopupContent$lambda$0(Lcom/codemao/nemo/dialog/pop/RecommendEventPop;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z_oSbeWyC-UpzRtYkO_i3xu7ZZI(Lcom/codemao/nemo/dialog/pop/RecommendEventPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/dialog/pop/RecommendEventPop;->initPopupContent$lambda$1(Lcom/codemao/nemo/dialog/pop/RecommendEventPop;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/bean/EventInfo;Ljava/io/File;)V
    .registers 5

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/RecommendEventPop;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/codemao/nemo/dialog/pop/RecommendEventPop;->data:Lcom/codemao/nemo/bean/EventInfo;

    iput-object p3, p0, Lcom/codemao/nemo/dialog/pop/RecommendEventPop;->imageFile:Ljava/io/File;

    .line 24
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/dialog/pop/RecommendEventPop;->isPad:Z

    return-void
.end method

.method private static final initPopupContent$lambda$0(Lcom/codemao/nemo/dialog/pop/RecommendEventPop;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method private static final initPopupContent$lambda$1(Lcom/codemao/nemo/dialog/pop/RecommendEventPop;Landroid/view/View;)V
    .registers 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/RecommendEventPop;->data:Lcom/codemao/nemo/bean/EventInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/EventInfo;->getEventUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 42
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void

    :cond_15
    const/4 p1, 0x0

    const-string/jumbo v0, "活动弹窗-点击活动弹窗"

    .line 45
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 46
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/RecommendEventPop;->data:Lcom/codemao/nemo/bean/EventInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/EventInfo;->getEventUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/RecommendEventPop;->ctx:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/codemao/nemo/activity/LocalJumpHelper;->jump(Landroid/net/Uri;Landroid/content/Context;ZZ)V

    .line 48
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    .line 27
    iget-boolean v0, p0, Lcom/codemao/nemo/dialog/pop/RecommendEventPop;->isPad:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0d02d6

    goto :goto_b

    :cond_8
    const v0, 0x7f0d02d5

    :goto_b
    return v0
.end method

.method protected initPopupContent()V
    .registers 3

    .line 31
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    const v0, 0x7f0a037b

    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 34
    new-instance v1, Lcom/codemao/nemo/dialog/pop/RecommendEventPop$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/RecommendEventPop$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/dialog/pop/RecommendEventPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a039f

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 39
    iget-object v1, p0, Lcom/codemao/nemo/dialog/pop/RecommendEventPop;->imageFile:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadEventImage(Ljava/io/File;Landroid/widget/ImageView;)V

    .line 40
    new-instance v1, Lcom/codemao/nemo/dialog/pop/RecommendEventPop$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/RecommendEventPop$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/dialog/pop/RecommendEventPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
