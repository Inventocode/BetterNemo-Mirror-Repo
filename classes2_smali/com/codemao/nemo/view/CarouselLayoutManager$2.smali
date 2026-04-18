.class Lcom/codemao/nemo/view/CarouselLayoutManager$2;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/CarouselLayoutManager;->detectOnItemSelectionChanged(FLandroidx/recyclerview/widget/RecyclerView$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

.field final synthetic val$centerItem:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/CarouselLayoutManager;I)V
    .registers 3

    .line 533
    iput-object p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$2;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    iput p2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$2;->val$centerItem:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 536
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$2;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    iget v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$2;->val$centerItem:I

    invoke-static {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->access$500(Lcom/codemao/nemo/view/CarouselLayoutManager;I)V

    return-void
.end method
