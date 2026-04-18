.class public final Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerCompatPad$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "NewWorkKnFromTemplateActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->recyclerCompatPad(Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $enterView:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $manager:Lcom/codemao/nemo/view/WrapGridLayoutmanager;

.field final synthetic this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/WrapGridLayoutmanager;Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/view/WrapGridLayoutmanager;",
            "Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerCompatPad$2;->$manager:Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    iput-object p2, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerCompatPad$2;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    iput-object p3, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerCompatPad$2;->$enterView:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 205
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 6

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 208
    iget-object p1, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerCompatPad$2;->$manager:Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 209
    iget-object p2, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerCompatPad$2;->$manager:Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p2

    .line 210
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerCompatPad$2;->$manager:Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 211
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerCompatPad$2;->$manager:Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    if-eqz p1, :cond_2e

    if-eqz p2, :cond_2e

    .line 215
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerCompatPad$2;->this$0:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;

    iget-object v1, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerCompatPad$2;->$enterView:Lkotlin/jvm/internal/Ref$ObjectRef;

    if-gez p3, :cond_2a

    const/4 p3, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p3, 0x0

    :goto_2b
    invoke-static {v0, v1, p3, p1, p2}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->access$recyclerCompatPad$changeTitle(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;Lkotlin/jvm/internal/Ref$ObjectRef;ZII)V

    :cond_2e
    return-void
.end method
