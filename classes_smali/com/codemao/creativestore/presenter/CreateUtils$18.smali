.class Lcom/codemao/creativestore/presenter/CreateUtils$18;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils;->saveBcm(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

.field final synthetic val$saveBcmCallBack:Lcom/codemao/creativestore/listener/SaveBcmCallBack;

.field final synthetic val$saveCover:Z


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils;ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V
    .registers 4

    .line 2823
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$18;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iput-boolean p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$18;->val$saveCover:Z

    iput-object p3, p0, Lcom/codemao/creativestore/presenter/CreateUtils$18;->val$saveBcmCallBack:Lcom/codemao/creativestore/listener/SaveBcmCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2826
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$18;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->doRealDelete()V

    .line 2827
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$18;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->checkBcm(Z)V

    .line 2828
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$18;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-boolean v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$18;->val$saveCover:Z

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$18;->val$saveBcmCallBack:Lcom/codemao/creativestore/listener/SaveBcmCallBack;

    invoke-static {v0, v1, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1300(Lcom/codemao/creativestore/presenter/CreateUtils;ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V

    return-void
.end method
