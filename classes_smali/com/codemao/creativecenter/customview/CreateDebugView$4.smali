.class Lcom/codemao/creativecenter/customview/CreateDebugView$4;
.super Ljava/lang/Object;
.source "CreateDebugView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CreateDebugView;->init(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CreateDebugView;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$4;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 326
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$4;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1100(Lcom/codemao/creativecenter/customview/CreateDebugView;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    return-void

    .line 329
    :cond_a
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$4;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1100(Lcom/codemao/creativecenter/customview/CreateDebugView;)I

    move-result p1

    .line 330
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "运行状态"

    const-string/jumbo v4, "调试-变量"

    invoke-virtual {v1, v3, v4, v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 332
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$4;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v1, v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1102(Lcom/codemao/creativecenter/customview/CreateDebugView;I)I

    .line 333
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$4;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1200(Lcom/codemao/creativecenter/customview/CreateDebugView;I)V

    return-void
.end method
