.class Lcom/codemao/creativecenter/customview/CreateDebugView$2;
.super Ljava/lang/Object;
.source "CreateDebugView.java"

# interfaces
.implements Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$OnItemClickListener;


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

.field final synthetic val$isLandscapeMode:Z


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CreateDebugView;Z)V
    .registers 3

    .line 277
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$2;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    iput-boolean p2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$2;->val$isLandscapeMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/lang/String;I)V
    .registers 6

    .line 280
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$2;->val$isLandscapeMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 281
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$2;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$200(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$2;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$300(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 284
    :cond_17
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$2;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$400(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$2;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$500(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$2;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$600(Lcom/codemao/creativecenter/customview/CreateDebugView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-nez p2, :cond_49

    .line 288
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$2;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$700(Lcom/codemao/creativecenter/customview/CreateDebugView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_43

    return-void

    .line 289
    :cond_43
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$2;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$702(Lcom/codemao/creativecenter/customview/CreateDebugView;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5b

    .line 292
    :cond_49
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$2;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$800(Lcom/codemao/creativecenter/customview/CreateDebugView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_56

    return-void

    .line 293
    :cond_56
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$2;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$802(Lcom/codemao/creativecenter/customview/CreateDebugView;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    :goto_5b
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$2;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$900(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;

    move-result-object p1

    if-nez p1, :cond_6d

    .line 296
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$2;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1000(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getVariableList()V

    goto :goto_85

    .line 298
    :cond_6d
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$2;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    new-instance p2, Lcom/codemao/creativecenter/event/GetRuntimeVaribleMsgEvent;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$1000(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorkUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreateDebugView$2;->this$0:Lcom/codemao/creativecenter/customview/CreateDebugView;

    invoke-static {v1}, Lcom/codemao/creativecenter/customview/CreateDebugView;->access$900(Lcom/codemao/creativecenter/customview/CreateDebugView;)Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/codemao/creativecenter/event/GetRuntimeVaribleMsgEvent;-><init>(Ljava/lang/String;Lcom/codemao/creativestore/bean/GetRuntimeVaribleMsg;)V

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/customview/CreateDebugView;->getVariable(Lcom/codemao/creativecenter/event/GetRuntimeVaribleMsgEvent;)V

    :goto_85
    return-void
.end method
