.class Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$3;
.super Ljava/lang/Object;
.source "LatestOtherWorkDelegate.java"

# interfaces
.implements Lcom/codemao/nemo/listener/OnScrollCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;I)V
    .registers 3

    .line 114
    iput-object p1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$3;->this$0:Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;

    iput p2, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scroll(II)V
    .registers 6

    .line 117
    iget-object v0, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$3;->this$0:Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->access$000(Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$3;->val$position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/ScrollPositionInfo;

    if-nez v0, :cond_29

    .line 119
    iget-object v0, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$3;->this$0:Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;

    invoke-static {v0}, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->access$000(Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate$3;->val$position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/bean/ScrollPositionInfo;

    invoke-direct {v2, p1, p2}, Lcom/codemao/nemo/bean/ScrollPositionInfo;-><init>(II)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 121
    :cond_29
    invoke-virtual {v0, p1, p2}, Lcom/codemao/nemo/bean/ScrollPositionInfo;->setStartAndEnd(II)V

    :goto_2c
    return-void
.end method
