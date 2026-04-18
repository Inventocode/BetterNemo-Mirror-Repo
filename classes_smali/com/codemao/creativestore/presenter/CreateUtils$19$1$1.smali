.class Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Lcom/codemao/creativestore/dsbridge/OnReturnValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->onValue(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/codemao/creativestore/dsbridge/OnReturnValue<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/codemao/creativestore/presenter/CreateUtils$19$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils$19$1;)V
    .registers 2

    .line 2885
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$19$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValue(Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    .line 2889
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$19$1;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".cover"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2890
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$19$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bcm"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$19$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->toStringWithIgnore()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2891
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$19$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".userimg"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$19$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$19$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".meta"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$19$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2893
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$19$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bcmc"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 2894
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$19$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".userimgc"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 2895
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$19$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".metac"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 2896
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$19$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".coverc"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 2897
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$19$1;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1502(Lcom/codemao/creativestore/presenter/CreateUtils;Z)Z

    .line 2898
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$19$1;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1602(Lcom/codemao/creativestore/presenter/CreateUtils;Z)Z

    .line 2899
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$19$1;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->val$saveBcmCallBack:Lcom/codemao/creativestore/listener/SaveBcmCallBack;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1700(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/codemao/creativestore/listener/SaveBcmCallBack;->onSuccess(Ljava/lang/String;)V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_148} :catch_149

    goto :goto_16c

    :catch_149
    move-exception p1

    .line 2901
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$19$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->val$saveBcmCallBack:Lcom/codemao/creativestore/listener/SaveBcmCallBack;

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/ExceptionUtils;->exceptionToString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/codemao/creativestore/listener/SaveBcmCallBack;->onFail(Ljava/lang/String;)V

    .line 2902
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$19$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1502(Lcom/codemao/creativestore/presenter/CreateUtils;Z)Z

    .line 2903
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$19$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$19$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$19;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$19;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1602(Lcom/codemao/creativestore/presenter/CreateUtils;Z)Z

    .line 2904
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_16c
    return-void
.end method
