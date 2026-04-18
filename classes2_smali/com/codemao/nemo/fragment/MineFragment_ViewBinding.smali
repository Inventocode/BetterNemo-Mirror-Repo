.class public Lcom/codemao/nemo/fragment/MineFragment_ViewBinding;
.super Ljava/lang/Object;
.source "MineFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/fragment/MineFragment;Landroid/view/View;)V
    .registers 7

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-class v0, Lcom/codemao/nemo/view/NoScrollViewPager;

    const v1, 0x7f0a099c

    const-string v2, "field \'vpContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/NoScrollViewPager;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->vpContainer:Lcom/codemao/nemo/view/NoScrollViewPager;

    const v0, 0x7f0a07c0

    const-string v1, "field \'bgToolBar\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->bgToolBar:Landroid/view/View;

    .line 44
    const-class v0, Lcom/codemao/nemo/view/CustomTabView;

    const v1, 0x7f0a0760

    const-string v2, "field \'customTabView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/CustomTabView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->customTabView:Lcom/codemao/nemo/view/CustomTabView;

    .line 45
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f0a0067

    const-string v2, "field \'appBarContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->appBarContainer:Lcom/google/android/material/appbar/AppBarLayout;

    const v0, 0x7f0a07bf

    const-string v1, "field \'toolBar\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->toolBar:Landroid/view/View;

    const v0, 0x7f0a0531

    const-string v1, "field \'midView\' and method \'onClick\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 48
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'midView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->midView:Landroid/widget/TextView;

    .line 50
    new-instance v0, Lcom/codemao/nemo/fragment/MineFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/fragment/MineFragment_ViewBinding$1;-><init>(Lcom/codemao/nemo/fragment/MineFragment_ViewBinding;Lcom/codemao/nemo/fragment/MineFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a048c

    const-string v1, "field \'leftView\' and method \'onClick\'"

    .line 56
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 57
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'leftView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->leftView:Landroid/widget/ImageView;

    .line 59
    new-instance v0, Lcom/codemao/nemo/fragment/MineFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/fragment/MineFragment_ViewBinding$2;-><init>(Lcom/codemao/nemo/fragment/MineFragment_ViewBinding;Lcom/codemao/nemo/fragment/MineFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0620

    const-string v1, "field \'rightView\' and method \'onClick\'"

    .line 65
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 66
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'rightView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->rightView:Landroid/widget/ImageView;

    .line 68
    new-instance v0, Lcom/codemao/nemo/fragment/MineFragment_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/fragment/MineFragment_ViewBinding$3;-><init>(Lcom/codemao/nemo/fragment/MineFragment_ViewBinding;Lcom/codemao/nemo/fragment/MineFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a073c

    const-string v1, "field \'split\'"

    .line 74
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->split:Landroid/view/View;

    .line 75
    const-class v0, Lcom/codemao/nemo/view/RoundStrokeImageView;

    const v1, 0x7f0a0080

    const-string v2, "field \'photo_iv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/RoundStrokeImageView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->photo_iv:Lcom/codemao/nemo/view/RoundStrokeImageView;

    .line 76
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0363

    const-string v2, "field \'ivFrame\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->ivFrame:Landroid/widget/ImageView;

    .line 77
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0994

    const-string v2, "field \'ivView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->ivView:Landroid/widget/ImageView;

    .line 78
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a05c1

    const-string v2, "field \'ivLike\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->ivLike:Landroid/widget/ImageView;

    .line 79
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a01a6

    const-string v2, "field \'ivCreate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->ivCreate:Landroid/widget/ImageView;

    .line 80
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0441

    const-string v2, "field \'ivLevelSign\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->ivLevelSign:Landroid/widget/ImageView;

    .line 81
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a007f

    const-string v2, "field \'name_tv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->name_tv:Landroid/widget/TextView;

    .line 82
    const-class v0, Lcom/codemao/nemo/view/ScrollNumAnimView;

    const v1, 0x7f0a0995

    const-string v2, "field \'views_tv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/ScrollNumAnimView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->views_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;

    .line 83
    const-class v0, Lcom/codemao/nemo/view/ScrollNumAnimView;

    const v1, 0x7f0a05c2

    const-string v2, "field \'praises_tv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/ScrollNumAnimView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->praises_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;

    .line 84
    const-class v0, Lcom/codemao/nemo/view/ScrollNumAnimView;

    const v1, 0x7f0a01a7

    const-string v2, "field \'creates_tv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/ScrollNumAnimView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->creates_tv:Lcom/codemao/nemo/view/ScrollNumAnimView;

    const v0, 0x7f0a0673

    const-string v1, "field \'root\'"

    .line 85
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->root:Landroid/view/View;

    .line 86
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a093d

    const-string v2, "field \'userLoginLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->userLoginLayout:Landroid/view/ViewGroup;

    .line 87
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a093c

    const-string v2, "field \'userInfoLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->userInfoLayout:Landroid/view/ViewGroup;

    .line 88
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0763

    const-string v2, "field \'tabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/MineFragment;->tabLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0a0173

    const-string v1, "method \'onClick\'"

    .line 89
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 91
    new-instance v2, Lcom/codemao/nemo/fragment/MineFragment_ViewBinding$4;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/fragment/MineFragment_ViewBinding$4;-><init>(Lcom/codemao/nemo/fragment/MineFragment_ViewBinding;Lcom/codemao/nemo/fragment/MineFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a007e

    .line 97
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 99
    new-instance v2, Lcom/codemao/nemo/fragment/MineFragment_ViewBinding$5;

    invoke-direct {v2, p0, p1}, Lcom/codemao/nemo/fragment/MineFragment_ViewBinding$5;-><init>(Lcom/codemao/nemo/fragment/MineFragment_ViewBinding;Lcom/codemao/nemo/fragment/MineFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0165

    .line 105
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 107
    new-instance v0, Lcom/codemao/nemo/fragment/MineFragment_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/fragment/MineFragment_ViewBinding$6;-><init>(Lcom/codemao/nemo/fragment/MineFragment_ViewBinding;Lcom/codemao/nemo/fragment/MineFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
