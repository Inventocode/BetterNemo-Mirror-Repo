.class public Lcom/codemao/nemo/activity/CourseActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CourseActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/CourseActivity;Landroid/view/View;)V
    .registers 6

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a05ed

    const-string v2, "field \'mRecycler\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CourseActivity;->mRecycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    const-class v0, Lcom/codemao/nemo/view/LoadView;

    const v1, 0x7f0a050b

    const-string v2, "field \'mLoadView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/LoadView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CourseActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    .line 34
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a008d

    const-string v2, "field \'ivBg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CourseActivity;->ivBg:Landroid/widget/ImageView;

    const v0, 0x7f0a048c

    const-string v1, "method \'onClick\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 37
    new-instance v0, Lcom/codemao/nemo/activity/CourseActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/CourseActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/CourseActivity_ViewBinding;Lcom/codemao/nemo/activity/CourseActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
