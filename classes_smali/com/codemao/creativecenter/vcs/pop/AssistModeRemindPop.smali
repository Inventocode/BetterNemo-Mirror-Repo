.class public final Lcom/codemao/creativecenter/vcs/pop/AssistModeRemindPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "AssistModeRemindPop.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getImplLayoutId()I
    .registers 2

    .line 19
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativestore/CreativeStoreUtils;->ispad:Z

    if-eqz v0, :cond_b

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_assist_mode_remind_pad:I

    goto :goto_d

    :cond_b
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_assist_mode_remind:I

    :goto_d
    return v0
.end method

.method protected initPopupContent()V
    .registers 3

    .line 23
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    .line 25
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/codemao/creativecenter/vcs/pop/AssistModeRemindPop$initPopupContent$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/vcs/pop/AssistModeRemindPop$initPopupContent$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/AssistModeRemindPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "KEY_HAS_SHOW_ASSIST_REMIND"

    const/4 v1, 0x1

    .line 30
    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putValue(Ljava/lang/String;Z)V

    return-void
.end method
