.class public Lcom/codemao/nemo/view/SortDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SortDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/view/SortDialog;Landroid/view/View;)V
    .registers 6

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04d4

    const-string v2, "field \'llDialog\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/view/SortDialog;->llDialog:Landroid/widget/LinearLayout;

    .line 28
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a049d

    const-string v2, "field \'listView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/codemao/nemo/view/SortDialog;->listView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
