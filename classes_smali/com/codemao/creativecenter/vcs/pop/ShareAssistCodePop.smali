.class public final Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "ShareAssistCodePop.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShareAssistCodePop.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShareAssistCodePop.kt\ncom/codemao/creativecenter/vcs/pop/ShareAssistCodePop\n*L\n1#1,82:1\n*E\n"
.end annotation


# instance fields
.field private final assistCode:Ljava/lang/String;

.field private final ctx:Landroid/content/Context;

.field private final mApiStore:Lcom/codemao/creativecenter/vcs/api/AssistApiStore;

.field private final workId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/vcs/api/AssistApiStore;)V
    .registers 6

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assistCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mApiStore"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;->workId:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;->assistCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;->mApiStore:Lcom/codemao/creativecenter/vcs/api/AssistApiStore;

    return-void
.end method


# virtual methods
.method public final getAssistCode()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;->assistCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getCtx()Landroid/content/Context;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 28
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativestore/CreativeStoreUtils;->ispad:Z

    if-eqz v0, :cond_b

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_share_assist_code_pad:I

    goto :goto_d

    :cond_b
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_share_assist_code:I

    :goto_d
    return v0
.end method

.method public final getMApiStore()Lcom/codemao/creativecenter/vcs/api/AssistApiStore;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;->mApiStore:Lcom/codemao/creativecenter/vcs/api/AssistApiStore;

    return-object v0
.end method

.method public final getWorkId()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;->workId:Ljava/lang/String;

    return-object v0
.end method

.method protected initPopupContent()V
    .registers 6

    .line 32
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    .line 34
    sget v0, Lcom/codemao/creativecenter/R$id;->v_outer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop$initPopupContent$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop$initPopupContent$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_key:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    sget-object v1, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;->INSTANCE:Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;->needShow(I)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_24

    const/4 v3, 0x0

    goto :goto_26

    :cond_24
    const/16 v3, 0x8

    :goto_26
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 41
    new-instance v3, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop$initPopupContent$$inlined$apply$lambda$1;

    invoke-direct {v3, p0}, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop$initPopupContent$$inlined$apply$lambda$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_qq:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x2

    .line 54
    invoke-virtual {v1, v3}, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;->needShow(I)Z

    move-result v3

    if-eqz v3, :cond_40

    const/4 v3, 0x0

    goto :goto_42

    :cond_40
    const/16 v3, 0x8

    :goto_42
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 55
    new-instance v3, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop$initPopupContent$$inlined$apply$lambda$2;

    invoke-direct {v3, p0}, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop$initPopupContent$$inlined$apply$lambda$2;-><init>(Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_wx:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x1

    .line 68
    invoke-virtual {v1, v3}, Lcom/codemao/creativecenter/utils/share/VCSAdapterManager;->needShow(I)Z

    move-result v1

    if-eqz v1, :cond_5b

    goto :goto_5d

    :cond_5b
    const/16 v2, 0x8

    :goto_5d
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    new-instance v1, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop$initPopupContent$$inlined$apply$lambda$3;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop$initPopupContent$$inlined$apply$lambda$3;-><init>(Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
