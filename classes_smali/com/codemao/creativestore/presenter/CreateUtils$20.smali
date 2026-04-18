.class Lcom/codemao/creativestore/presenter/CreateUtils$20;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils;->saveBcmAuto(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

.field final synthetic val$saveCover:Z


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils;Z)V
    .registers 3

    .line 2962
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$20;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iput-boolean p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$20;->val$saveCover:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2965
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$20;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->doAutoSaveDelete()V

    .line 2966
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$20;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$20;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$20;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1900(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/UserImgDictVO;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->checkBcm(ZLcom/codemao/creativestore/bean/BcmVO;Lcom/codemao/creativestore/bean/UserImgDictVO;)V

    .line 2967
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils$20;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget-boolean v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$20;->val$saveCover:Z

    invoke-static {v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$2000(Lcom/codemao/creativestore/presenter/CreateUtils;Z)V

    return-void
.end method
