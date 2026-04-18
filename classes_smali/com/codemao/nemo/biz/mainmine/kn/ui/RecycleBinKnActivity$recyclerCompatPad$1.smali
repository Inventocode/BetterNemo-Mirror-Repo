.class public final Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$recyclerCompatPad$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "RecycleBinKnActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->recyclerCompatPad(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $adapter:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;",
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "Lcom/codemao/nemo/bean/KnWorkListRecycleBinItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$recyclerCompatPad$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$recyclerCompatPad$1;->$adapter:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    .line 254
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$recyclerCompatPad$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$isPad(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-ltz p1, :cond_16

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$recyclerCompatPad$1;->$adapter:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1f

    .line 257
    :cond_16
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$recyclerCompatPad$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$getMSpanNum$p(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    goto :goto_25

    .line 258
    :cond_1f
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$recyclerCompatPad$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->access$getMSpanNum$p(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)I

    move-result p1

    :goto_25
    return p1
.end method
