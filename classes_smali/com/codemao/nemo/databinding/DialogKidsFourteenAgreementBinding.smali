.class public abstract Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "DialogKidsFourteenAgreementBinding.java"


# instance fields
.field public final forbid:Landroid/widget/TextView;

.field public final sure:Landroid/widget/TextView;

.field public final tipsContent:Landroid/widget/TextView;

.field public final tipsIcon:Landroid/widget/ImageView;

.field public final tipsTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .registers 10

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 41
    iput-object p5, p0, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->forbid:Landroid/widget/TextView;

    .line 42
    iput-object p6, p0, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->sure:Landroid/widget/TextView;

    .line 43
    iput-object p7, p0, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->tipsContent:Landroid/widget/TextView;

    .line 44
    iput-object p8, p0, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->tipsIcon:Landroid/widget/ImageView;

    .line 45
    iput-object p9, p0, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->tipsTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;
    .registers 4

    .line 51
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0124

    .line 65
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/DialogKidsFourteenAgreementBinding;

    return-object p0
.end method
