.class Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;
.super Ljava/lang/Object;
.source "CreateBlockAcotorPop.java"

# interfaces
.implements Lcom/codemao/creativecenter/callback/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->initData(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativestore/dsbridge/DWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

.field final synthetic val$createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;Lcom/codemao/creativestore/presenter/CreateUtils;)V
    .registers 3

    .line 164
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    iput-object p2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;->val$createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 6

    .line 168
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$100(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->setClose(Z)V

    .line 169
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$100(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 170
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    new-instance v1, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;-><init>(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;I)V

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
