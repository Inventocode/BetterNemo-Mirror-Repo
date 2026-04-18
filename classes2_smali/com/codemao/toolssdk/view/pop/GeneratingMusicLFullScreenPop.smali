.class public final Lcom/codemao/toolssdk/view/pop/GeneratingMusicLFullScreenPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "GeneratingMusicLFullScreenPop.kt"


# instance fields
.field private final closeCLickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public static synthetic $r8$lambda$chVMr-FyAGbQIutq0poRiRp4APk(Lcom/codemao/toolssdk/view/pop/GeneratingMusicLFullScreenPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/view/pop/GeneratingMusicLFullScreenPop;->initPopupContent$lambda$0(Lcom/codemao/toolssdk/view/pop/GeneratingMusicLFullScreenPop;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeCLickListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object p2, p0, Lcom/codemao/toolssdk/view/pop/GeneratingMusicLFullScreenPop;->closeCLickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private static final initPopupContent$lambda$0(Lcom/codemao/toolssdk/view/pop/GeneratingMusicLFullScreenPop;Landroid/view/View;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 21
    iget-object p0, p0, Lcom/codemao/toolssdk/view/pop/GeneratingMusicLFullScreenPop;->closeCLickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    .line 13
    sget v0, Lcom/codemao/toolssdk/R$layout;->toolsdk_layout_pop_generate_music:I

    return v0
.end method

.method protected initPopupContent()V
    .registers 3

    .line 17
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    .line 18
    sget v0, Lcom/codemao/toolssdk/R$id;->iv_close_page:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/codemao/toolssdk/view/pop/GeneratingMusicLFullScreenPop$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/view/pop/GeneratingMusicLFullScreenPop$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/view/pop/GeneratingMusicLFullScreenPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
