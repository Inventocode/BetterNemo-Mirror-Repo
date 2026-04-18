.class public Lcom/codemao/nemo/fragment/CourseInfoFragment_ViewBinding;
.super Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment_ViewBinding;
.source "CourseInfoFragment_ViewBinding.java"


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/fragment/CourseInfoFragment;Landroid/view/View;)V
    .registers 6

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment_ViewBinding;-><init>(Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;Landroid/view/View;)V

    .line 21
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04cd

    const-string v2, "field \'llNonet\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/codemao/nemo/fragment/CourseInfoFragment;->llNonet:Landroid/widget/LinearLayout;

    return-void
.end method
