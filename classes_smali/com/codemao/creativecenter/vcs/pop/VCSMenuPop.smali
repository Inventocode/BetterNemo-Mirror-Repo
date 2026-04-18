.class public final Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "VCSMenuPop.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final ctx:Landroid/content/Context;

.field private helpDot:Landroid/view/View;

.field private final isAssistBcm:Z

.field private final isAssistor:Z

.field private final mListener:Lcom/codemao/creativecenter/vcs/listener/IVCSMenuListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZLcom/codemao/creativecenter/vcs/listener/IVCSMenuListener;)V
    .registers 6

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;->ctx:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;->isAssistor:Z

    iput-boolean p3, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;->isAssistBcm:Z

    iput-object p4, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;->mListener:Lcom/codemao/creativecenter/vcs/listener/IVCSMenuListener;

    return-void
.end method


# virtual methods
.method public final getCtx()Landroid/content/Context;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 32
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativestore/CreativeStoreUtils;->ispad:Z

    if-eqz v0, :cond_b

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_vcs_menu_pad:I

    goto :goto_d

    :cond_b
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_pop_vcs_menu:I

    :goto_d
    return v0
.end method

.method public final getMListener()Lcom/codemao/creativecenter/vcs/listener/IVCSMenuListener;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;->mListener:Lcom/codemao/creativecenter/vcs/listener/IVCSMenuListener;

    return-object v0
.end method

.method protected initPopupContent()V
    .registers 11

    .line 38
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;->initPopupContent()V

    .line 40
    sget v0, Lcom/codemao/creativecenter/R$id;->cv_root:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop$initPopupContent$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop$initPopupContent$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    sget v0, Lcom/codemao/creativecenter/R$id;->cv_top:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop$initPopupContent$2;->INSTANCE:Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop$initPopupContent$2;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_quit:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 49
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_quit:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    sget v1, Lcom/codemao/creativecenter/R$id;->iv_assist:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 54
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget v2, Lcom/codemao/creativecenter/R$id;->tv_assist:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 56
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    sget v3, Lcom/codemao/creativecenter/R$id;->tv_help:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 59
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    sget v4, Lcom/codemao/creativecenter/R$id;->iv_help:I

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 61
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-boolean v5, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;->isAssistor:Z

    const-string v6, "ivHelp"

    const-string v7, "tvHelp"

    const/4 v8, 0x0

    const/16 v9, 0x8

    if-eqz v5, :cond_85

    .line 64
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    sget v3, Lcom/codemao/creativecenter/R$string;->midi_exit:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 69
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_icon_nav_sync:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    sget v0, Lcom/codemao/creativecenter/R$string;->creative_sync_upload:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_b1

    .line 72
    :cond_85
    iget-boolean v5, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;->isAssistBcm:Z

    if-eqz v5, :cond_a5

    .line 73
    sget v5, Lcom/codemao/creativecenter/R$string;->midi_exit:I

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 75
    sget v0, Lcom/codemao/creativecenter/R$drawable;->creative_icon_nav_apply:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    sget v0, Lcom/codemao/creativecenter/R$string;->creative_apply_bcm:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 78
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b1

    .line 81
    :cond_a5
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_b1
    const-string v0, "KEY_HAS_SHOW_BCM_HELP"

    .line 87
    invoke-static {v0, v8}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getValue(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d0

    .line 89
    sget v0, Lcom/codemao/creativecenter/R$id;->v_help_indicator:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.v_help_indicator)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;->helpDot:Landroid/view/View;

    if-nez v0, :cond_cd

    const-string v1, "helpDot"

    .line 90
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_cd
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_d0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 95
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_6b

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 101
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_quit:I

    if-ne p1, v0, :cond_12

    goto :goto_16

    .line 102
    :cond_12
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_quit:I

    if-ne p1, v0, :cond_1c

    .line 103
    :goto_16
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;->mListener:Lcom/codemao/creativecenter/vcs/listener/IVCSMenuListener;

    invoke-interface {p1}, Lcom/codemao/creativecenter/vcs/listener/IVCSMenuListener;->onClickExit()V

    goto :goto_68

    .line 106
    :cond_1c
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_assist:I

    if-ne p1, v0, :cond_21

    goto :goto_25

    .line 107
    :cond_21
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_assist:I

    if-ne p1, v0, :cond_3f

    .line 108
    :goto_25
    iget-boolean p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;->isAssistor:Z

    if-eqz p1, :cond_2f

    .line 109
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;->mListener:Lcom/codemao/creativecenter/vcs/listener/IVCSMenuListener;

    invoke-interface {p1}, Lcom/codemao/creativecenter/vcs/listener/IVCSMenuListener;->onClickSyncUpload()V

    goto :goto_68

    .line 110
    :cond_2f
    iget-boolean p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;->isAssistBcm:Z

    if-eqz p1, :cond_39

    .line 111
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;->mListener:Lcom/codemao/creativecenter/vcs/listener/IVCSMenuListener;

    invoke-interface {p1}, Lcom/codemao/creativecenter/vcs/listener/IVCSMenuListener;->onClickApply()V

    goto :goto_68

    .line 113
    :cond_39
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;->mListener:Lcom/codemao/creativecenter/vcs/listener/IVCSMenuListener;

    invoke-interface {p1}, Lcom/codemao/creativecenter/vcs/listener/IVCSMenuListener;->onClickAssistDebug()V

    goto :goto_68

    .line 117
    :cond_3f
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_help:I

    if-ne p1, v0, :cond_44

    goto :goto_48

    .line 118
    :cond_44
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_help:I

    if-ne p1, v0, :cond_68

    :goto_48
    const/4 p1, 0x0

    const-string v0, "KEY_HAS_SHOW_BCM_HELP"

    .line 120
    invoke-static {v0, p1}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getValue(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_63

    const/4 p1, 0x1

    .line 122
    invoke-static {v0, p1}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->putValue(Ljava/lang/String;Z)V

    .line 123
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;->helpDot:Landroid/view/View;

    if-nez p1, :cond_5e

    const-string v0, "helpDot"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5e
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_63
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;->mListener:Lcom/codemao/creativecenter/vcs/listener/IVCSMenuListener;

    invoke-interface {p1}, Lcom/codemao/creativecenter/vcs/listener/IVCSMenuListener;->onClickHelp()V

    .line 129
    :cond_68
    :goto_68
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    :cond_6b
    return-void
.end method

.method public showAssistDot(Z)V
    .registers 3

    .line 133
    new-instance v0, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop$showAssistDot$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop$showAssistDot$1;-><init>(Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
