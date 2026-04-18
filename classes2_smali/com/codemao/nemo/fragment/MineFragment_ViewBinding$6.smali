.class Lcom/codemao/nemo/fragment/MineFragment_ViewBinding$6;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MineFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/MineFragment_ViewBinding;-><init>(Lcom/codemao/nemo/fragment/MineFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$target:Lcom/codemao/nemo/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/MineFragment_ViewBinding;Lcom/codemao/nemo/fragment/MineFragment;)V
    .registers 3

    .line 107
    iput-object p2, p0, Lcom/codemao/nemo/fragment/MineFragment_ViewBinding$6;->val$target:Lcom/codemao/nemo/fragment/MineFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/codemao/nemo/fragment/MineFragment_ViewBinding$6;->val$target:Lcom/codemao/nemo/fragment/MineFragment;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/fragment/MineFragment;->onClick(Landroid/view/View;)V

    return-void
.end method
