.class Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DiscoveryUserSearchFragmentV2_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2_ViewBinding;-><init>(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2_ViewBinding;Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;)V
    .registers 3

    .line 31
    iput-object p2, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2_ViewBinding$1;->val$target:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2_ViewBinding$1;->val$target:Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->hideInput(Landroid/view/View;)V

    return-void
.end method
