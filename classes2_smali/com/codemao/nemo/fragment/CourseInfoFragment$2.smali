.class Lcom/codemao/nemo/fragment/CourseInfoFragment$2;
.super Ljava/lang/Object;
.source "CourseInfoFragment.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CourseInfoFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CourseInfoFragment;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$2;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 2

    .line 106
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseInfoFragment$2;->this$0:Lcom/codemao/nemo/fragment/CourseInfoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/activity/CourseDetailActivity;

    .line 107
    invoke-virtual {p1}, Lcom/codemao/nemo/activity/CourseDetailActivity;->changeFragment()V

    return-void
.end method
