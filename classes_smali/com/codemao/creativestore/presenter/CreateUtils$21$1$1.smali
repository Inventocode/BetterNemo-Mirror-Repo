.class Lcom/codemao/creativestore/presenter/CreateUtils$21$1$1;
.super Ljava/lang/Object;
.source "CreateUtils.java"

# interfaces
.implements Lcom/codemao/creativestore/dsbridge/OnReturnValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->onValue(Ljava/lang/Object;)V
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
.field final synthetic this$2:Lcom/codemao/creativestore/presenter/CreateUtils$21$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils$21$1;)V
    .registers 2

    .line 3047
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$21$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValue(Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    .line 3051
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$21$1;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v2, v2, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".coverc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 3052
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$21$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bcmc"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$21$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->toStringWithIgnore()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$21$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".userimgc"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$21$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1900(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/UserImgDictVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 3054
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$21$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".metac"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$21$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$2100(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 3055
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$21$1;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object p1, p1, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {p1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1502(Lcom/codemao/creativestore/presenter/CreateUtils;Z)Z
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b0} :catch_b1

    goto :goto_c8

    :catch_b1
    move-exception p1

    .line 3057
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v1

    const-string/jumbo v2, "自动保存写入异常"

    invoke-virtual {v1, v2, p1}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3058
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils$21$1$1;->this$2:Lcom/codemao/creativestore/presenter/CreateUtils$21$1;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$21$1;->this$1:Lcom/codemao/creativestore/presenter/CreateUtils$21;

    iget-object v1, v1, Lcom/codemao/creativestore/presenter/CreateUtils$21;->this$0:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-static {v1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->access$1502(Lcom/codemao/creativestore/presenter/CreateUtils;Z)Z

    .line 3059
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c8
    return-void
.end method
