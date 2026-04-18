.class Lcom/codemao/nemo/adapter/LatestWorkDelegate$3;
.super Ljava/lang/Object;
.source "LatestWorkDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/LatestWorkDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/LatestWorkDelegate;

.field final synthetic val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/LatestWorkDelegate;Lcom/codemao/nemo/bean/LatestWorkInfo;)V
    .registers 3

    .line 69
    iput-object p1, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate$3;->this$0:Lcom/codemao/nemo/adapter/LatestWorkDelegate;

    iput-object p2, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate$3;->val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 73
    iget-object p1, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate$3;->this$0:Lcom/codemao/nemo/adapter/LatestWorkDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/LatestWorkDelegate;->access$000(Lcom/codemao/nemo/adapter/LatestWorkDelegate;)Lcom/codemao/nemo/adapter/LatestWorkDelegate$RecommendWorkCallBack;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 74
    iget-object p1, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate$3;->this$0:Lcom/codemao/nemo/adapter/LatestWorkDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/LatestWorkDelegate;->access$000(Lcom/codemao/nemo/adapter/LatestWorkDelegate;)Lcom/codemao/nemo/adapter/LatestWorkDelegate$RecommendWorkCallBack;

    move-result-object v0

    iget-object p1, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate$3;->val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate$3;->val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getUser_id()J

    move-result-wide v2

    iget-object p1, p0, Lcom/codemao/nemo/adapter/LatestWorkDelegate$3;->val$data:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getWork_id()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/codemao/nemo/adapter/LatestWorkDelegate$RecommendWorkCallBack;->toUserDetail(Ljava/lang/String;JJ)V

    :cond_23
    return-void
.end method
