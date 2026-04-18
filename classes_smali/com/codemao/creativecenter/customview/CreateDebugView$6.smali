.class Lcom/codemao/creativecenter/customview/CreateDebugView$6;
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

    .line 348
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$6;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 351
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$6;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1100(Lcom/codemao/creativecenter/customview/CreateDebugView;)I

    move-result p1

    .line 352
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$6;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1100(Lcom/codemao/creativecenter/customview/CreateDebugView;)I

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "运行状态"

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_3b

    .line 353
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v3, "运行-调试开"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 354
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$6;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0, v4}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1102(Lcom/codemao/creativecenter/customview/CreateDebugView;I)I

    .line 355
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$6;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1000(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->startDebug()V

    .line 356
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$6;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1200(Lcom/codemao/creativecenter/customview/CreateDebugView;I)V

    .line 357
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$6;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1000(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getVariableList()V

    goto :goto_68

    .line 359
    :cond_3b
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    const-string/jumbo v5, "运行-调试关"

    invoke-virtual {v0, v2, v5, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 360
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$6;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1000(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    const/16 v1, -0x3e7

    invoke-virtual {v0, v1, v4, v4, v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectScene(IIZZ)V

    .line 361
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$6;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1000(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->endDebug()V

    .line 362
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$6;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0, v3}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1102(Lcom/codemao/creativecenter/customview/CreateDebugView;I)I

    .line 363
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$6;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1200(Lcom/codemao/creativecenter/customview/CreateDebugView;I)V

    .line 364
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$6;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1300(Lcom/codemao/creativecenter/customview/CreateDebugView;)V

    .line 366
    :goto_68
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$6;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1400(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativecenter/view/LocalBcmView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/creativecenter/view/LocalBcmView;->showUploader()V

    return-void
.end method
