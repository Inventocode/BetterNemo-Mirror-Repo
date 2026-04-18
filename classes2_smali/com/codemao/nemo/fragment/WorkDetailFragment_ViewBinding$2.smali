.class Lcom/codemao/nemo/fragment/WorkDetailFragment_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "WorkDetailFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkDetailFragment_ViewBinding;-><init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/fragment/WorkDetailFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/WorkDetailFragment_ViewBinding;Lcom/codemao/nemo/fragment/WorkDetailFragment;)V
    .registers 3

    .line 60
    iput-object p2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment_ViewBinding$2;->val$target:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment_ViewBinding$2;->val$target:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->follow(Landroid/view/View;)V

    return-void
.end method
