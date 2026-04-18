.class Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$2;
.super Ljava/lang/Object;
.source "FullScreenHelperCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$2;->this$0:Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$2;->this$0:Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;->access$000(Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$2;->this$0:Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41c80000  # 25.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void
.end method
