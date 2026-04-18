.class Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10$1;
.super Ljava/lang/Object;
.source "CreativeBcmHelper.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;


# direct methods
.method public static synthetic $r8$lambda$-k-EfHYolG_hOEAfJyWI2xlcA24(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10$1;->lambda$onError$0(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;)V
    .registers 2

    .line 1624
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10$1;->this$0:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onError$0(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V
    .registers 2

    .line 1633
    invoke-interface {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;->onError(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 4

    .line 1633
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10$1;->this$0:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10$1$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1100(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 1627
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10$1;->this$0:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;

    iget-boolean v0, p1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$needPublishProgress:Z

    iget v2, p1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$type:I

    iget-boolean v3, p1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$keepStatus:Z

    iget-object v4, p1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$filePath:Ljava/lang/String;

    iget-object v5, p1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$bcmName:Ljava/lang/String;

    iget-object v6, p1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v7, p1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$workVO:Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;

    iget-object v9, p1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;->val$callBack:Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;

    const/4 v1, 0x1

    move-object v8, p2

    invoke-static/range {v0 .. v9}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->access$1600(ZZIZLjava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    return-void
.end method
