.class public final Lcom/codemao/creativecenter/vcs/pop/AssistorSyncCompletedPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "AssistorSyncCompletedPop.kt"


# instance fields
.field private final ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/AssistorSyncCompletedPop;->ctx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getCtx()Landroid/content/Context;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/AssistorSyncCompletedPop;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 17
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_assistor_sync_completed:I

    return v0
.end method

.method protected initPopupContent()V
    .registers 3

    .line 21
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    .line 22
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 23
    new-instance v1, Lcom/codemao/creativecenter/vcs/pop/AssistorSyncCompletedPop$initPopupContent$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/vcs/pop/AssistorSyncCompletedPop$initPopupContent$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/AssistorSyncCompletedPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
