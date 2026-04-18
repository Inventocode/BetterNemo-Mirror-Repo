.class Lcom/codemao/nemo/fragment/DiscoveryFragmentV2_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DiscoveryFragmentV2_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/DiscoveryFragmentV2_ViewBinding;-><init>(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/DiscoveryFragmentV2_ViewBinding;Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;)V
    .registers 3

    .line 38
    iput-object p2, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2_ViewBinding$1;->val$target:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2_ViewBinding$1;->val$target:Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/fragment/DiscoveryFragmentV2;->goSearch(Landroid/view/View;)V

    return-void
.end method
