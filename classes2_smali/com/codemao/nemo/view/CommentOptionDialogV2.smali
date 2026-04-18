.class public Lcom/codemao/nemo/view/CommentOptionDialogV2;
.super Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;
.source "CommentOptionDialogV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/CommentOptionDialogV2$OnItemClickChooseListener;
    }
.end annotation


# instance fields
.field private isOwnWork:Z

.field private isSelf:Z

.field private isTop:Z

.field private needShowTop:Z

.field private orderChooseListener:Lcom/codemao/nemo/view/CommentOptionDialogV2$OnItemClickChooseListener;

.field tvCancel:Landroid/widget/TextView;

.field tvCopy:Landroid/widget/TextView;

.field tvDelete:Landroid/widget/TextView;

.field tvJB:Landroid/widget/TextView;

.field tvTop:Landroid/widget/TextView;

.field vDivider1:Landroid/view/View;

.field vDivider2:Landroid/view/View;

.field vDivider3:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->isOwnWork:Z

    .line 36
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->isSelf:Z

    .line 37
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->isTop:Z

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->needShowTop:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/CommentOptionDialogV2;)Lcom/codemao/nemo/view/CommentOptionDialogV2$OnItemClickChooseListener;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->orderChooseListener:Lcom/codemao/nemo/view/CommentOptionDialogV2$OnItemClickChooseListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/CommentOptionDialogV2;)Z
    .registers 1

    .line 19
    iget-boolean p0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->isTop:Z

    return p0
.end method

.method private checkIsSelf()V
    .registers 5

    .line 157
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvDelete:Landroid/widget/TextView;

    if-eqz v0, :cond_74

    .line 158
    iget-boolean v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->isOwnWork:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_33

    .line 159
    iget-boolean v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->needShowTop:Z

    if-eqz v0, :cond_28

    .line 160
    iget-boolean v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->isTop:Z

    if-eqz v0, :cond_1b

    .line 161
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvTop:Landroid/widget/TextView;

    const-string v3, "取消置顶"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 163
    :cond_1b
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvTop:Landroid/widget/TextView;

    const-string v3, "置顶"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :goto_22
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvTop:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2d

    .line 167
    :cond_28
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvTop:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :goto_2d
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->vDivider1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3d

    .line 171
    :cond_33
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvTop:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->vDivider1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    :goto_3d
    iget-boolean v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->isSelf:Z

    if-eqz v0, :cond_4c

    .line 175
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvJB:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->vDivider2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_56

    .line 178
    :cond_4c
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvJB:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->vDivider2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :goto_56
    iget-boolean v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->isOwnWork:Z

    if-nez v0, :cond_6a

    iget-boolean v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->isSelf:Z

    if-eqz v0, :cond_5f

    goto :goto_6a

    .line 185
    :cond_5f
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->vDivider3:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_74

    .line 182
    :cond_6a
    :goto_6a
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->vDivider3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_74
    :goto_74
    return-void
.end method

.method private initView()V
    .registers 3

    const v0, 0x7f0a0954

    .line 87
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->vDivider1:Landroid/view/View;

    const v0, 0x7f0a0955

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->vDivider2:Landroid/view/View;

    const v0, 0x7f0a0956

    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->vDivider3:Landroid/view/View;

    const v0, 0x7f0a0832

    .line 90
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvDelete:Landroid/widget/TextView;

    const v0, 0x7f0a086c

    .line 92
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvJB:Landroid/widget/TextView;

    const v0, 0x7f0a0825

    .line 93
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvCopy:Landroid/widget/TextView;

    const v0, 0x7f0a080c

    .line 94
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvCancel:Landroid/widget/TextView;

    const v0, 0x7f0a0900

    .line 95
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvTop:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/view/CommentOptionDialogV2$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/CommentOptionDialogV2$1;-><init>(Lcom/codemao/nemo/view/CommentOptionDialogV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvDelete:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/view/CommentOptionDialogV2$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/CommentOptionDialogV2$2;-><init>(Lcom/codemao/nemo/view/CommentOptionDialogV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04d4

    .line 110
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/view/CommentOptionDialogV2$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/CommentOptionDialogV2$3;-><init>(Lcom/codemao/nemo/view/CommentOptionDialogV2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvCopy:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/view/CommentOptionDialogV2$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/CommentOptionDialogV2$4;-><init>(Lcom/codemao/nemo/view/CommentOptionDialogV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvJB:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/view/CommentOptionDialogV2$5;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/CommentOptionDialogV2$5;-><init>(Lcom/codemao/nemo/view/CommentOptionDialogV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->tvTop:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/view/CommentOptionDialogV2$6;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/CommentOptionDialogV2$6;-><init>(Lcom/codemao/nemo/view/CommentOptionDialogV2;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-direct {p0}, Lcom/codemao/nemo/view/CommentOptionDialogV2;->checkIsSelf()V

    return-void
.end method


# virtual methods
.method protected dismissOrHideSoftInput()V
    .registers 1

    .line 47
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    const v0, 0x7f0d0084

    return v0
.end method

.method protected onCreate()V
    .registers 1

    .line 81
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 82
    invoke-direct {p0}, Lcom/codemao/nemo/view/CommentOptionDialogV2;->initView()V

    return-void
.end method

.method protected onShow()V
    .registers 1

    .line 150
    invoke-direct {p0}, Lcom/codemao/nemo/view/CommentOptionDialogV2;->checkIsSelf()V

    .line 151
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onShow()V

    return-void
.end method

.method public setIsSelf(Z)Lcom/codemao/nemo/view/CommentOptionDialogV2;
    .registers 2

    .line 56
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->isSelf:Z

    .line 57
    invoke-direct {p0}, Lcom/codemao/nemo/view/CommentOptionDialogV2;->checkIsSelf()V

    return-object p0
.end method

.method public setIsTop(Z)Lcom/codemao/nemo/view/CommentOptionDialogV2;
    .registers 2

    .line 62
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->isTop:Z

    .line 63
    invoke-direct {p0}, Lcom/codemao/nemo/view/CommentOptionDialogV2;->checkIsSelf()V

    return-object p0
.end method

.method public setNeedShowTop(Z)Lcom/codemao/nemo/view/CommentOptionDialogV2;
    .registers 2

    .line 68
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->needShowTop:Z

    .line 69
    invoke-direct {p0}, Lcom/codemao/nemo/view/CommentOptionDialogV2;->checkIsSelf()V

    return-object p0
.end method

.method public setOrderChooseListener(Lcom/codemao/nemo/view/CommentOptionDialogV2$OnItemClickChooseListener;)Lcom/codemao/nemo/view/CommentOptionDialogV2;
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->orderChooseListener:Lcom/codemao/nemo/view/CommentOptionDialogV2$OnItemClickChooseListener;

    return-object p0
.end method

.method public setOwnWork(Z)Lcom/codemao/nemo/view/CommentOptionDialogV2;
    .registers 2

    .line 74
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2;->isOwnWork:Z

    .line 75
    invoke-direct {p0}, Lcom/codemao/nemo/view/CommentOptionDialogV2;->checkIsSelf()V

    return-object p0
.end method
