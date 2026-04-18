.class public Lcom/codemao/nemo/fragment/PleasanceFragment;
.super Landroidx/fragment/app/Fragment;
.source "PleasanceFragment.java"


# instance fields
.field ivLibrary:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivMon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/codemao/nemo/fragment/PleasanceFragment;
    .registers 1

    .line 43
    new-instance v0, Lcom/codemao/nemo/fragment/PleasanceFragment;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/PleasanceFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 48
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 55
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p3

    if-eqz p3, :cond_a

    const p3, 0x7f0d0166

    goto :goto_d

    :cond_a
    const p3, 0x7f0d0165

    :goto_d
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onDestroy()V
    .registers 1

    .line 131
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 62
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->isBBK()Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_11

    .line 64
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PleasanceFragment;->ivLibrary:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_17

    .line 66
    :cond_11
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PleasanceFragment;->ivLibrary:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    :goto_17
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PleasanceFragment;->ivLibrary:Landroid/widget/ImageView;

    new-instance v0, Lcom/codemao/nemo/fragment/PleasanceFragment$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/PleasanceFragment$1;-><init>(Lcom/codemao/nemo/fragment/PleasanceFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PleasanceFragment;->ivMon:Landroid/widget/ImageView;

    new-instance v0, Lcom/codemao/nemo/fragment/PleasanceFragment$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/PleasanceFragment$2;-><init>(Lcom/codemao/nemo/fragment/PleasanceFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object p1

    const-string v0, "huawei"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 124
    iget-object p1, p0, Lcom/codemao/nemo/fragment/PleasanceFragment;->ivLibrary:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3c
    return-void
.end method
