.class public Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;
.super Lcom/codemao/nemo/dialog/pop/TopPopupView;
.source "CmQuitePopV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$CallBack;
    }
.end annotation


# instance fields
.field private callBack:Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$CallBack;

.field private fl_guide:Landroid/view/View;

.field private helpIndicator:Landroid/view/View;

.field private isNewbee:Z

.field private root:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$CallBack;Z)V
    .registers 4

    .line 23
    invoke-direct {p0, p1}, Lcom/codemao/nemo/dialog/pop/TopPopupView;-><init>(Landroid/content/Context;)V

    .line 24
    iput-boolean p3, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->isNewbee:Z

    .line 25
    iput-object p2, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->callBack:Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$CallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;)Landroid/view/View;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->fl_guide:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method protected doAfterShow()V
    .registers 3

    .line 131
    invoke-super {p0}, Lcom/codemao/nemo/dialog/pop/TopPopupView;->doAfterShow()V

    .line 132
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->helpIndicator:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 133
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getIsCreateHelpShowed()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 134
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->helpIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1b

    .line 136
    :cond_15
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->helpIndicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public doShowAnimation()V
    .registers 3

    .line 122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v0, :cond_13

    .line 123
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 126
    :cond_13
    invoke-super {p0}, Lcom/codemao/nemo/dialog/pop/TopPopupView;->doShowAnimation()V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    .line 31
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0d0226

    goto :goto_d

    :cond_a
    const v0, 0x7f0d0225

    :goto_d
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->callBack:Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$CallBack;

    if-nez v0, :cond_5

    return-void

    .line 90
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_3a

    goto :goto_39

    .line 113
    :sswitch_d
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->callBack:Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$CallBack;

    invoke-interface {p1}, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$CallBack;->clickHistoryWorks()V

    goto :goto_39

    .line 93
    :sswitch_13
    invoke-virtual {p0}, Lcom/codemao/nemo/dialog/pop/TopPopupView;->dismiss()V

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->callBack:Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$CallBack;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$CallBack;->quite(Landroid/view/View;)V

    goto :goto_39

    .line 99
    :sswitch_1c
    invoke-virtual {p0}, Lcom/codemao/nemo/dialog/pop/TopPopupView;->dismiss()V

    .line 100
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->callBack:Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$CallBack;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$CallBack;->clickUpload(Landroid/view/View;Z)V

    goto :goto_39

    .line 106
    :sswitch_26
    invoke-virtual {p0}, Lcom/codemao/nemo/dialog/pop/TopPopupView;->dismiss()V

    const/4 p1, 0x1

    .line 107
    invoke-static {p1}, Lcom/codemao/nemo/util/SprefUtil;->putIsCreateHelpShowed(Z)V

    .line 108
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->helpIndicator:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->callBack:Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$CallBack;

    invoke-interface {p1}, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$CallBack;->clickHelp()V

    :goto_39
    return-void

    :sswitch_data_3a
    .sparse-switch
        0x7f0a03b7 -> :sswitch_26
        0x7f0a043b -> :sswitch_1c
        0x7f0a05db -> :sswitch_13
        0x7f0a0861 -> :sswitch_26
        0x7f0a087a -> :sswitch_d
        0x7f0a08b7 -> :sswitch_13
        0x7f0a090f -> :sswitch_1c
    .end sparse-switch
.end method

.method protected onCreate()V
    .registers 3

    .line 36
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f0a0673

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->root:Landroid/view/View;

    const v0, 0x7f0a0959

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->helpIndicator:Landroid/view/View;

    const v0, 0x7f0a0289

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->fl_guide:Landroid/view/View;

    const v0, 0x7f0a05db

    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a08b7

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a090f

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a043b

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03b7

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0861

    .line 45
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a087a

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6b

    const/16 v1, 0x8

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    :cond_6b
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->root:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$1;-><init>(Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-boolean v0, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->isNewbee:Z

    if-eqz v0, :cond_a2

    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getIsCreatePublishGuideShow()Z

    move-result v0

    if-nez v0, :cond_a2

    const/4 v0, 0x1

    .line 62
    invoke-static {v0}, Lcom/codemao/nemo/util/SprefUtil;->putIsCreatePublishGuideShow(Z)V

    .line 63
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->fl_guide:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->fl_guide:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$2;-><init>(Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a037b

    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$3;-><init>(Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a2
    return-void
.end method

.method protected onDismiss()V
    .registers 2

    .line 82
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/codemao/nemo/dialog/pop/CmQuitePopV2;->callBack:Lcom/codemao/nemo/dialog/pop/CmQuitePopV2$CallBack;

    return-void
.end method
