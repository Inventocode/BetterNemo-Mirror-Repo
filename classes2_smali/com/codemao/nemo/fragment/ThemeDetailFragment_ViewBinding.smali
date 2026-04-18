.class public Lcom/codemao/nemo/fragment/ThemeDetailFragment_ViewBinding;
.super Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment_ViewBinding;
.source "ThemeDetailFragment_ViewBinding.java"


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;Landroid/view/View;)V
    .registers 6

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment_ViewBinding;-><init>(Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;Landroid/view/View;)V

    .line 25
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f0a0096

    const-string v2, "field \'appBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 26
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a07c2

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->toolbar:Landroid/widget/RelativeLayout;

    .line 27
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0364

    const-string v2, "field \'ivExit\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->ivExit:Landroid/widget/ImageView;

    .line 28
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0447

    const-string v2, "field \'ivCover\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->ivCover:Landroid/widget/ImageView;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08f8

    const-string v2, "field \'tv_theme_title\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->tv_theme_title:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08f2

    const-string v2, "field \'tv_theme_dec\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->tv_theme_dec:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a091f

    const-string v2, "field \'tv_work\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->tv_work:Landroid/widget/TextView;

    const v0, 0x7f0a0145

    const-string v1, "field \'cl_scroll\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->cl_scroll:Landroid/view/View;

    .line 33
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a07c3

    const-string v2, "field \'toobarEmpty\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->toobarEmpty:Landroid/widget/RelativeLayout;

    .line 34
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a07c4

    const-string v2, "field \'toobarError\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->toobarError:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a096f

    const-string v1, "field \'vWhtie\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->vWhtie:Landroid/view/View;

    .line 36
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0101

    const-string v2, "field \'card_contribute\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->card_contribute:Landroid/widget/ImageView;

    .line 37
    const-class v0, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;

    const v1, 0x7f0a02e4

    const-string v2, "field \'hav\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;

    iput-object p2, p1, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->hav:Lcom/codemao/nemo/view/coordinaterecylerView/HeaderArrowView;

    return-void
.end method
