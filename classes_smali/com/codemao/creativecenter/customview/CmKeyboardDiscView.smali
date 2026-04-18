.class public Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "CmKeyboardDiscView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;
    }
.end annotation


# instance fields
.field private binding:Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;

.field private cmListener:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

.field private currentStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->currentStatus:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;)Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->cmListener:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    return-object p0
.end method

.method private refreshStatus()V
    .registers 7

    .line 130
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;->tvTurntable:Landroid/widget/TextView;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->currentStatus:I

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v1, v2, :cond_e

    const/4 v1, 0x0

    goto :goto_10

    :cond_e
    const/16 v1, 0x8

    :goto_10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;->ivGoKeyboard:Landroid/widget/TextView;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->currentStatus:I

    if-nez v1, :cond_1d

    const/4 v1, 0x0

    goto :goto_1f

    :cond_1d
    const/16 v1, 0x8

    :goto_1f
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->currentStatus:I

    if-nez v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 135
    :goto_29
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;->cav:Lcom/codemao/creativecenter/customview/CmAngularView;

    if-eqz v0, :cond_31

    const/4 v5, 0x0

    goto :goto_33

    :cond_31
    const/16 v5, 0x8

    :goto_33
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;->ckv:Lcom/codemao/creativecenter/customview/CmKeyboardView;

    if-eqz v0, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;->ckv:Lcom/codemao/creativecenter/customview/CmKeyboardView;

    iget v1, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->currentStatus:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    invoke-virtual {v0, v2}, Lcom/codemao/creativecenter/customview/CmKeyboardView;->setMinusVisiable(Z)V

    return-void
.end method


# virtual methods
.method public changeRotateStatus()V
    .registers 3

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->currentStatus:I

    .line 105
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->cmListener:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    if-eqz v0, :cond_12

    .line 106
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;->cav:Lcom/codemao/creativecenter/customview/CmAngularView;

    invoke-interface {v0}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;->getCurrentDegress()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/codemao/creativecenter/customview/CmAngularView;->setProgress(I)V

    .line 109
    :cond_12
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->refreshStatus()V

    return-void
.end method

.method public changeScaleStatus()V
    .registers 2

    const/4 v0, 0x2

    .line 114
    iput v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->currentStatus:I

    .line 115
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->refreshStatus()V

    return-void
.end method

.method public changeXtransetStatus()V
    .registers 2

    const/4 v0, 0x3

    .line 119
    iput v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->currentStatus:I

    .line 120
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->refreshStatus()V

    return-void
.end method

.method public changeYtransetStatus()V
    .registers 2

    const/4 v0, 0x4

    .line 124
    iput v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->currentStatus:I

    .line 125
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->refreshStatus()V

    return-void
.end method

.method public init()V
    .registers 4

    .line 54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$layout;->creative_view_cm_keyboard_disc:I

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;

    .line 57
    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;->ivGoKeyboard:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;->tvTurntable:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;->cav:Lcom/codemao/creativecenter/customview/CmAngularView;

    new-instance v1, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$1;-><init>(Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CmAngularView;->setChangeListener(Lcom/codemao/creativecenter/customview/CmAngularView$OnProgressChangeListener;)V

    .line 74
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->refreshStatus()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 87
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_go_keyboard:I

    if-ne p1, v0, :cond_f

    const/4 p1, 0x1

    .line 88
    iput p1, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->currentStatus:I

    .line 89
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->refreshStatus()V

    goto :goto_28

    .line 90
    :cond_f
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_turntable:I

    if-ne p1, v0, :cond_28

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->currentStatus:I

    .line 93
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->cmListener:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    if-eqz p1, :cond_25

    .line 94
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;->cav:Lcom/codemao/creativecenter/customview/CmAngularView;

    invoke-interface {p1}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;->getCurrentDegress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/customview/CmAngularView;->setProgress(I)V

    .line 97
    :cond_25
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->refreshStatus()V

    :cond_28
    :goto_28
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public setCmListener(Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;)V
    .registers 3

    .line 143
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->cmListener:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    .line 144
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;

    if-eqz v0, :cond_b

    .line 145
    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardDiscBinding;->ckv:Lcom/codemao/creativecenter/customview/CmKeyboardView;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/customview/CmKeyboardView;->setBinding(Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;)V

    :cond_b
    return-void
.end method
