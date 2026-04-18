.class public abstract Lcom/codemao/nemo/databinding/DialogUserWeakPasswordTipsPadBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "DialogUserWeakPasswordTipsPadBinding.java"


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .registers 10

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/nemo/databinding/DialogUserWeakPasswordTipsPadBinding;
    .registers 4

    .line 51
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/codemao/nemo/databinding/DialogUserWeakPasswordTipsPadBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/codemao/nemo/databinding/DialogUserWeakPasswordTipsPadBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/codemao/nemo/databinding/DialogUserWeakPasswordTipsPadBinding;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0134

    .line 65
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/DialogUserWeakPasswordTipsPadBinding;

    return-object p0
.end method
