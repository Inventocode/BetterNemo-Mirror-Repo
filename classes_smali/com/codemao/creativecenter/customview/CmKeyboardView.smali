.class public Lcom/codemao/creativecenter/customview/CmKeyboardView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "CmKeyboardView.java"


# instance fields
.field private binding:Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/CmKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/codemao/creativecenter/R$layout;->creative_view_cm_keyboard:I

    const/4 p3, 0x1

    invoke-static {p1, p2, p0, p3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;

    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmKeyboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;

    return-void
.end method


# virtual methods
.method public setBinding(Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;)V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->setListener(Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;)V

    .line 53
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmKeyboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method

.method public setMinusVisiable(Z)V
    .registers 4

    .line 46
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    const/4 v1, 0x0

    goto :goto_9

    :cond_8
    const/4 v1, 0x4

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardView;->binding:Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeViewCmKeyboardBinding;->keyboard:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method
