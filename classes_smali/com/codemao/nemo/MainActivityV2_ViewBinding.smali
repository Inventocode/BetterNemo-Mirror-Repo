.class public Lcom/codemao/nemo/MainActivityV2_ViewBinding;
.super Ljava/lang/Object;
.source "MainActivityV2_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/MainActivityV2;Landroid/view/View;)V
    .registers 6

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lcom/codemao/nemo/view/NoScrollViewPager;

    const v1, 0x7f0a0992

    const-string v2, "field \'viewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/NoScrollViewPager;

    iput-object v0, p1, Lcom/codemao/nemo/MainActivityV2;->viewPager:Lcom/codemao/nemo/view/NoScrollViewPager;

    .line 32
    const-class v0, Landroid/widget/RadioGroup;

    const v1, 0x7f0a00ce

    const-string v2, "field \'rgBottom\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/codemao/nemo/MainActivityV2;->rgBottom:Landroid/widget/RadioGroup;

    .line 33
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f0a01e0

    const-string v2, "field \'rbDiscover\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/codemao/nemo/MainActivityV2;->rbDiscover:Landroid/widget/RadioButton;

    .line 34
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f0a0535

    const-string v2, "field \'rbMine\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/codemao/nemo/MainActivityV2;->rbMine:Landroid/widget/RadioButton;

    const v0, 0x7f0a01a3

    const-string v1, "method \'onClick\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 37
    new-instance v0, Lcom/codemao/nemo/MainActivityV2_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/MainActivityV2_ViewBinding$1;-><init>(Lcom/codemao/nemo/MainActivityV2_ViewBinding;Lcom/codemao/nemo/MainActivityV2;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
