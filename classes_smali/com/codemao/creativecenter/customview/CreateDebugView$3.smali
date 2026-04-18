.class Lcom/codemao/creativecenter/customview/CreateDebugView$3;
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

    .line 311
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$3;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 314
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$3;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1100(Lcom/codemao/creativecenter/customview/CreateDebugView;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    return-void

    .line 317
    :cond_a
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const/4 v1, 0x0

    const-string/jumbo v2, "运行状态"

    const-string/jumbo v3, "调试-屏幕"

    invoke-virtual {p1, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 318
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$3;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1100(Lcom/codemao/creativecenter/customview/CreateDebugView;)I

    move-result p1

    .line 319
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$3;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v1, v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1102(Lcom/codemao/creativecenter/customview/CreateDebugView;I)I

    .line 320
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$3;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1200(Lcom/codemao/creativecenter/customview/CreateDebugView;I)V

    return-void
.end method
