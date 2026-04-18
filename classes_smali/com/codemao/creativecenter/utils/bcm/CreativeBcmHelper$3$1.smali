.class Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3$1;
.super Ljava/lang/Object;
.source "CreativeBcmHelper.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;)V
    .registers 2

    .line 776
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3$1;->this$0:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 4

    .line 789
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3$1;->this$0:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;

    iget-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    invoke-static {v1, v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$100(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .registers 6

    .line 781
    :try_start_0
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3$1;->this$0:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;

    iget-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v2, v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$newData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v3, v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$finalFilePath:Ljava/lang/String;

    iget-object v4, v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$000(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_1e

    :catch_10
    move-exception v0

    .line 783
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3$1;->this$0:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;

    iget-object v2, v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v1, v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$100(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Ljava/lang/String;)V

    :goto_1e
    return-void
.end method
