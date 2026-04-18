.class Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;
.super Ljava/lang/Object;
.source "CreativeBcmHelper.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->continueDownloadImage(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativestore/bean/UserImgDictVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bcmVO:Lcom/codemao/creativestore/bean/BcmVO;

.field final synthetic val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

.field final synthetic val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$downloadImg:Ljava/util/ArrayList;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$oldData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$soundVOS:Ljava/util/ArrayList;

.field final synthetic val$userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

.field final synthetic val$userMap:Ljava/util/Map;

.field final synthetic val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativestore/bean/UserImgDictVO;Lcom/codemao/creativestore/bean/BcmVO;Ljava/util/Map;Ljava/util/ArrayList;)V
    .registers 11

    .line 1006
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$soundVOS:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$oldData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p4, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$filePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    iput-object p6, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    iput-object p7, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    iput-object p8, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$bcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    iput-object p9, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$userMap:Ljava/util/Map;

    iput-object p10, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$downloadImg:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 4

    .line 1023
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    invoke-static {v0, v1, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$100(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .registers 12

    .line 1009
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1010
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;

    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$500()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1011
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$soundVOS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$400()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_58

    .line 1013
    :try_start_33
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$oldData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v3, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v4, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$filePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    iget-object v6, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    iget-object v7, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    iget-object v8, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$bcmVO:Lcom/codemao/creativestore/bean/BcmVO;

    iget-object v9, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$userMap:Ljava/util/Map;

    iget-object v10, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$downloadImg:Ljava/util/ArrayList;

    invoke-static/range {v2 .. v10}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$600(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativestore/bean/UserImgDictVO;Lcom/codemao/creativestore/bean/BcmVO;Ljava/util/Map;Ljava/util/ArrayList;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_48} :catch_49

    goto :goto_58

    :catch_49
    move-exception v0

    .line 1015
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1016
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$100(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Ljava/lang/String;)V

    :cond_58
    :goto_58
    return-void
.end method
